package haxerts.game.module.background.rectanglebackground.vo;

import openfl.geom.Point;

/**
 * ...
 * @author Krisztian Somoracz
 */
class RectangleBackgroundVO 
{
	public var terrainTextureId:String;
	public var polygon:Array<Point>;
		
	public function new( terrainTextureId:String = '', polygon:Array<Point> = null )
	{
		this.terrainTextureId = terrainTextureId;
		this.polygon = polygon;
	}	
}