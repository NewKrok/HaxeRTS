package haxerts.game.module.coretick.model;

import haxerts.game.module.coretick.vo.CoreTickConfigVO;
import hex.event.ITriggerOwner;
import openfl.display.Sprite;

/**
 * @author Krisztian Somoracz
 */
interface ICoreTickModel
{
	var coreTickConfig( default, default ):Array<CoreTickConfigVO>;
	var timerHelper( default, null ):Sprite;
}