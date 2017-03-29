package haxerts.game.module.unitmanager;

import haxerts.game.module.unit.vo.UnitConfigVO;
import haxerts.game.module.unitmanager.controller.IUnitManagerController;
import haxerts.game.module.unitmanager.controller.UnitManagerController;
import haxerts.game.module.unitmanager.model.IUnitManagerModel;
import haxerts.game.module.unitmanager.model.UnitManagerModel;
import haxerts.game.module.unitmanager.view.IUnitManagerModuleView;
import hex.module.Module;
import hex.module.dependency.IRuntimeDependencies;
import hex.module.dependency.RuntimeDependencies;

/**
 * ...
 * @author Krisztian Somoracz
 */ 
class UnitManagerModule extends Module implements IUnitManagerModule
{
    var controller:IUnitManagerController;

    public function new( view:IUnitManagerModuleView )
    {
        super();

		_injector.mapToValue( IUnitManagerModuleView, view );
		
		_map( IUnitManagerModel, UnitManagerModel, "", true );
		
		_map( IUnitManagerController, UnitManagerController, "", true );
        controller = cast _get( IUnitManagerController );
		
		_get( IUnitManagerModel ).output.connect( view );
		_injector.injectInto( view );
    }
	
	public function createUnit( unitConfigVO:UnitConfigVO ):Void 
	{
		controller.createUnit( unitConfigVO );
	}

    override function _getRuntimeDependencies():IRuntimeDependencies
    {
        return new RuntimeDependencies();
    }
}