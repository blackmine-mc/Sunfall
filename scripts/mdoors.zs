import minetweaker.item.IItemStack;
import mods.nei.NEI;

//tile blocks
val doorBlocks = [<malisisdoors:door_acacia>,
    <malisisdoors:door_birch>,
    <malisisdoors:door_dark_oak>,
    <malisisdoors:door_jungle>,
    <malisisdoors:door_spruce>,
    <malisisdoors:wood_sliding_door>,
    <malisisdoors:iron_sliding_door>,
    <malisisdoors:jail_door>,
    <malisisdoors:laboratory_door>,
    <malisisdoors:factory_door>,
    <malisisdoors:shoji_door>,
    <malisisdoors:curtain_black>,
    <malisisdoors:curtain_red>,
    <malisisdoors:curtain_green>,
    <malisisdoors:curtain_brown>,
    <malisisdoors:curtain_blue>,
    <malisisdoors:curtain_purple>,
    <malisisdoors:curtain_cyan>,
    <malisisdoors:curtain_silver>,
    <malisisdoors:curtain_gray>,
    <malisisdoors:curtain_pink>,
    <malisisdoors:curtain_lime>,
    <malisisdoors:curtain_yellow>,
    <malisisdoors:curtain_light_blue>,
    <malisisdoors:curtain_magenta>,
    <malisisdoors:curtain_orange>,
    <malisisdoors:curtain_white>,
    <malisisdoors:saloon>,
    <malisisdoors:mixed_block>,
    <malisisdoors:null>] as IItemStack[];

for block in doorBlocks {
    NEI.hide(block);
}