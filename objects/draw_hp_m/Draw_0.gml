/// @description Insert description here
// You can write your code in this editor
if d_text != 0 && (global.playing_scene = 0 || global.n_room = 1)
{
a ++

if a%10 = 1
{
b++
	if b > 1
	{
	image_alpha = 1
	b = 0
	}
	else
	{
	image_alpha = 0.7
	}
}

draw_text_kl_scale(x,y,d_text,16,999,image_alpha*real_alpha,image_blend,0,0,font0,1/3*image_xscale,1/3*image_yscale,image_angle)
}

if d_text != 0 && is_string(d_text) && global.playing_scene > 0
{
a ++

if a%10 = 1
{
b++
	if b > 1
	{
	image_alpha = 1
	b = 0
	}
	else
	{
	image_alpha = 0.7
	}
}

draw_text_kl_scale(x,y,d_text,16,999,image_alpha*real_alpha,image_blend,0,0,font0,1/3*image_xscale,1/3*image_yscale,image_angle)
}