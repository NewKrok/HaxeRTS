package haxerts.game.module.background.rectanglebackground.controller;

import haxerts.game.module.background.rectanglebackground.vo.RectangleBackgroundVO;
import util.jsonbitmapatlas.vo.BitmapDataVO;

interface IRectangleBackgroundController
{
	function setTerrainInformations( value:Array<BitmapDataVO> ):Void;
	
	function setRectangleBackgroundVO( value:Array<RectangleBackgroundVO> ):Void;
}