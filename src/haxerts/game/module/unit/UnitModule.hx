package haxerts.game.module.unit;

import haxerts.game.module.unit.controller.IUnitController;
import haxerts.game.module.unit.controller.UnitController;
import haxerts.game.module.unit.model.IUnitModel;
import haxerts.game.module.unit.model.UnitModel;
import haxerts.game.module.unit.view.IUnitModuleView;
import hex.module.Module;
import hex.module.dependency.IRuntimeDependencies;
import hex.module.dependency.RuntimeDependencies;

/**
 * ...
 * @author Krisztian Somoracz
 */
class UnitModule extends Module implements IUnitModule
{
	var controller:IUnitController;

    public function new( view:IUnitModuleView )
    {
        super();

		_map( IUnitModel, UnitModel, "", true );
		
		_map( IUnitController, UnitController, "", true );
        controller = cast _get( IUnitController );
		
		//_get( IUnitModel ).output.connect( view );
		_injector.injectInto( view );
    }
	
    override function _getRuntimeDependencies():IRuntimeDependencies
    {
        return new RuntimeDependencies();
    }
}