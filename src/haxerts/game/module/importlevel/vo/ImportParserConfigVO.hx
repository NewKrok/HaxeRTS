package haxerts.game.module.importlevel.vo;

import haxerts.game.module.importlevel.parser.IParser;

/**
 * ...
 * @author Krisztian Somoracz
 */
class ImportParserConfigVO 
{
	public var entryId:String;
	public var parser:IParser;

	public function new( entryId:String, parser:IParser )
	{
		this.entryId = entryId;
		this.parser = parser;
	}
}