package cc.periphs;

@:multiReturn
extern class Position {
	var x:Int;
	var y:Int;
}

typedef Color = Int;

@:multiReturn
extern class ColorData {
	var r:Float;
	var g:Float;
	var b:Float;
}

@:luaDotMethod
extern class Monitor {
	public function setTextScale(scale:Float):Void; // Set the scale of this monitor.
	public function getTextScale():Float; // Get the monitor's current text scale.
	public function write(text:String):Void; // Write text at the current cursor position, moving the cursor to the end of the text.
	public function scroll(y:Int):Void; // Move all positions up (or down) by y pixels.
	public function getCursorPos():Position; // Get the position of the cursor.
	public function setCursorPos(x:Int, y:Int):Void; // et the position of the cursor.
	public function getCursorBlink():Bool; // Checks if the cursor is currently blinking.
	public function setCursorBlink(blink:Bool):Void; // Sets whether the cursor should be visible (and blinking) at the current cursor position.
	public function getSize():Int; // Get the size of the terminal.
	public function clear():Void; // Clears the terminal, filling it with the current background colour.
	public function clearLine():Void; // Clears the line the cursor is currently on, filling it with the current background colour.
	public function getTextColour():Color; // Return the colour that new text will be written as.
	public function getTextColor():Color; //	Return the colour that new text will be written as.
	public function setTextColour(colour:Color):Void; //	Set the colour that new text will be written as.
	public function setTextColor(colour:Color):Void; // Set the colour that new text will be written as.
	public function getBackgroundColour():Color; // Return the current background colour.
	public function getBackgroundColor():Color; // Return the current background colour.
	public function setBackgroundColour(colour:Color):Void; // Set the current background colour.
	public function setBackgroundColor(colour:Color):Void; // Set the current background colour.
	public function isColour():Bool; // Determine if this terminal supports colour.
	public function isColor():Bool; // Determine if this terminal supports colour.
	public function blit(text:String, textColour:String,
		backgroundColour:String):Void; // Writes text to the terminal with the specific foreground and background characters.
	public function setPaletteColour(index:Color, packedColour:Int):Void; // Set the palette for a specific colour.
	public function setPaletteColor(index:Color, packedColour:Int):Void; // Set the palette for a specific colour.
	public function getPaletteColour(colour:Color):ColorData; // Get the current palette for a specific colour.
	public function getPaletteColor(colour:Color):ColorData; // Get the current palette for a specific colour.
}
