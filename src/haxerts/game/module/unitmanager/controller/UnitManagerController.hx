package haxerts.game.module.unitmanager.controller;

import haxerts.game.module.unit.IUnitModule;
import haxerts.game.module.unit.UnitModule;
import haxerts.game.module.unit.view.IUnitModuleView;
import haxerts.game.module.unit.vo.UnitConfigVO;
import haxerts.game.module.unitmanager.model.IUnitManagerModel;
import haxerts.game.module.unitmanager.view.IUnitManagerModuleView;
import hex.di.IInjectorContainer;
import js.haxerts.game.module.unit.UnitModuleView;

/**
 * ...
 * @author Krisztian Somoracz
 */
class UnitManagerController implements IUnitManagerController implements IInjectorContainer
{
	@Inject
	public var model:IUnitManagerModel;
	
	@Inject
	public var view:IUnitManagerModuleView;
	
	public function createUnit( unitConfigVO:UnitConfigVO ):Void
	{
		var unitView:IUnitModuleView = new UnitModuleView( view );
		var unitModule:IUnitModule = new UnitModule( unitView );
		
		model.addUnitModule( unitModule );
	}
}