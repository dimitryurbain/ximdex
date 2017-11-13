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
 *  @author Ximdex DevTeam <dev@ximdex.com>
 *  @version $Revision$
 */


/**
* The string "user:passwd" will be replaced by the authentication information introduced from webDAV client
* Session init data should not been specified here in any Ximdex instance.
*
* Resources should be mounted in correct order.
*/

return array(
	'defaultDatasource' => 'Composer',
	'datasources' => array(
		'Composer' => array(),
		'XVFS' => array(
			'MOUNTPOINTS' => array(
				array(
					'mountpoint' => '/',
					'uri' => 'xnodes://user:passwd@localhost/'
				)/*,
				array(
					'mountpoint' => '/web',
					'uri' => 'file:///var/www/'
				),
				array(
					'mountpoint' => '/tmp',
					'uri' => 'file:///tmp/'
				)*/
			)
		)
	)
);