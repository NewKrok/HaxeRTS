package haxerts.game.module.importlevel.parser;

import haxerts.game.module.importlevel.parser.ParserUtil;
import haxerts.game.module.background.rectanglebackground.vo.RectangleBackgroundVO;

/**
 * ...
 * @author Krisztian Somoracz
 */
class RectangleBackgroundVOArrayParser implements IParser
{
	public function new() 
	{
	}
	
	public function parse( rawData:Dynamic ):Dynamic
	{
		var result:Array<RectangleBackgroundVO> = [];
		var convertedSource:Array<Dynamic> = cast rawData;

		for( i in 0...convertedSource.length )
		{
			var rectangleBackgroundVO:RectangleBackgroundVO = new RectangleBackgroundVO();
			rectangleBackgroundVO.polygon = ParserUtil.objectArrayToPointArray( cast convertedSource[ i ].polygon );
			rectangleBackgroundVO.terrainTextureId = convertedSource[ i ].terrainTextureId;

			result.push( rectangleBackgroundVO );
		}

		return result;
	}
}