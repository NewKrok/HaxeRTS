package haxerts.game.module.coretick;

import haxerts.game.module.coretick.controller.CoreTickController;
import haxerts.game.module.coretick.controller.ICoreTickController;
import haxerts.game.module.coretick.model.CoreTickModel;
import haxerts.game.module.coretick.model.ICoreTickModel;
import haxerts.game.module.coretick.vo.CoreTickConfigVO;
import hex.module.Module;
import hex.module.dependency.IRuntimeDependencies;
import hex.module.dependency.RuntimeDependencies;

/**
 * ...
 * @author Krisztian Somoracz
 */
class CoreTickModule extends Module implements ICoreTickModule
{
	public function new( coreTickConfig:Array<CoreTickConfigVO> ) 
	{
		super();
		
		_map( ICoreTickModel, CoreTickModel, "", true );
		
		_map( ICoreTickController, CoreTickController, "", true );
        var controller:ICoreTickController = cast _get( ICoreTickController );
		
		controller.setCoreTickConfig( coreTickConfig );
	}
	
	override function _getRuntimeDependencies():IRuntimeDependencies
	{
		return new RuntimeDependencies();
	}
}