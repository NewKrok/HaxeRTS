package haxerts.game.module.importlevel;

import haxerts.game.module.importlevel.controller.IImportLevelController;
import haxerts.game.module.importlevel.controller.ImportLevelController;
import haxerts.game.module.importlevel.model.IImportLevelModel;
import haxerts.game.module.importlevel.model.ImportLevelModel;
import haxerts.game.module.importlevel.vo.ImportParserConfigVO;
import hex.module.Module;
import hex.module.dependency.IRuntimeDependencies;
import hex.module.dependency.RuntimeDependencies;

/**
 * ...
 * @author Krisztian Somoracz
 */
class ImportLevelModule extends Module implements IImportLevelModule
{
	var controller:IImportLevelController;
	
	public function new( importParserConfigList:Array<ImportParserConfigVO> )
	{
		super();
		
		_map( IImportLevelModel, ImportLevelModel, "", true );

		_map( IImportLevelController, ImportLevelController, "", true );
		controller = cast _get( IImportLevelController );
		
		controller.saveImportParserConfigList( importParserConfigList );
	}

	public function load( rawLevelData:Dynamic ):Void
	{
		controller.load( rawLevelData );
	}

	override function _getRuntimeDependencies():IRuntimeDependencies
	{
		return new RuntimeDependencies();
	}
}