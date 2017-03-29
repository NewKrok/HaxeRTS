package js.haxerts.game.module.unitmanager;

import haxerts.game.module.unitmanager.view.IUnitManagerModuleView;
import hex.di.IInjectorContainer;
import openfl.display.Sprite;

/**
 * ...
 * @author Krisztian Somoracz
 */
class UnitManagerModuleView extends Sprite implements IUnitManagerModuleView implements IInjectorContainer
{
	public function new( gameContainer:Sprite ) 
	{
		gameContainer.addChild( this );
		
		super();
	}
	
	public function onModelUpdated():Void
	{
	}
}