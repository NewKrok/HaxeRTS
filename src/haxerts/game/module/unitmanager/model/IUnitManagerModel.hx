package haxerts.game.module.unitmanager.model;

import haxerts.game.module.unit.IUnitModule;
import haxerts.game.module.unitmanager.IUnitManagerConnection;
import hex.event.ITrigger;
import hex.event.ITriggerOwner;

/**
 * @author Krisztian Somoracz
 */
interface IUnitManagerModel extends ITriggerOwner
{
	var output( default, never ):ITrigger<IUnitManagerConnection>;
	
	function addUnitModule( value:IUnitModule ):Void;
}