package cc.periphs;

@:luaDotMethod
extern class EnergyStorage {
	public function getEnergy():Int; //	Get the energy of this block.
	public function getEnergyCapacity():Int; //	Get the maximum amount of energy this block can store.
}
