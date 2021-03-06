<?php

/**
 *  \details &copy; 2011  Open Ximdex Evolution SL [http://www.ximdex.org]
 *
 *  Ximdex a Semantic Content Management System (CMS)
 *
 *  This program is free software: you can redistribute it and/or modify
 *  it under the terms of the GNU Affero General Public License as published
 *  by the Free Software Foundation, either version 3 of the License, or
 *  (at your option) any later version.
 *
 *  This program is distributed in the hope that it will be useful,
 *  but WITHOUT ANY WARRANTY; without even the implied warranty of
 *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *  GNU Affero General Public License for more details.
 *
 *  See the Affero GNU General Public License for more details.
 *  You should have received a copy of the Affero GNU General Public License
 *  version 3 along with Ximdex (see LICENSE file).
 *
 *  If not, visit http://gnu.org/licenses/agpl-3.0.html.
 *
 * @author Ximdex DevTeam <dev@ximdex.com>
 * @version $Revision$
 */

namespace Ximdex\Models;

use Ximdex\Logger;
use Ximdex\Models\ORM\PipelinesOrm;
use Ximdex\Runtime\App;

/**
 *
 * @brief Orm extension for the pipeline table
 *
 * Extends the functionality for the Pipeline table, restricts the functionality and provides methods to load
 * some specific node status.
 *
 */
class Pipeline extends PipelinesOrm
{
    /**
     * @var $processes \Ximdex\Pipeline\Iterators\IteratorPipeProcesses
     */
    var $processes = NULL;
    var $idNodeType = NULL;
    var $isWorkflowMaster = false;

    /**
     * Constructor for the Pipeline class
     *
     * @param $id
     */
    public function __construct($id = NULL)
    {
        parent::__construct($id);

        if (!($this->get('id') > 0)) {
            return;
        }

        $this->processes = new \Ximdex\Pipeline\Iterators\IteratorPipeProcesses('IdPipeline = %s', array($this->get('id')));
        $this->processes->reloadConstructors();

        $pipeNodeType = new PipeNodeTypes();
        $result = $pipeNodeType->find('IdNodeType', 'IdPipeline = %s', array($this->get('id')), MONO);
        if (count($result) === 1) {
            
            $this->idNodeType = $result[0];
        }

        if (App::getValue('IdDefaultWorkflow') == $this->get('IdNode')) {
            
            $this->isWorkflowMaster = true;
        }
    }

    /**
     * Returns the pipeline who manages the given nodetype
     *
     * @param $idNodeType
     * @return integer
     */
    public function loadByNodeType($idNodeType)
    {
        $this->__construct();

        $nodeType = new NodeType($idNodeType);
        if (!($nodeType->get('IdNodeType') > 0)) {
            
            Logger::error('El nodetype especificado para el pipeline no existe: ' . $idNodeType);
            $this->messages->add(_("An error has occurred while the document's transformation and the process cannot continue"), MSG_TYPE_ERROR);
            return false;
        }

        $result = $this->find('id', 'IdNodeType = %s', array($idNodeType));
        if (count($result) == 1) {
            
            $this->__construct($result[0]);
            return $this->get('id');
        }
        $error = sprintf(_("Ha ocurrido un error inesperado al intentar transformar el nodeType %s"), $idNodeType);
        Logger::error($error);
        $this->messages->add($error, MSG_TYPE_ERROR);
        return false;
    }

    /**
     * Return a pipeline by idnode (used primary in the pipelines who acts as workflow)
     *
     * @param $idNode
     * @return integer
     */
    public function loadByIdNode($idNode)
    {
        $this->__construct();

        $result = $this->find('id', 'IdNode = %s', array($idNode), MONO);
        if (count($result) > 1) {
            
            Logger::warning("Se ha intentado cargar el pipeline con el idnode $idNode y se han encontrado multiples resultados, abortando operación");
            $this->messages->add(_("Se ha intentado cargar el pipeline con el idnode $idNode y se han encontrado multiples resultados, abortando operación"), MSG_TYPE_WARNING);
            return NULL;
        }
        if (count($result) === 0) {
            
            Logger::warning("Se ha intentado cargar el pipeline con el idnode $idNode y no se han encontrado resultados, abortando operación");
            $this->messages->add(_("Se ha intentado cargar el pipeline con el idnode $idNode y no se han encontrado resultados, abortando operación"), MSG_TYPE_WARNING);
            return NULL;
        }
        $this->__construct($result[0]);
        return $this->get('id');
    }

    // Experimental
    public function initialize()
    {
        if (!($this->get('id')) > 0) {
            
            return false;
        }

        $pipeProcess = new PipeProcess();
        $pipeProcess->set('IdTransitionTo', 0);
        $pipeProcess->set('IdPipeline', $this->get('id'));
        $pipeProcess->set('Name', $this->get('Pipeline'));
        $idPipeProcess = $pipeProcess->add();

        $pipeStatus = new PipeStatus();
        $pipeStatus->set('Name', App::getValue('DefaultInitialStatus'));
        $pipeStatus->set('Description', App::getValue('DefaultInitialStatus'));
        $idInitialStatus = $pipeStatus->add();

        $pipeStatus = new PipeStatus();
        $pipeStatus->set('Name', App::getValue('DefaultFinalStatus'));
        $pipeStatus->set('Description', App::getValue('DefaultFinalStatus'));
        $idFinalStatus = $pipeStatus->add();

        $pipeTransition = new PipeTransition();
        $pipeTransition->set('IdStatusFrom', $idInitialStatus);
        $pipeTransition->set('IdStatusTo', $idFinalStatus);
        $pipeTransition->set('IdPipeProcess', $idPipeProcess);
        $pipeTransition->set('Cacheable', 0);
        $pipeTransition->set('Name', sprintf('%s_to_%s',
            App::getValue('DefaultInitialStatus'),
            App::getValue('DefaultFinalStatus')));
        $pipeTransition->set('Callback', '-');
        $idPipeTransition = $pipeTransition->add();

        $pipeProcess->set('IdTransitionTo', $idPipeTransition);
        return $pipeProcess->update();
    }

    /**
     * @see inc/helper/GenericData#set($attribute, $value)
     */
    public function set($key, $value)
    {
        if ($key == 'IdNodeType') {
            
            $this->idNodeType = $value;
            return;
        }
        return parent::set($key, $value);
    }

    /**
     * @see inc/helper/GenericData#get($attribute)
     */
    public function get($key)
    {
        if ($key == 'IdNodeType') {
            
            return $this->idNodeType;
        }
        return parent::get($key);
    }

    /**
     * @see inc/helper/GenericData#add()
     */
    public function add()
    {
        $idPipeline = parent::add();
        if ($idPipeline > 0) {
            
            $pipeNodeType = new PipeNodeTypes();
            $pipeNodeType->set('IdPipeline', $idPipeline);
            $pipeNodeType->set('IdNodeType', $this->get('IdNodeType'));
            $pipeNodeType->add();
        }
        return $idPipeline;
    }

    /**
     * @see inc/helper/GenericData#update()
     */
    public function update()
    {
        $pipelineChanged = false;
        $pipeNodeType = new PipeNodeTypes();
        if ($this->idNodeType > 0) {
            
            $result = $pipeNodeType->find('id, IdNodeType', 'IdPipeline = %s', array($this->get('id')));
            if (count($result) === 1) {
                
                $oldNodeType = $result[0]['IdNodeType'];
                $pipeNodeType = new PipeNodeTypes($result[0]['id']);
                $pipeNodeType->set('IdNodeType', $this->idNodeType);
                $pipelineChanged = $pipeNodeType->update();
            } else {
                
                $pipeNodeType = new PipeNodeTypes();
                $pipeNodeType->set('IdPipeline', $this->get('id'));
                $pipeNodeType->set('IdNodeType', $this->get('IdNodeType'));
                $pipelineChanged = $pipeNodeType->add();
            }
        } else {
            
            $result = $pipeNodeType->find('id, IdNodeType', 'IdPipeline = %s', array($this->get('id')));
            if (count($result) === 1) {
                
                $oldNodeType = $result[0]['IdNodeType'];
                $pipeNodeType = new PipeNodeTypes($result[0]['id']);
                $pipelineChanged = $pipeNodeType->delete();
            }
        }
        if ($pipelineChanged) {
            
            $oldNodeType = $result[0]['IdNodeType'];
            $node = new Node();
            if (isset($oldNodeType)) {
                
                $strVals[] = $oldNodeType;
            }
            if ($this->get('IdNodeType') > 0) {
                
                $strVals[] = $this->get('IdNodeType');
            }
            if (!empty($strVals)) {
                
                $nodes = $node->find('IdNode', 'IdNodeType IN (%s)', array(implode(', ', $strVals)), MONO, false);
                if (!empty($nodes)) {
                    
                    foreach ($nodes as $idNode) {
                        
                        $node = new Node($idNode);
                        $idStatus = $node->getFirstStatus();
                        $node->set('IdState', $idStatus);
                        $node->update();
                    }
                }
            }
        }

        parent::update();
    }

    /**
     * @see inc/helper/GenericData#delete()
     */
    public function delete($recursive = false)
    {
        if ($recursive) {
            
            echo "\nborrando en cascada";
            $this->processes->reset();
            while ($process = $this->processes->next()) {
                
                while ($transition = $process->transitions->next()) {
                    
                    $transition->delete();
                }
                $process->delete();
            }
        }
        $pipeNodeType = new PipeNodeTypes();
        $result = $pipeNodeType->find('id', 'IdPipeline = %s', array($this->get('id')));
        if (count($result) === 1) {
            
            $pipeNodeType = new PipeNodeTypes($result[0]);
            $pipeNodeType->delete();
        }

        parent::delete();
    }

    /**
     * Changes the associated pipeline from a group of nodes to another pipeline
     *
     * @param $oldPipeline
     */
    public function activatePipelineForNodes($oldPipeline)
    {
        $pipeline = new Pipeline();
        $pipeline->loadByIdNode($oldPipeline);
        $process = $pipeline->processes->first();
        $allStatus = $process->getAllStatus();
        $allStatusString = implode(', ', $allStatus);

        $node = new Node();
        $nodes = $node->find('IdNode', 'IdState IN (%s)', array($allStatusString), MONO);
        $nodeString = implode(', ', $nodes);

        $initialStatus = $this->getFirstStatus();
        $db = new \Ximdex\Runtime\Db();
        $query = sprintf('UPDATE Nodes SET IdState = %s WHERE IdNode IN (%s)', $initialStatus, $nodeString);
        $db->Execute($query);

    }
}