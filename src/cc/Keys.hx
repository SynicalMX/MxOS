package cc;

@:native("keys")
extern class Keys {
	public static function getName(code:Int):String;
	public static inline function getCode(name:String):Int {
		// i know this is bad please don't judge me
		return (cast Keys)[cast name];
	}

	public static var a:Int;
	public static var c:Int;
	public static var b:Int;
	public static var e:Int;
	public static var pageUp:Int;
	public static var g:Int;
	public static var f:Int;
	public static var i:Int;
	public static var h:Int;
	public static var k:Int;
	public static var j:Int;
	public static var space:Int;
	public static var l:Int;
	public static var o:Int;
	public static var n:Int;
	public static var q:Int;
	public static var f1:Int;
	public static var s:Int;
	// public static var return: Int;
	public static var f5:Int;
	public static var seven:Int;
	public static var w:Int;
	public static var numPadEnter:Int;
	public static var y:Int;
	public static var x:Int;
	public static var numPad6:Int;
	public static var z:Int;
	public static var backslash:Int;
	public static var rightBracket:Int;
	public static var f9:Int;
	public static var yen:Int;
	public static var left:Int;
	public static var numPadSubtract:Int;
	public static var noconvert:Int;
	public static var leftCtrl:Int;
	public static var rightCtrl:Int;
	public static var numPad2:Int;
	public static var insert:Int;
	public static var delete:Int;
	public static var f4:Int;
	public static var grave:Int;
	public static var leftAlt:Int;
	public static var numPad8:Int;
	public static var numLock:Int;
	public static var four:Int;
	public static var rightAlt:Int;
	public static var pause:Int;
	public static var numPad0:Int;
	public static var numPadEquals:Int;
	public static var enter:Int;
	public static var down:Int;
	public static var eight:Int;
	public static var f11:Int;
	public static var six:Int;
	public static var r:Int;
	public static var rightShift:Int;
	public static var t:Int;
	public static var u:Int;
	public static var pageDown:Int;
	public static var nine:Int;
	public static var zero:Int;
	public static var capsLock:Int;
	public static var p:Int;
	public static var leftBracket:Int;
	public static var underscore:Int;
	public static var scollLock:Int;
	public static var minus:Int;
	public static var f14:Int;
	public static var m:Int;
	public static var cimcumflex:Int;
	public static var one:Int;
	public static var up:Int;
	public static var equals:Int;
	public static var d:Int;
	public static var f7:Int;
	public static var apostrophe:Int;
	public static var numPad9:Int;
	public static var f15:Int;
	public static var stop:Int;
	public static var f10:Int;
	public static var numPad7:Int;
	public static var numPad3:Int;
	public static var comma:Int;
	public static var numPadAdd:Int;
	public static var tab:Int;
	public static var numPad4:Int;
	public static var f3:Int;
	public static var kana:Int;
	public static var numPad1:Int;
	public static var right:Int;
	public static var numPadDecimal:Int;
	public static var f2:Int;
	public static var leftShift:Int;
	public static var backspace:Int;
	public static var convert:Int;
	public static var end:Int;
	public static var three:Int;
	public static var kanji:Int;
	public static var v:Int;
	public static var colon:Int;
	public static var semiColon:Int;
	public static var two:Int;
	public static var f13:Int;
	public static var multiply:Int;
	public static var period:Int;
	public static var ax:Int;
	public static var slash:Int;
	public static var f6:Int;
	public static var at:Int;
	public static var numPadDivide:Int;
	public static var numPad5:Int;
	public static var f12:Int;
	public static var f8:Int;
	public static var home:Int;
	public static var five:Int;
	public static var numPadComma:Int;
}
