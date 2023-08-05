package cc.periphs;

import lua.Table;

@:luaDotMethod
extern class Modem {
	public function open(channel:Int):Void; //	Open a channel on a modem.
	public function isOpen(channel:Int):Bool; //	Check if a channel is open.
	public function close(channel:Int):Void; //	Close an open channel, meaning it will no longer receive messages.
	public function closeAll():Void; // Close all open channels.
	public function transmit(channel:Int, replyChannel:Int, payload:Any):Void; // 	Sends a modem message on a certain channel.
	public function isWireless():Bool; // Determine if this is a wired or wireless modem.
	public function getNamesRemote():Table<Int, String>; // List all remote peripherals on the wired network.
	public function isPresentRemote(name:String):Bool; //	Determine if a peripheral is available on this wired network.
	public function getTypeRemote(name:String):String; //	Get the type of a peripheral is available on this wired network.
	public function getMethodsRemote(name:String):Table<Int, String>; //	Get all available methods for the remote peripheral with the given name.
	public function getNameLocal():String; // Returns the network name of the current computer, if the modem is on.
}
