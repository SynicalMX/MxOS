package cc.periphs;

@:luaDotMethod
extern class Computer {
	public function turnOn():Void; //	Turn the other computer on.
	public function shutdown():Void; //	Shutdown the other computer.
	public function reboot():Void; //	Reboot or turn on the other computer.
	public function getID():Int; //	Get the other computer's ID.
	public function isOn():Bool; //	Determine if the other computer is on.
	public function getLabel():Null<String>; //	Get the other computer's label.
}
