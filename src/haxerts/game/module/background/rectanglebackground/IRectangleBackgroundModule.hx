package haxerts.game.module.background.rectanglebackground;

import haxerts.game.module.background.rectanglebackground.vo.RectangleBackgroundVO;
import util.jsonbitmapatlas.vo.BitmapDataVO;

interface IRectangleBackgroundModule
{
	function setTerrainInformations( value:Array<BitmapDataVO> ):Void;
	function setRectangleBackgroundVO( value:Array<RectangleBackgroundVO> ):Void;
}