package;

import hex.compiler.parser.xml.XmlCompiler;
import hex.core.IApplicationAssembler;
import hex.core.IApplicationContext;
import hex.ioc.assembler.ApplicationContext;
import hex.runtime.ApplicationAssembler;
import openfl.display.Sprite;
import openfl.Lib;
import openfl.events.Event;

/**
 * ...
 * @author Krisztian Somoracz
 */
class Main extends Sprite 
{
	public function new()
    {
        super();

        addEventListener( Event.ADDED_TO_STAGE, onInit );

        openfl.Lib.current.addChild( this );
    }

    function onInit( e:Event ):Void
    {
		var assembler:IApplicationAssembler = new ApplicationAssembler();
		var applicationContext:IApplicationContext = assembler.getApplicationContext( "haxeRTS", ApplicationContext );
		
        XmlCompiler.compileWithAssembler( assembler, "configuration/context.xml" );
    }
}