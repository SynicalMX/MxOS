package cc.periphs;

@:luaDotMethod
extern class Disk {
	public function isDiskPresent():Bool; //	Returns whether a disk is currently inserted in the drive.
	public function getDiskLabel():Null<String>; //	Returns the label of the disk in the drive if available.
	public function setDiskLabel(?label:String):Void; //	Sets or clears the label for a disk.
	public function hasData():Bool; //	Returns whether a disk with data is inserted.
	public function getMountPath():Null<String>; //	Returns the mount path for the inserted disk.
	public function hasAudio():Bool; //	Returns whether a disk with audio is inserted.
	public function getAudioTitle():Null<String>; //	Returns the title of the inserted audio disk.
	public function playAudio():Void; //	Plays the audio in the inserted disk, if available.
	public function stopAudio():Void; //	Stops any audio that may be playing.
	public function ejectDisk():Void; //	Ejects any disk that may be in the drive.
	public function getDiskID():Int; //	Returns the ID of the disk inserted in the drive.
}
