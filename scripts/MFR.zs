import minetweaker.item.IItemStack;
import mods.nei.NEI;

//go away laggy shit
val conveyors = [
    <MineFactoryReloaded:conveyor:0>,
    <MineFactoryReloaded:conveyor:0>,
    <MineFactoryReloaded:conveyor:0>,
    <MineFactoryReloaded:conveyor:0>,
    <MineFactoryReloaded:conveyor:0>,
    <MineFactoryReloaded:conveyor:0>,
    <MineFactoryReloaded:conveyor:0>,
    <MineFactoryReloaded:conveyor:0>,
    <MineFactoryReloaded:conveyor:0>,
    <MineFactoryReloaded:conveyor:0>,
    <MineFactoryReloaded:conveyor:0>,
    <MineFactoryReloaded:conveyor:0>,
    <MineFactoryReloaded:conveyor:0>,
    <MineFactoryReloaded:conveyor:0>,
    <MineFactoryReloaded:conveyor:0>,
    <MineFactoryReloaded:conveyor:0>,
] as IItemStack[];
for conveyor in conveyors {
    recipes.remove(conveyor);
    NEI.hide(conveyor);
}

//mfr guns are boring
val mfrGuns = [
    <MineFactoryReloaded:potatolauncher>,
    <MineFactoryReloaded:needlegun>,
    <MineFactoryReloaded:needlegun.ammo.empty>,
    <MineFactoryReloaded:needlegun.ammo.standard>,
    <MineFactoryReloaded:needlegun.ammo.pierce>,
    <MineFactoryReloaded:needlegun.ammo.lava>,
    <MineFactoryReloaded:needlegun.ammo.sludge>,
    <MineFactoryReloaded:needlegun.ammo.sewage>,
    <MineFactoryReloaded:needlegun.ammo.fire>,
    <MineFactoryReloaded:needlegun.ammo.anvil>,
    <MineFactoryReloaded:rocketlauncher>,
    <MineFactoryReloaded:rocket>,
    <MineFactoryReloaded:rocket:1>
] as IItemStack[];
for mfrGun in mfrGuns {
    recipes.remove(mfrGun);
    NEI.hide(mfrGun);
}