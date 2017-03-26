package haxerts.game.module.background.rectanglebackground;

import haxerts.game.module.background.rectanglebackground.model.IRectangleBackgroundModelRO;
import haxerts.game.module.background.rectanglebackground.view.IRectangleBackgroundModuleView;
import haxerts.game.module.background.rectanglebackground.controller.RectangleBackgroundController;
import haxerts.game.module.background.rectanglebackground.controller.IRectangleBackgroundController;
import haxerts.game.module.background.rectanglebackground.model.RectangleBackgroundModel;
import haxerts.game.module.background.rectanglebackground.model.IRectangleBackgroundModel;
import haxerts.game.module.background.rectanglebackground.vo.RectangleBackgroundVO;
import hex.module.dependency.RuntimeDependencies;
import hex.module.dependency.IRuntimeDependencies;
import hex.module.Module;
import util.jsonbitmapatlas.vo.BitmapDataVO;

class RectangleBackgroundModule extends Module implements IRectangleBackgroundModule
{
    var controller:IRectangleBackgroundController;

    public function new( view:IRectangleBackgroundModuleView )
    {
        super();

		_map( IRectangleBackgroundModel, RectangleBackgroundModel, "", true );
		_injector.mapToValue( IRectangleBackgroundModelRO, _get( IRectangleBackgroundModel ) );
		
		_map( IRectangleBackgroundController, RectangleBackgroundController, "", true );
        controller = cast _get( IRectangleBackgroundController );
		
		_get( IRectangleBackgroundModel ).output.connect( view );
		_injector.injectInto( view );
    }
	
	public function setTerrainInformations( value:Array<BitmapDataVO> ):Void
	{
		controller.setTerrainInformations( value );
	}
	
	public function setRectangleBackgroundVO( value:Array<RectangleBackgroundVO> ):Void
	{
		controller.setRectangleBackgroundVO( value );
	}

    override function _getRuntimeDependencies():IRuntimeDependencies
    {
        return new RuntimeDependencies();
    }
}