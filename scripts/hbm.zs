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
val dense_copper = <gregtech:gt.meta.plateDense:290>;
val firebricks = <gregtech:gt.multitileentity:18000>;
val gt_drain = <gregtech:gt.multiitem.technological:1020>;
val gt_steel_crucible = <gregtech:gt.multitileentity:1022>;
val gt_steel_firebox = <gregtech:gt.multitileentity:1104>;
val gt_bronze_turbine = <gregtech:gt.multitileentity:1512>;
val gt_steel_hammer = <gregtech:gt.multitileentity:15002>;
val planks = <ore:plankAnyWood>;
val sandstone = <ore:sandstone>;
val steelSaw = <ore:toolHeadBuzzSawAnyIronSteel>;
val steelBlock = <ore:blockSteel>;
val steelRod = <ore:stickAnyIronSteel>;
val steelPlate = <ore:plateAnyIronSteel>;
val stonePlate = <ore:plateAnyStone>;

val blast_furnace = <hbm:tile.machine_difurnace_off>;
val blast_furnace_2 = <hbm:tile.machine_difurnace_extension>;
val coke_oven = <hbm:tile.furnace_combination>;
val etfut_furnace = <etfuturum:blast_furnace>;
val firebox = <hbm:tile.heater_firebox>;
val crucible = <hbm:tile.machine_crucible>;
val sawmill = <hbm:tile.machine_sawmill>;
val press = <hbm:tile.machine_press>;


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
recipes.addShaped(sawmill, [
    [planks, steelSaw, planks],
    [dense_steel, gt_bronze_turbine, dense_steel],
    [planks, dense_steel, planks],
]);

recipes.remove(press);
recipes.addShaped(press, [
    [steelRod, gt_steel_firebox, steelRod],
    [steelRod, gt_steel_hammer, steelRod],
    [steelRod, steelBlock, steelRod]
]);

recipes.addShaped(blast_furnace, [
    [firebricks, dense_copper, firebricks],
    [firebricks, steelPlate, firebricks],
    [firebricks, firebricks, firebricks],
]);
recipes.remove(blast_furnace_2);
recipes.addShaped(blast_furnace_2, [
    [null, firebricks, null],
    [firebricks, gt_drain, firebricks],
    [firebricks, gt_drain, firebricks]
]);

//stamps
recipes.remove(<hbm:item.stamp_stone_flat>);
recipes.addShapeless(<hbm:item.stamp_stone_flat>, [<ore:plateAnyStone>]);
recipes.remove(<hbm:item.stamp_iron_flat>);
recipes.addShapeless(<hbm:item.stamp_iron_flat>, [<ore:plateAnyIron>]);
recipes.remove(<hbm:item.stamp_steel_flat>);
recipes.addShapeless(<hbm:item.stamp_steel_flat>, [<ore:plateAnyIronSteel>]);
recipes.remove(<hbm:item.stamp_titanium_flat>);
recipes.addShapeless(<hbm:item.stamp_titanium_flat>, [<ore:plateTitanium>]);
recipes.remove(<hbm:item.stamp_obsidian_flat>);
recipes.addShapeless(<hbm:item.stamp_obsidian_flat>, [<ore:plateObsidian>]);
recipes.remove(<hbm:item.stamp_desh_flat>);
recipes.addShapeless(<hbm:item.stamp_desh_flat>, [<ore:plateObsidian>]);

recipes.addShaped(coke_oven, [
    [null, sandstone, null],
    [sandstone, steelPlate, sandstone],
    [sandstone, dense_copper, sandstone]
]);
