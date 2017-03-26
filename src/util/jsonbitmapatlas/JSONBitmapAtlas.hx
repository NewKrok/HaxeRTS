package util.jsonbitmapatlas;

import haxe.Json;
import openfl.display.BitmapData;
import openfl.geom.Point;
import openfl.geom.Rectangle;
import util.jsonbitmapatlas.vo.BitmapDataVO;

/**
 * ...
 * @author Krisztian Somoracz
 */
class JSONBitmapAtlas 
{
	public static function getBitmapDataVOs( sourceBitmapData:BitmapData, atlasDescription:String ):Array<BitmapDataVO>
	{
		var terrainTextureList:Array<BitmapDataVO> = [];

		var defaultBitmapData:BitmapData = sourceBitmapData.clone();
		var description:Dynamic = Json.parse( atlasDescription );

		for( key in Reflect.fields( description.frames ) )
		{
			var terrainTextureVO:BitmapDataVO = new BitmapDataVO();
			terrainTextureVO.id = key;
			
			var frameData:Dynamic = Reflect.getProperty( description.frames, key );

			var bitmapData:BitmapData = new BitmapData(
					frameData.spriteSourceSize.w,
					frameData.spriteSourceSize.h
			);

			var textureRectangleData:Dynamic = frameData.frame;

			bitmapData.copyPixels(
					defaultBitmapData,
					new Rectangle(
							textureRectangleData.x,
							textureRectangleData.y,
							textureRectangleData.w,
							textureRectangleData.h
					),
					new Point()
			);

			terrainTextureVO.bitmapData = bitmapData;

			terrainTextureList.push( terrainTextureVO );
		}

		defaultBitmapData.dispose();
		defaultBitmapData = null;

		return terrainTextureList;
	}
}