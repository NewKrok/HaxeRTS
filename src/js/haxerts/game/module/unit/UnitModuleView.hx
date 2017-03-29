package js.haxerts.game.module.unit;

import haxerts.game.module.unit.view.IUnitModuleView;
import haxerts.game.module.unitmanager.view.IUnitManagerModuleView;
import hex.di.IInjectorContainer;
import openfl.display.Sprite;

/**
 * ...
 * @author Krisztian Somoracz
 */ 
class UnitModuleView extends Sprite implements IUnitModuleView implements IInjectorContainer
{
	public function new( gameContainer:IUnitManagerModuleView ) 
	{
		gameContainer.addChild( this );
		
		super();
	}
}