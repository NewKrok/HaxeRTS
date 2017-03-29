package haxerts.applicationcontext.controller.game.init.macro;

import haxerts.game.module.importlevel.vo.LevelDataVO;
import hex.control.macro.Macro;
import hex.control.payload.ExecutionPayload;

/**
 * ...
 * @author Krisztian Somoracz
 */ 
class InitGameMacro extends Macro
{
	override private function _prepare():Void
	{
		add( ImportLevelCommand );
		add( BuildBackgroundCommand );
		add( CreateInitialUnitsCommand );
	}
}