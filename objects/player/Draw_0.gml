/// @description Insert description here
// You can write your code in this editor
if global.last_scene_black > 0
{
	for(var i = 0; i < 8; i ++)
	{
	draw_set_color(c_white)
	draw_sprite_ext(sprite39,image_index,draw_x,y+16,i/3,i/5,0,c_white,global.last_scene_black*0.16)
	draw_set_alpha(1)
	}
}



for(var i = 0; i < 64; i++)
{
	if place_meeting(x,y+i,obj_floor)
	{
	draw_sprite_ext(spr_shadow,0,x,global.p_floor+27,1-abs(y-global.p_floor)/48,1-abs(y-global.p_floor)/64,0,c_white,(1-abs(y-global.p_floor)/48)*0.3*image_alpha)
	break;
	}
}



draw_self()
w_alpha += (0 - w_alpha)*0.1
if w_alpha > 0
{
var sprite = asset_get_index(string(sprite_get_name(string(sprite_index)))+"_white")
	if sprite_exists(sprite)
	{
	draw_sprite_ext(sprite,image_index,x,y,image_xscale,image_yscale,image_angle,c_white,w_alpha)
	}
}


if instance_number(gyu_seong) > 0 && global.playing_scene <= 0
{
	if point_distance(x,y,gyu_seong.x,gyu_seong.y) > 360
	{
	var c_scale = obj_camera.v_y/720
	draw_sprite_ext(Sprite183,image_index,x,y,c_scale,c_scale,point_direction(x,y,gyu_seong.x,gyu_seong.y)+270,c_white,0.8)
	}
}

//draw_set_color(c_black)
//draw_text(x,y,string(global.voting_now)+" / "+string(image_index))


//draw_set_color(c_black)
//draw_set_font(font0)
//draw_set_alpha(1)
//draw_text(x,y-32,string(y))