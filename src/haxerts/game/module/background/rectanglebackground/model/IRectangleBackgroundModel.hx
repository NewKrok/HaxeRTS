package haxerts.game.module.background.rectanglebackground.model;

import haxerts.game.module.background.rectanglebackground.vo.RectangleBackgroundVO;
import hex.event.ITrigger;
import hex.event.ITriggerOwner;
import util.jsonbitmapatlas.vo.BitmapDataVO;

interface IRectangleBackgroundModel extends ITriggerOwner extends IRectangleBackgroundModelRO
{
	var output( default, never ):ITrigger<IRectangleBackgroundConnection>;
	
	var terrainInformations( default, default ):Array<BitmapDataVO>;
	var rectangleBackgroundVO( default, set ):Array<RectangleBackgroundVO>;
}