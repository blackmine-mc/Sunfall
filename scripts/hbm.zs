import minetweaker.item.IItemStack;
import mods.nei.NEI;

//fuck the anvils
val iron_anvil = <hbm:tile.anvil_iron>;
val lead_anvil = <hbm:tile.anvil_lead>;
val steel_anvil = <hbm:tile.anvil_steel>;
val met_anvil = <hbm:tile.anvil_meteorite>;
val star_anvil = <hbm:tile.anvil_starmetal>;
val fu_anvil = <hbm:tile.anvil_ferrouranium>;
val bis_anvil = <hbm:tile.anvil_bismuth>;
val sch_anvil = <hbm:tile.anvil_schrabidate>;
val fs_anvil = <hbm:tile.anvil_bismuth>;
val dnt_anvil = <hbm:tile.anvil_dnt>;
val osm_anvil = <hbm:tile.anvil_osmiridium>;
val mu_anvil = <hbm:tile.anvil_murky>;

val anvils = [iron_anvil, lead_anvil, steel_anvil, met_anvil, star_anvil, fu_anvil, bis_anvil, sch_anvil, fs_anvil, dnt_anvil, osm_anvil, mu_anvil] as IItemStack[];
for anvil in anvils {
    recipes.remove(anvil);
    NEI.hide(anvil);
}

//new crucible
val dense_steel = <gregtech:gt.meta.plateDense:8630>;
val dense_bronze = <gregtech:gt.meta.plateDense:8610>;
val etfut_furnace = <etfuturum:blast_furnace>;
val firebox = <hbm:tile.heater_firebox>;
val crucible = <hbm:tile.machine_crucible>;
val gt_steel_crucible = <gregtech:gt.multitileentity:1022>;
val firebricks = <gregtech:gt.multitileentity:18000>;
recipes.addShaped(firebox, [
    [dense_steel, dense_bronze, dense_steel],
    [dense_bronze, etfut_furnace, dense_bronze],
    [dense_steel, dense_bronze, dense_steel],
]);
recipes.addShaped(crucible, [
    [firebricks, dense_bronze, firebricks],
    [dense_bronze, gt_steel_crucible, dense_bronze],
    [firebricks, dense_bronze, firebricks],
]);

