import minetweaker.item.IItemStack;
import mods.nei.NEI;


//vanilla tools
val woodenStuff = [<minecraft:wooden_sword>, <minecraft:wooden_shovel>, <minecraft:wooden_pickaxe>, <minecraft:wooden_axe>, <minecraft:wooden_hoe>] as IItemStack[];
val stoneStuff = [<minecraft:stone_sword>, <minecraft:stone_shovel>, <minecraft:stone_pickaxe>, <minecraft:stone_axe>, <minecraft:stone_hoe>] as IItemStack[];
val ironStuff = [<minecraft:iron_sword>, <minecraft:iron_shovel>, <minecraft:iron_pickaxe>, <minecraft:iron_axe>, <minecraft:iron_hoe>] as IItemStack[];
val goldenStuff = [<minecraft:golden_sword>, <minecraft:golden_shovel>, <minecraft:golden_pickaxe>, <minecraft:golden_axe>, <minecraft:golden_hoe>] as IItemStack[];
val diamondStuff = [<minecraft:diamond_sword>, <minecraft:diamond_shovel>, <minecraft:diamond_pickaxe>, <minecraft:diamond_axe>, <minecraft:diamond_hoe>] as IItemStack[];

val tools = [woodenStuff, stoneStuff, ironStuff, goldenStuff, diamondStuff] as IItemStack[][];

for toollist in tools {
    for tool in toollist {
        	recipes.remove(tool);
            NEI.hide(tool);
    }
}

val dirt = <ore:dirt>;
val seeds = <ore:seeds>;
val grass = <minecraft:grass>;
val waterBottle = <ore:bottleWater>;

recipes.addShapeless(grass, [seeds, dirt, waterBottle]);