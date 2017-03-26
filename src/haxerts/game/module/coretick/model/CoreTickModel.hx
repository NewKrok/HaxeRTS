package haxerts.game.module.coretick.model;

import haxerts.game.module.coretick.controller.ICoreTickController;
import haxerts.game.module.coretick.vo.CoreTickConfigVO;
import openfl.display.Sprite;

/**
 * ...
 * @author Krisztian Somoracz
 */
class CoreTickModel implements ICoreTickModel
{	
	public var coreTickConfig( default, default ):Array<CoreTickConfigVO>;
	
	public var timerHelper( default, null ):Sprite;
	
	public function new() 
	{
		timerHelper = new Sprite();
	}
}