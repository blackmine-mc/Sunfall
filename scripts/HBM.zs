import mods.nei.NEI;
NEI.hide(<minecraft:stone>);

recipes.remove(<hbm:item.shackles>);
NEI.hide(<hbm:item.shackles>);

val meteorSwordBlade = <ore:toolHeadSwordMeteoricSteel>;
val goldenRod = <ore:stickGold>;
val meteorSword = <hbm:item.meteorite_sword>;
recipes.remove(<hbm:item.meteorite_sword>);
recipes.addShaped(meteorSword, [
    [meteorSwordBlade, null],
    [goldenRod, null],
]);

furnace.addRecipe(<hbm:item.ingot_meteorite_forged>, <gregtech:gt.meta.ingot:8649>);

val heatedMeteoriteIngot = <hbm:item.ingot_meteorite_forged>;
recipes.addShaped(<hbm:item.meteorite_sword_reforged>, [
    [heatedMeteoriteIngot, <ore:craftingToolHardHammer>],
    [<hbm:item.meteorite_sword_seared>, heatedMeteoriteIngot]
]);