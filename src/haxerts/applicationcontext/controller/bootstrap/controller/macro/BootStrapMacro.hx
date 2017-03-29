package haxerts.applicationcontext.controller.bootstrap.controller.macro;

import haxerts.applicationcontext.controller.game.init.macro.InitGameMacro;
import hex.control.macro.Macro;

/**
 * ...
 * @author Krisztian Somoracz
 */
class BootStrapMacro extends Macro
{
	override private function _prepare():Void
	{
		add( InitGameMacro );
	}
}