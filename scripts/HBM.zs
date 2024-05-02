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