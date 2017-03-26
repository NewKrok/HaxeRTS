package haxerts.game.module.background.rectanglebackground.model;

import haxerts.game.module.background.rectanglebackground.vo.RectangleBackgroundVO;
import hex.event.ITrigger;
import hex.model.BasicModel;
import util.jsonbitmapatlas.vo.BitmapDataVO;

class RectangleBackgroundModel implements IRectangleBackgroundModel
{
	public var output( default, never ):ITrigger<IRectangleBackgroundConnection>;
	
	public var terrainInformations( default, default ):Array<BitmapDataVO>;
	public var rectangleBackgroundVO( default, set ):Array<RectangleBackgroundVO>;
	
    public function new()
    {
    }
	
	public function set_rectangleBackgroundVO( value:Array<RectangleBackgroundVO> ):Array<RectangleBackgroundVO>
	{
		rectangleBackgroundVO = value;
		
		output.onModelUpdated();
		
		return value;
	}
}