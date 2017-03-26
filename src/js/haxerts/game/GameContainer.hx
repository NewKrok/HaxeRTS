package js.haxerts.game;

import openfl.Lib;
import openfl.display.Sprite;

/**
 * ...
 * @author Krisztian Somoracz
 */
class GameContainer extends Sprite
{
	public function new() 
	{
		super();
		
		Lib.current.stage.addChild( this );
	}
}