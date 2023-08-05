package cc.periphs;

import lua.Table;

interface ReducedItemInfo {
	public var count:Int;
	public var name:String;
}

interface DetailedItemInfo extends ReducedItemInfo {
	public var displayName:String;
	public var tag:Null<String>;
	public var maxCount:Int;
	public var tags:Table<String, Bool>;
}

@:luaDotMethod
extern class ItemStorage {
	public function size():Int; //	Get the size of this inventory.
	public function list():Table<Int, ReducedItemInfo>; //	List all items in this inventory.
	public function getItemDetail(slot:Int):DetailedItemInfo; //	Get detailed information about an item.
	public function pushItems(toName:String, fromSlot:Int, ?limit:Int, ?toSlot:Int):Int; //	Push items from one inventory to another connected one.
	public function pullItems(fromName:String, fromSlot:Int, ?limit:Int, ?toSlot:Int):Int; //	Pull items from a connected inventory into this one.
}
