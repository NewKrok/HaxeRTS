package haxerts.game.module.background.rectanglebackground.model;

import haxerts.game.module.background.rectanglebackground.vo.RectangleBackgroundVO;
import hex.model.IModelRO;
import util.jsonbitmapatlas.vo.BitmapDataVO;

/**
 * ...
 * @author Krisztian Somoracz
 */
interface IRectangleBackgroundModelRO
{
	var terrainInformations( default, null ):Array<BitmapDataVO>;
	var rectangleBackgroundVO( default, null ):Array<RectangleBackgroundVO>;
}