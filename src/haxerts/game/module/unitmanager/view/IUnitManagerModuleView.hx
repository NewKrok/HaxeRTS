package haxerts.game.module.unitmanager.view;

import haxerts.game.module.unitmanager.IUnitManagerConnection;
import openfl.display.DisplayObject;

/**
 * ...
 * @author Krisztian Somoracz
 */
interface IUnitManagerModuleView extends IUnitManagerConnection
{
	function addChild( child:DisplayObject ):DisplayObject;
}