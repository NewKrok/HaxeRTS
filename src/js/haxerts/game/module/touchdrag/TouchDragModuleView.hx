package js.haxerts.game.module.touchdrag;

import haxerts.game.module.touchdrag.view.ITouchDragModuleView;
import openfl.display.Sprite;
import openfl.events.MouseEvent;
import openfl.geom.Point;

/**
 * ...
 * @author Krisztian Somoracz
 */
class TouchDragModuleView extends Sprite implements ITouchDragModuleView
{
	static inline var MINIMUM_DRAG_VALUE:Float = 10;
	
	var gameContainer:Sprite;
	
	var touchStartPoint:Point = new Point();
	var lastTouchPoint:Point = new Point();
	var touchCount:Int = 0;
	var isTouched:Bool = false;
	var isTouchDragged:Bool = false;
	var swipeForce:Float = 0;
	var swipeDirection:Float = 0;
	
	public function new( gameContainer:Sprite ) 
	{
		this.gameContainer = gameContainer;
		gameContainer.addChild( this );
		
		super();
		
		enable();
	}
	
	function enable():Void
	{
		gameContainer.addEventListener( MouseEvent.MOUSE_DOWN, onTouchBegin );
		gameContainer.addEventListener( MouseEvent.MOUSE_UP, onTouchEnd );
		gameContainer.addEventListener( MouseEvent.MOUSE_MOVE, onTouchMove );
	}
	
	function disable():Void
	{
		gameContainer.removeEventListener( MouseEvent.MOUSE_DOWN, onTouchBegin );
		gameContainer.removeEventListener( MouseEvent.MOUSE_UP, onTouchEnd );
		gameContainer.removeEventListener( MouseEvent.MOUSE_MOVE, onTouchMove );
	}
	
	function onTouchBegin( e:MouseEvent ):Void
	{
		touchCount++;
		
		if ( touchCount == 1 )
		{
			isTouched = true;
			touchStartPoint.setTo( e.stageX, e.stageY );
			lastTouchPoint = touchStartPoint.clone();
		}
	}
	
	function onTouchEnd( e:MouseEvent ):Void
	{
		touchCount--;
		
		isTouched = false;
	}
	
	function onTouchMove( e:MouseEvent ):Void
	{
		if ( isTouched )
		{
			var offset:Float = Math.sqrt( Math.pow( Math.abs( touchStartPoint.x - e.stageX ), 2 ) + Math.pow( Math.abs( touchStartPoint.y - e.stageY ), 2 ) );
			
			if( offset > MINIMUM_DRAG_VALUE )
			{
				isTouchDragged = true;
			}

			if( isTouchDragged )
			{
				gameContainer.x = getNormalizedWorldXPosition( gameContainer.x - ( lastTouchPoint.x - e.stageX ) );
				gameContainer.y = getNormalizedWorldYPosition( gameContainer.y - ( lastTouchPoint.y - e.stageY ) );
			}
			
			swipeForce = Math.sqrt( Math.pow( Math.abs( lastTouchPoint.x - e.stageX ), 2 ) + Math.pow( Math.abs( lastTouchPoint.y - e.stageY ), 2 ) ) * 10;
			swipeDirection = Math.atan2( e.stageY - lastTouchPoint.y, e.stageX - lastTouchPoint.x );
			lastTouchPoint.setTo( e.stageX, e.stageY );
		}
	}
	
	public function update():Void
	{
		if ( isTouched == false )
		{
			if ( swipeForce > 1 )
			{
				gameContainer.x = getNormalizedWorldXPosition( gameContainer.x + swipeForce / 2 * Math.cos( swipeDirection ) );
				gameContainer.y = getNormalizedWorldYPosition( gameContainer.y + swipeForce / 2 * Math.sin( swipeDirection ) );

				swipeForce *= .96;
			}
			else if ( swipeForce != 0 )
			{
				swipeForce = 0;
				gameContainer.x = getNormalizedWorldXPosition( gameContainer.x );
				gameContainer.y = getNormalizedWorldYPosition( gameContainer.y );
			}
		}
	}
	
	function getNormalizedWorldXPosition( x:Float ):Float
	{
		return Math.max( -gameContainer.width + gameContainer.stage.stageWidth, Math.min( 0, x ) );
	}

	function getNormalizedWorldYPosition( y:Float ):Float
	{
		return Math.max( -gameContainer.height + gameContainer.stage.stageHeight, Math.min( 0, y ) );
	}
}