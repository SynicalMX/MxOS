package cc;

import lua.Table;

@:native("_G")
extern class ComputerCraft {
	public static function sleep(time:Float):Void; // Time is seconds ceil'd to the closest 0.05 or 1/20th
	public static function write(text:String):Void;
	public static function print(text:String):Void;
	public static function printError(message:String):Void;
	public static function read(?replaceChar:String, ?history:Table<Int, String>, ?completeFn:String->Table<Int, String>, ?defaultValue:String):String;
	public static var _HOST:String;
	public static var _CC_DEFAULT_SETTINGS:String;
}
