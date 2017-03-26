package haxerts.game.module.importlevel.model;

import haxerts.game.module.importlevel.vo.ImportParserConfigVO;
import haxerts.game.module.importlevel.vo.LevelDataVO;

/**
 * ...
 * @author Krisztian Somoracz
 */ 
class ImportLevelModel implements IImportLevelModel
{
	public var importParserConfigList( default, default ):Array<ImportParserConfigVO>;
	public var levelData( default, default ):LevelDataVO;
	
    public function new()
    {
    }
}