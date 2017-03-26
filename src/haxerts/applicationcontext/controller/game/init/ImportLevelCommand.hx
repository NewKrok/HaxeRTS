package haxerts.applicationcontext.controller.game.init;

import haxe.Json;
import haxerts.game.module.importlevel.IImportLevelModule;
import hex.control.command.BasicCommand;
import openfl.Assets;

/**
 * ...
 * @author Krisztian Somoracz
 */
class ImportLevelCommand extends BasicCommand
{
	@Inject( "importLevelModule" )
	public var importLevelModule:IImportLevelModule;
	
	override public function execute():Void
	{
		importLevelModule.load( Json.parse( Assets.getText( "json_level_datas" ) ).level_0 );
	}
}