/// @description Insert description here
// You can write your code in this editor
draw_self()
if global.l_q_grap = 0
{
	if global.rainy = 0
	{
		if image_index = 0 || image_index = 2
		{
			for(var i = 0; i <= 25; i += 0.1)
			{
			draw_sprite_ext(sprite_index,3,x,0,image_xscale,i,0,c_white,0.01)
			}
		}
	}
	else
	{
		if image_index = 0 || image_index = 2
		{
			for(var i = 0; i <= 42; i += 0.1)
			{
			draw_sprite_ext(sprite_index,3,x,0,image_xscale,i,0,c_white,0.01)
			}
		}
	}
}