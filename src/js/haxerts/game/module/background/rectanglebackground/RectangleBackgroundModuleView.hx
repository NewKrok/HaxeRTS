package js.haxerts.game.module.background.rectanglebackground;

import haxerts.game.module.background.rectanglebackground.controller.IRectangleBackgroundController;
import haxerts.game.module.background.rectanglebackground.model.IRectangleBackgroundModelRO;
import haxerts.game.module.background.rectanglebackground.view.IRectangleBackgroundModuleView;
import haxerts.game.module.background.rectanglebackground.vo.RectangleBackgroundVO;
import hex.di.IInjectorContainer;
import openfl.display.BitmapData;
import openfl.display.Sprite;

class RectangleBackgroundModuleView extends Sprite implements IRectangleBackgroundModuleView implements IInjectorContainer
{
	@Inject
	public var controller:IRectangleBackgroundController;

	@Inject
	public var model:IRectangleBackgroundModelRO;

	public function new( gameContainer:Sprite ) 
	{
		gameContainer.addChild( this );
		
		super();
	}

	public function onModelUpdated():Void
	{
		for( i in 0...model.rectangleBackgroundVO.length )
		{
			drawRectangleBackground( model.rectangleBackgroundVO[ i ] );
		}
	}

	function drawRectangleBackground( rectangleBackgroundVO:RectangleBackgroundVO ):Void
	{
		var shapeWidth:Float = Math.abs( rectangleBackgroundVO.polygon[ 1 ].x - rectangleBackgroundVO.polygon[ 0 ].x );
		var shapeHeight:Float = Math.abs( rectangleBackgroundVO.polygon[ 3 ].y - rectangleBackgroundVO.polygon[ 0 ].y );
		var shape:Sprite = new Sprite();
		
		shape.graphics.beginBitmapFill( getTerrainTexture( rectangleBackgroundVO.terrainTextureId ) );
		shape.graphics.drawRect( rectangleBackgroundVO.polygon[ 0 ].x, rectangleBackgroundVO.polygon[ 0 ].y, shapeWidth, shapeHeight );
		
		addChild( shape );
	}
	
	function getTerrainTexture( terrainTextureId:String ):BitmapData
	{
		for( i in 0...model.terrainInformations.length )
		{
			if ( model.terrainInformations[i].id == terrainTextureId )
			{
				return model.terrainInformations[i].bitmapData;
			}
		}
		
		return new BitmapData( 100, 100 );
	}
}