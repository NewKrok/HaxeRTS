package haxerts.game.module.importlevel.controller;

import haxerts.game.module.importlevel.vo.ImportParserConfigVO;

/**
 * @author Krisztian Somoracz
 */
interface IImportLevelController 
{
	function saveImportParserConfigList( value:Array<ImportParserConfigVO> ):Void;
	
	function load( rawLevelData:Dynamic ):Void;
}