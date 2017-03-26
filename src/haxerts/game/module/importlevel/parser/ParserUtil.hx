package haxerts.game.module.importlevel.parser;

import openfl.geom.Point;

/**
 * ...
 * @author Krisztian Somoracz
 */
class ParserUtil 
{
	public static function objectArrayToPointArray( array:Array<Dynamic> ):Array<Point>
	{
		var simplePointArray:Array<Point> = [];

		for( i in 0...array.length )
		{
			simplePointArray.push( new Point( array[ i ].x, array[ i ].y ) );
		}

		return simplePointArray;
	}
}