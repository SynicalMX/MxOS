package cc;

@:multiReturn
extern class GPSLocation {
	var x:Float;
	var y:Float;
	var z:Float;
}

@:native("gps")
extern class GPS {
	public static var CHANNEL_GPS:Int;
	public static function locate(?timeout:Float, ?debug:Bool):GPSLocation;
}
