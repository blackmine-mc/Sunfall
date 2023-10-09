import minetweaker.item.IItemStack;
import mods.nei.NEI;

val riftBlade = <dimdoors:Rift Blade>;
val balefulBlade = <hbm:item.meteorite_sword_baleful>;

NEI.hide(riftBlade);
recipes.remove(riftBlade);
recipes.addShapeless(riftBlade.withTag({"display": 
    {Name: "§4Пробужденный клинок", Lore: ["Это оружие разрезает", "Само пространство и время"]},
    "ench": [
        {"id": 16 as short, "lvl": 999 as short }
    ]}), [balefulBlade]);