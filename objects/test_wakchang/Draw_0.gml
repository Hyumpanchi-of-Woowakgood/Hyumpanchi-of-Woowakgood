/// @description Insert description here
// You can write your code in this editor

if image_alpha > 0
{
draw_sprite_ext(spr_shadow,0,x,366+27,1-abs(y-366)/48,1-abs(y-366)/64,0,c_white,(1-abs(y-366)/48)*0.3)
}
draw_self()

//체력바
hp_bar_alpha += (t_hp_bar_alpha - hp_bar_alpha)*0.1

if hp_bar_alpha > 0
{
draw_sprite_ext(sprite20,0,x-20,y+32,1,1,0,c_white,hp_bar_alpha)
	if hp/max_hp > 0
	{
	draw_sprite_ext(sprite20,1,x-18,y+32,hp/max_hp,1,0,c_white,hp_bar_alpha)
	}
}

if global.killed_wakchang_before = 0
{
draw_text_kl_scale(x,y-60,"왁창",16,999,image_alpha,image_blend,0,0,font0,1/3,1/3,image_angle)
}
else
{

	if hp > 0
	{
	draw_text_kl_scale(x,y-60,"삐진 왁창",16,999,image_alpha,image_blend,0,0,font0,1/3,1/3,image_angle)
	}
	else
	{
	draw_text_kl_scale(x,y-60,"(기절함)",16,999,image_alpha,image_blend,0,0,font0,1/3,1/3,image_angle)
	}
}


if scene__ > 0
{
var xx = camera_get_view_x(view_camera[0])+100
var yy = camera_get_view_y(view_camera[0])+135

draw_text_kl_scale(xx,yy,string(global.money)+"원",16,999,image_alpha,$FFBACC35,0,0,font0,1/3,1/3,image_angle)
draw_text_kl_scale(xx,yy-45,"현재 보유 자금 : ",16,999,image_alpha,c_white,0,0,font0,1/2,1/2,image_angle)
}



//draw_set_color(c_black)
//draw_set_alpha(1)
//draw_text(x,y,string(p_mes)+" / "+string(scene__))