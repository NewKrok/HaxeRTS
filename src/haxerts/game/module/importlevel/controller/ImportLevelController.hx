package haxerts.game.module.importlevel.controller;

import haxerts.game.module.importlevel.vo.LevelDataVO;
import haxerts.game.module.importlevel.model.IImportLevelModel;
import haxerts.game.module.importlevel.vo.ImportParserConfigVO;
import hex.di.IInjectorContainer;
import hex.metadata.AnnotationProvider;

/**
 * ...
 * @author Krisztian Somoracz
 */
class ImportLevelController implements IImportLevelController implements IInjectorContainer
{
	@Inject
	public var model:IImportLevelModel;
	
	public function new() 
	{
		AnnotationProvider.getAnnotationProvider().registerMetaData( "LevelData", getLevelData );
	}
	
	public function saveImportParserConfigList( value:Array<ImportParserConfigVO> ):Void
	{
		model.importParserConfigList = value;
	}
	
	public function load( rawLevelData:Dynamic ):Void
	{
		var levelData:LevelDataVO = new LevelDataVO();
		levelData.createEmptyDatas();

		for( i in 0...model.importParserConfigList.length )
		{
			var rule:ImportParserConfigVO = model.importParserConfigList[ i ];
			
			var entry:Dynamic = Reflect.getProperty( rawLevelData, rule.entryId );
			
			if ( entry != null )
			{
				Reflect.setProperty( levelData, rule.entryId, rule.parser.parse( entry ) );
			}
		}
		
		model.levelData = levelData;
	}
	
	function getLevelData( dataName:String ):Dynamic
	{
		return Reflect.getProperty( model.levelData, dataName );
	}
}