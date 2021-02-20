/// @description Insert description here
// You can write your code in this editor
if image_alpha > 0
{
draw_sprite_ext(spr_shadow,0,x,366+27,1-abs(y-366)/48,1-abs(y-366)/64,0,c_white,(1-abs(y-366)/48)*0.3)
}
draw_self()

draw_text_kl_scale(x,y-60,"왁창",16,999,image_alpha,image_blend,0,0,font0,1/3,1/3,image_angle)