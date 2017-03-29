package haxerts.applicationcontext.controller.game.init;

import haxerts.constant.unit.CUnitName;
import haxerts.game.module.unit.vo.UnitConfigVO;
import haxerts.game.module.unitmanager.IUnitManagerModule;
import hex.collection.HashMap;
import hex.control.command.BasicCommand;

/**
 * ...
 * @author Krisztian Somoracz
 */
class CreateInitialUnitsCommand extends BasicCommand
{
	@Inject( "unitManagerModule" )
	public var unitManagerModule:IUnitManagerModule;
	
	@Inject( "unitConfigList" )
	public var unitConfigList:HashMap<String, UnitConfigVO>;
	
	override public function execute():Void
	{
		unitManagerModule.createUnit( unitConfigList.get( CUnitName.WARRIOR ) );
	}
}