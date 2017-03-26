package haxerts.game.module.coretick.vo;

import haxerts.game.module.IUpdatableModule;

/**
 * ...
 * @author Krisztian Somoracz
 */
class CoreTickConfigVO 
{
	public var moduleReference:IUpdatableModule;
	public var timeFrequency:Float;
	public var lastUpdateTime:Float = Date.now().getTime();
	
	public function new( moduleReference:IUpdatableModule, timeFrequency:Float ) 
	{
		this.moduleReference = moduleReference;
		this.timeFrequency = timeFrequency;
	}
}