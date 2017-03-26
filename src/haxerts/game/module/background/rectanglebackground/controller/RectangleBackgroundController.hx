package haxerts.game.module.background.rectanglebackground.controller;

import haxerts.game.module.background.rectanglebackground.model.IRectangleBackgroundModel;
import haxerts.game.module.background.rectanglebackground.vo.RectangleBackgroundVO;
import hex.di.IInjectorContainer;
import util.jsonbitmapatlas.vo.BitmapDataVO;

class RectangleBackgroundController implements IRectangleBackgroundController implements IInjectorContainer
{
	@Inject
	public var model:IRectangleBackgroundModel;
	
	public function setTerrainInformations( value:Array<BitmapDataVO> ):Void
	{
		model.terrainInformations = value;
	}
	
	public function setRectangleBackgroundVO( value:Array<RectangleBackgroundVO> ):Void
	{
		model.rectangleBackgroundVO = value;
	}
	
	public function new( )
	{
	}
}