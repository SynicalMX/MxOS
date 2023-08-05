package cc;

import lua.HaxeIterator;

@:enum
abstract OpenFileMode(String) {
	var Read = "r";
	var Write = "w";
	var Append = "a";
	var BinaryRead = "rb";
	var BinaryWrite = "wb";
	var BinaryAppend = "ab";
}

@:enum
abstract FileType(String) {
	var File = "file";
	var ClosedFile = "closed file";
}

extern class LLFileHandle {
	public static function close():Null<Bool>;
	public static function flush():Void;
}

@:native("io")
extern class IO {
	public static var stdin:LLFileHandle;
	public static var stdout:LLFileHandle;
	public static var stderr:LLFileHandle;
	public static function close(?file:LLFileHandle):Void;
	public static function flush():Void;
	public static function input(?file:String):LLFileHandle;
	public static function lines(?file:String):HaxeIterator<String>;
	public static function open(filename:String, ?mode:OpenFileMode):LLFileHandle;
	public static function output(?file:String):LLFileHandle;
	public static function read():Null<String>;
	public static function type(obj:Any):Null<FileType>;
	public static function write(text:String):Void;
}
