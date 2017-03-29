package haxerts.game.module.unitmanager;

import haxerts.game.module.unit.vo.UnitConfigVO;

/**
 * ...
 * @author Krisztian Somoracz
 */
interface IUnitManagerModule
{
	function createUnit( unitConfigVO:UnitConfigVO ):Void;
}