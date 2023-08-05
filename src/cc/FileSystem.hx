package cc;

import lua.Table;

@:enum
abstract OpenFileMode(String) {
	var Read = "r";
	var Write = "w";
	var Append = "a";
	var BinaryRead = "rb";
	var BinaryWrite = "wb";
	var BinaryAppend = "ab";
}

@:luaDotMethod
extern class FileHandle {
	public function readLine(?withTrailing:Bool):Null<String>;
	public function readAll():Null<String>;
	public function read(?count:Int):Null<String>;
	public function write(data:String):Void;
	public function writeLine(data:String):Void;
	public function flush():Void;
	public function seek(?whence:String, ?offset:Int):Void;
	public function close():Void;
}

extern class FileAttributes {
	var size:Int;
	var isDir:Bool;
	var isReadOnly:Bool;
	var created:Int;
	var modified:Int;
}

@:lua
@:native("fs")
extern class FileSystem {
	public static function isDriveRoot(path:String):Bool;
	public static function complete(path:String, location:String, ?include_files:Bool, ?include_dirs:Bool):Bool;
	public static function list(path:String):Table<Int, String>;
	public static function combine(base:String, part:String):String;
	public static function getName(path:String):String;
	public static function getDir(path:String):String;
	public static function getSize(path:String):Int;
	public static function exists(path:String):Bool;
	public static function isDir(path:String):Bool;
	public static function isReadOnly(path:String):Bool;
	public static function makeDir(path:String):Void;
	public static function move(from:String, to:String):Void;
	public static function copy(from:String, to:String):Void;
	public static function delete(path:String):Void;
	public static function open(path:String, mode:OpenFileMode):FileHandle;
	// public static function open(path:String, mode:"r"):ReadFileHandle;
	// public static function open(path:String, mode:"w"):WriteFileHandle;
	// public static function open(path:String, mode:"a"):WriteFileHandle;
	// public static function open(path:String, mode:"rb"):BinaryReadFileHandle;
	// public static function open(path:String, mode:"wb"):BinaryWriteFileHandle;
	// public static function open(path:String, mode:"ab"):BinaryWriteFileHandle;
	public static function getDrive(path:String):String;
	public static function getFreeSpace(path:String):Int;
	public static function find(pattern:String):Table<Int, String>;
	public static function getCapacity(path:String):Null<Int>;
	public static function attributes(path:String):FileAttributes;
}
