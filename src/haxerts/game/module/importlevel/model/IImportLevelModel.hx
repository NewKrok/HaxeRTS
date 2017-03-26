package haxerts.game.module.importlevel.model;

import haxerts.game.module.importlevel.vo.ImportParserConfigVO;
import haxerts.game.module.importlevel.vo.LevelDataVO;

/**
 * @author Krisztian Somoracz
 */
interface IImportLevelModel
{
	var importParserConfigList( default, default ):Array<ImportParserConfigVO>;
	var levelData( default, default ):LevelDataVO;
}