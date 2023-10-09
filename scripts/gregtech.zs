import minetweaker.item.IItemStack;
import mods.nei.NEI;

val file = <ore:craftingToolFile>;
val hammer = <ore:craftingToolHardHammer>;
val steelPlate = <ore:plateAnyIronSteel>;

val bath = <gregtech:gt.multitileentity:32708>;
recipes.remove(bath);
recipes.addShaped(bath, [
    [null,          hammer,       null],
    [steelPlate,    file,         steelPlate],
    [steelPlate,    steelPlate,   steelPlate],
]);