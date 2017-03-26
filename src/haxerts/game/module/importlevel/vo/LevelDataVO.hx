package haxerts.game.module.importlevel.vo;

import haxerts.game.module.background.rectanglebackground.vo.RectangleBackgroundVO;

/**
 * ...
 * @author Krisztian Somoracz
 */
class LevelDataVO 
{
	//public var polygonBackgroundData:Array<PolygonBackgroundVO>;
	public var rectangleBackgroundData:Array<RectangleBackgroundVO>;
	//public var enemyPathData:Array<EnemyPathDataVO>;
	//public var staticElementData:Array<LibraryElementDataVO>;
	//public var dynamicElementData:Array<LibraryElementDataVO>;
	//public var libraryElements:Array;

	public function new() 
	{
	}
	
	public function createEmptyDatas():Void
	{
		//polygonBackgroundData = [];
		rectangleBackgroundData = [];
		//enemyPathData = [];
		//staticElementData = [];
		//dynamicElementData = [];
		//libraryElements = [];
	}
}