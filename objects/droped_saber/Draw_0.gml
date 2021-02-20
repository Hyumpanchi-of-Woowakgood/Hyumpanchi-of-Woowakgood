/// @description Insert description here
// You can write your code in this editor
if global.vr_weared > 0 || global.replay_time > 1
{
	if already_droped = 1
	{
	draw_sprite_ext(sprite_index,1,x-20,y+23,image_xscale*0.7,-image_yscale,-120+12,c_black,0.4)
	}
draw_self()
}