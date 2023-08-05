package cc.periphs;

@:multiReturn
extern class CommandResult {
	var success:Bool;
	var failMessage:Null<String>;
}

@:luaDotMethod
extern class Command {
	public function getCommand():String;

	public function setCommand(command:String):Void;

	public function runCommand():CommandResult;
}
