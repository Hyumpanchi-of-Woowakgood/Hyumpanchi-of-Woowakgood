/// @description Insert description here
// You can write your code in this editor
draw_sprite_ext(spr_shadow,0,x,903+27,1-abs(y-903)/48,1-abs(y-903)/64,0,c_white,(1-abs(y-903)/48)*0.3)
draw_self()

if w_alpha > 0
{
draw_sprite_ext(pl_hurt_hyumpanchi_white,image_index,x,y,image_xscale,image_yscale,image_angle,c_white,w_alpha)
}