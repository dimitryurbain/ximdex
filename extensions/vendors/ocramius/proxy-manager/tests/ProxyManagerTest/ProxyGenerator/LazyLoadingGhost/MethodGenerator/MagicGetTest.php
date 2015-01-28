<?php
/*
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
 * "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
 * LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
 * A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
 * OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
 * SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
 * LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
 * DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
 * THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
 * (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
 * OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 *
 * This software consists of voluntary contributions made by many individuals
 * and is licensed under the MIT license.
 */

namespace ProxyManagerTest\ProxyGenerator\LazyLoadingGhost\MethodGenerator;

use ReflectionClass;
use PHPUnit_Framework_TestCase;
use ProxyManager\ProxyGenerator\LazyLoadingGhost\MethodGenerator\MagicGet;

/**
 * Tests for {@see \ProxyManager\ProxyGenerator\LazyLoadingGhost\MethodGenerator\MagicGet}
 *
 * @author Marco Pivetta <ocramius@gmail.com>
 * @license MIT
 */
class MagicGetTest extends PHPUnit_Framework_TestCase
{
    /**
     * @var \Zend\Code\Generator\PropertyGenerator|\PHPUnit_Framework_MockObject_MockObject
     */
    protected $initializer;

    /**
     * @var \Zend\Code\Generator\MethodGenerator|\PHPUnit_Framework_MockObject_MockObject
     */
    protected $initMethod;

    /**
     * @var \ProxyManager\ProxyGenerator\PropertyGenerator\PublicPropertiesMap|\PHPUnit_Framework_MockObject_MockObject
     */
    protected $publicProperties;

    /**
     * {@inheritDoc}
     */
    protected function setUp()
    {
        $this->initializer      = $this->getMock('Zend\\Code\\Generator\\PropertyGenerator');
        $this->initMethod       = $this->getMock('Zend\\Code\\Generator\\MethodGenerator');
        $this->publicProperties = $this
            ->getMockBuilder('ProxyManager\\ProxyGenerator\\PropertyGenerator\\PublicPropertiesMap')
            ->disableOriginalConstructor()
            ->getMock();

        $this->initializer->expects($this->any())->method('getName')->will($this->returnValue('foo'));
        $this->initMethod->expects($this->any())->method('getName')->will($this->returnValue('baz'));
        $this->publicProperties->expects($this->any())->method('isEmpty')->will($this->returnValue(false));
        $this->publicProperties->expects($this->any())->method('getName')->will($this->returnValue('bar'));
    }

    /**
     * @covers \ProxyManager\ProxyGenerator\LazyLoadingGhost\MethodGenerator\MagicGet::__construct
     */
    public function testBodyStructure()
    {
        $reflection = new ReflectionClass('ProxyManagerTestAsset\\EmptyClass');
        $magicGet   = new MagicGet($reflection, $this->initializer, $this->initMethod, $this->publicProperties);

        $this->assertSame('__get', $magicGet->getName());
        $this->assertCount(1, $magicGet->getParameters());
        $this->assertStringMatchesFormat(
            "\$this->foo && \$this->baz('__get', array('name' => \$name));\n\n"
            . "if (isset(self::\$bar[\$name])) {\n    return \$this->\$name;\n}\n\n"
            . "%a",
            $magicGet->getBody()
        );
    }

    /**
     * @covers \ProxyManager\ProxyGenerator\LazyLoadingGhost\MethodGenerator\MagicGet::__construct
     */
    public function testBodyStructureWithPublicProperties()
    {
        $reflection = new ReflectionClass(
            'ProxyManagerTestAsset\\ProxyGenerator\\LazyLoading\\MethodGenerator\\ClassWithTwoPublicProperties'
        );

        $magicGet = new MagicGet($reflection, $this->initializer, $this->initMethod, $this->publicProperties);

        $this->assertSame('__get', $magicGet->getName());
        $this->assertCount(1, $magicGet->getParameters());
        $this->assertStringMatchesFormat(
            "\$this->foo && \$this->baz('__get', array('name' => \$name));\n\n"
            . "if (isset(self::\$bar[\$name])) {\n    return \$this->\$name;\n}\n\n"
            . "%a",
            $magicGet->getBody()
        );
    }

    /**
     * @covers \ProxyManager\ProxyGenerator\LazyLoadingGhost\MethodGenerator\MagicGet::__construct
     */
    public function testBodyStructureWithOverriddenMagicGet()
    {
        $reflection = new ReflectionClass('ProxyManagerTestAsset\\ClassWithMagicMethods');
        $magicGet   = new MagicGet($reflection, $this->initializer, $this->initMethod, $this->publicProperties);

        $this->assertSame('__get', $magicGet->getName());
        $this->assertCount(1, $magicGet->getParameters());
        $this->assertSame(
            "\$this->foo && \$this->baz('__get', array('name' => \$name));\n\n"
            . "if (isset(self::\$bar[\$name])) {\n    return \$this->\$name;\n}\n\n"
            . "return parent::__get(\$name);",
            $magicGet->getBody()
        );
    }
}
