package haxerts.game.module.unitmanager.controller;

import haxerts.game.module.unit.vo.UnitConfigVO;

/**
 * @author Krisztian Somoracz
 */
interface IUnitManagerController 
{
	function createUnit( unitConfigVO:UnitConfigVO ):Void;
}