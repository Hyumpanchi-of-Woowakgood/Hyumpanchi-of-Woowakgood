/// @description Insert description here
// You can write your code in this editor
draw_self()
if image_index = 0 || image_index = 2
{
	if instance_number(light_a) > 0
	{
		for(var i = 0; i <= 48-(abs(light_a.y-736))/32; i += 0.1)
		{
		draw_sprite_ext(sprite_index,3,x,0,image_xscale,i,0,c_white,0.01)
		}
	}
	else
	{
		for(var i = 0; i <= 25; i += 0.1)
		{
		draw_sprite_ext(sprite_index,3,x,0,image_xscale,i,0,c_white,0.01)
		}
	}
}
