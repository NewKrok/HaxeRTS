package haxerts.game.module.coretick.controller;

import haxerts.game.module.coretick.model.ICoreTickModel;
import haxerts.game.module.coretick.vo.CoreTickConfigVO;
import hex.di.IInjectorContainer;
import openfl.events.Event;

/**
 * ...
 * @author Krisztian Somoracz
 */
class CoreTickController implements ICoreTickController implements IInjectorContainer
{
	@Inject
	public var model:ICoreTickModel;
	
	public function new() 
	{
	}
	
	public function setCoreTickConfig( value:Array<CoreTickConfigVO> ):Void
	{
		model.coreTickConfig = value;
		model.timerHelper.addEventListener( Event.ENTER_FRAME, update );
	}
	
	function update( e:Event ):Void
	{
		var now:Float = Date.now().getTime();
		
		for ( i in 0...model.coreTickConfig.length )
		{
			var coreTickConfigVO:CoreTickConfigVO = model.coreTickConfig[i];
			
			if ( coreTickConfigVO.timeFrequency == 0 )
			{
				coreTickConfigVO.moduleReference.update();
				coreTickConfigVO.lastUpdateTime = now;
			}
			else
			{
				var passedTimeAfterLastModuleUpdate:Float = now - coreTickConfigVO.lastUpdateTime;
				var updateCounter:Int = Math.floor( passedTimeAfterLastModuleUpdate / coreTickConfigVO.timeFrequency );
				
				for( j in 0...updateCounter )
				{
					coreTickConfigVO.moduleReference.update();
				}
				if( updateCounter > 0 )
				{
					coreTickConfigVO.lastUpdateTime += updateCounter * coreTickConfigVO.timeFrequency;
				}
			}
		}
	}
}