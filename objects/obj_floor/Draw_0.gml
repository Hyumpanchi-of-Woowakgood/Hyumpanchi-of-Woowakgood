/// @description Insert description here
// You can write your code in this editor
draw_set_alpha(1)
draw_self()
draw_sprite_ext(sprite_index,1,x,y,image_xscale,image_yscale,0,c_white,0.3)


if global.blur > 0
{
mdDrawGaussian(sprite_index, image_index, global.blur, global.blur, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
}