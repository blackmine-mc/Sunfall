import minetweaker.item.IItemStack;
import mods.nei.NEI;

val market = <harvestcraft:market>;
recipes.remove(market);
recipes.addShaped(market, [
    [<ore:plankAnyWood>, <ore:blockWool>, <ore:plankAnyWood>],
    [<ore:blockWool>, <hbm:tile.pole_top>, <ore:blockWool>],
    [<ore:plankAnyWood>, <ore:blockWool>, <ore:plankAnyWood>],
]);