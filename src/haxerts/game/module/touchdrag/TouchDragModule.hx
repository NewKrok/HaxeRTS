package haxerts.game.module.touchdrag;

import haxerts.game.module.touchdrag.view.ITouchDragModuleView;
import hex.module.Module;
import hex.module.dependency.IRuntimeDependencies;
import hex.module.dependency.RuntimeDependencies;

/**
 * ...
 * @author Krisztian Somoracz
 */
class TouchDragModule extends Module implements ITouchDragModule
{
	var view:ITouchDragModuleView;
	
	public function new( view:ITouchDragModuleView ) 
	{
		super();
		
		this.view = view;
	}
	
	override function _getRuntimeDependencies():IRuntimeDependencies
	{
		return new RuntimeDependencies();
	}
	
	public function update():Void
	{
		view.update();
	}
}