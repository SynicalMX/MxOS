package cc.periphs;

@:luaDotMethod
extern class Speaker {
	public function playSound(name:String, ?volume:Float, ?pitch:Float):Bool; //	Plays a sound through the speaker.
	public function playNote(name:String, ?volume:Float, ?pitch:Float):Bool; //	Plays a note block note through the speaker.
}
