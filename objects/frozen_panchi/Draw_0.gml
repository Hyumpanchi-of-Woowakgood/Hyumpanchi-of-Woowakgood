/// @description Insert description here
// You can write your code in this editor
if ice_hp <= 0
{
draw_sprite_ext(spr_shadow,0,x,903+27,1-abs(y-903)/48,1-abs(y-903)/64,0,c_white,(1-abs(y-903)/48)*0.3)
}

draw_self()

if ice_hp > 0
{
draw_sprite_ext(Sprite152,0,x,y,image_xscale,image_yscale,0,c_white,0.75)
}
