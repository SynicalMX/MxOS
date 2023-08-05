package cc;

import lua.Table;

@:multiReturn
extern class HTTPCheckReturn {
	public var allowed:Bool;
	public var error:Null<String>;
}

@:multiReturn
extern class SocketMessageReturn {
	public var message:String;
	public var binary:Bool;
}

@:luaDotMethod
extern class HTTPResponse {
	public function getResponseCode():Int;
	public function getResponseHeaders():Table<String, String>;
	public function readLine(?withTrailing:Bool):Null<String>;
	public function readAll():Null<String>;
	public function read(?count:Int):Null<String>;
	public function seek(?whence:String, ?offset:Int):Void;
	public function close():Void;
}

@:luaDotMethod
extern class Websocket {
	public function recieve(?timeout:Float):Null<SocketMessageReturn>;
	public function send(message:String, ?binary:Float):Void;
	public function close():Void;
}

class Request {
	var url:String;
	var body:Null<String>;
	var headers:Null<Table<String, String>>;
	var binary:Null<Bool>;
	var method:Null<String>;
	var redirect:Null<Bool>;
}

@:native("http")
extern class HTTP {
	public static function request(url:String, ?body:String, ?headers:Table<String, String>, ?binary:Bool):Void;
	public static function get(url:String, ?headers:Table<String, String>, ?binary:Bool):Null<HTTPResponse>;
	public static function post(url:String, postData:String, ?header:Table<String, String>, ?binary:Bool):Null<HTTPResponse>;
	public static function checkURLAsync(url:String):Bool;
	public static function checkURL(url:String):Bool;
	public static function websocket(url:String, ?headers:Table<String, String>):Websocket;
	public static function websocketAsync(url:String, ?headers:Table<String, String>):Void;
}
