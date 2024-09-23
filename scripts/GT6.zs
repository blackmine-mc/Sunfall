import mods.MTUtils.Utils;
import mods.MTUtilsGT;

val bath = <gregtech:gt.multitileentity:32721>;
recipes.remove(bath);
recipes.addShaped(bath, [
    [<ore:craftingToolSaw>, null,                   <ore:craftingToolHardHammer>],
    [<ore:plankAnyWood>,    <ore:plateCurvedLead>,  <ore:plankAnyWood>],
    [<ore:plankAnyWood>,    <ore:plankAnyWood>,     <ore:plankAnyWood>]
]);

val woodenBucket = <gregtech:gt.multiitem.randomtools:2000>;
recipes.remove(woodenBucket);
recipes.addShaped(woodenBucket, [
    [<ore:plankAnyWood>,            <ore:craftingToolHardHammer>,   <ore:plankAnyWood>],
    [<ore:plateCurvedAnyCopper>,    <ore:plankAnyWood>,             <ore:plateCurvedAnyCopper>],
    [null,                          null,                           null]
]);

recipes.remove(<gregtech:gt.multiitem.randomtools:10000>);
recipes.addShaped(<gregtech:gt.multiitem.randomtools:10000>, [
    [null,                      <minecraft:glass_pane>,                 null],
    [<minecraft:glass_pane>,    <gregtech:gt.multiitem.bottles:32765>,  <minecraft:glass_pane>],
    [<ore:plateAnyCopper>,      <minecraft:glass_pane>,                 null]
]);

recipes.remove(<gregtech:gt.multitileentity:31000>);
recipes.addShaped(<gregtech:gt.multitileentity:31000>, [
    [<ore:wireFineRedAlloy>,    <ore:dustRedstone>,     <ore:wireFineRedAlloy>],
    [<ore:dustRedstone>,    <gregtech:gt.multiitem.randomtools:10000>,     <ore:dustRedstone>],
    [<ore:wireFineRedAlloy>,    <ore:dustRedstone>,     <ore:wireFineRedAlloy>]
]);

//HBM bauxite
MTUtilsGT.addCustomRecipe("gt.recipe.crusher", true, 16, 6, [10000], [<hbm:tile.stone_resource:5>],[<gregtech:gt.meta.crushed:9105>, <gregtech:gt.meta.crushed:9105>]);