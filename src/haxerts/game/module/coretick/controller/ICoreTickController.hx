package haxerts.game.module.coretick.controller;

import haxerts.game.module.coretick.vo.CoreTickConfigVO;

/**
 * @author Krisztian Somoracz
 */
interface ICoreTickController 
{
	function setCoreTickConfig( value:Array<CoreTickConfigVO> ):Void;
}