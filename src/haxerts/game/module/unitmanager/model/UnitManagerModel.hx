package haxerts.game.module.unitmanager.model;

import haxerts.game.module.unit.IUnitModule;
import haxerts.game.module.unitmanager.IUnitManagerConnection;
import hex.event.ITrigger;

/**
 * ...
 * @author Krisztian Somoracz
 */
class UnitManagerModel implements IUnitManagerModel 
{
	public var output( default, never ):ITrigger<IUnitManagerConnection>;
	
	var unitModules:Array<IUnitModule> = [];
	
	public function addUnitModule( value:IUnitModule ):Void
	{
		unitModules.push( value );
	}
}