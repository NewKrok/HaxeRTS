package haxerts.applicationcontext.controller.game.init;

import haxerts.game.module.background.rectanglebackground.IRectangleBackgroundModule;
import haxerts.game.module.background.rectanglebackground.vo.RectangleBackgroundVO;
import hex.control.command.BasicCommand;
import hex.core.IAnnotationParsable;
import openfl.Assets;
import util.jsonbitmapatlas.JSONBitmapAtlas;

/**
 * ...
 * @author Krisztian Somoracz
 */
class BuildBackgroundCommand extends BasicCommand implements IAnnotationParsable
{
	@LevelData( "rectangleBackgroundData" )
	public var rectangleBackgroundData:Array<RectangleBackgroundVO>;
	
	@Inject( "rectangleBackgroundModule" )
	public var rectangleBackgroundModule:IRectangleBackgroundModule;
	
	override public function execute():Void
	{
		rectangleBackgroundModule.setTerrainInformations( 
			JSONBitmapAtlas.getBitmapDataVOs( Assets.getBitmapData( "img_terrain_textures" ), Assets.getText( "json_terrain_textures" ) )
		);
		
		rectangleBackgroundModule.setRectangleBackgroundVO( rectangleBackgroundData );
	}
}