package cc.periphs;

@:multiReturn
extern class Position {
	var x:Int;
	var y:Int;
}

@:luaDotMethod
extern class Printer {
	public function write(text:String):Void; //	Writes text to the current page.
	public function getCursorPos():Position; //	Returns the current position of the cursor on the page.
	public function setCursorPos(x:Int, y:Int):Void; //	Sets the position of the cursor on the page.
	public function getPageSize():Position; //	Returns the size of the current page.
	public function newPage():Bool; //	Starts printing a new page.
	public function endPage():Bool; //	Finalizes printing of the current page and outputs it to the tray.
	public function setPageTitle(?title:String):Void; //	Sets the title of the current page.
	public function getInkLevel():Float; //	Returns the amount of ink left in the printer.
	public function getPaperLevel():Int; //	Returns the amount of paper left in the printer.
}
