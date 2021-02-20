/// @description Insert description here
// You can write your code in this editor
draw_self()
var _mail_x = x+64 - mail_x

if _mail_x < x
{
var set_scale = (abs(_mail_x - x+64))/16
}
else
{
var set_scale = (abs(_mail_x - x-64))/16
}


if set_scale > 1
{
set_scale = 1
}



draw_sprite_ext(spr_mail,0,_mail_x,y,0.85*set_scale,0.85*set_scale,image_angle,c_white,1)

if abs(_mail_x - x+64) > 8
{
draw_sprite_ext(Sprite162,0,x-64,y,-0.85,0.85,0,c_white,1)
}
else
{
	if a = 0
	{
	
	repeat(irandom_range(32,42))
	{
	var xx = x-64+irandom_range(-40*image_xscale,40*image_xscale)
	var yy = y+irandom_range(-40*image_xscale,40*image_xscale)
	randomize()
	
	repeat(999)
	{
		if point_distance(xx,y,x-64,y) > 40*image_xscale
		{
		var xx = x-64+irandom_range(-40,40)
		}
		else
		{
		break;
		}
	}
	
	
	repeat(999)
	{
		if point_distance(x-64,yy,x-64,y) > 40*image_xscale
		{
		var yy = y+irandom_range(-40*image_xscale,40*image_xscale)
		}
		else
		{
		break;
		}
	}
	
	var dust = instance_create_depth(xx,yy,depth-1,pepsi_effect)
	
	var scale = irandom_range(20,40)/50
	dust.image_xscale = scale
	dust.image_yscale = scale
	dust.vspeed = irandom_range(-50,50)/37
	dust.hspeed = irandom_range(-50,50)/37
	dust.image_alpha = 1
	}
	
	
	credit_hyumpanchi.sprite_index = excited_hyumpanchi
	credit_hyumpanchi.image_speed = 0.34
	
	p_mes = instance_create_depth(x,y,obj_floor11.depth-64,player_message_for_t_chat)
	p_mes.text = "효과는 굉장했다"
	p_mes.target = self.id
	draw_real_accident = 1
	a = 1
	}
draw_sprite_ext(Sprite162,1,x-64,y,-0.85,0.85,0,c_white,1)
}

if send_mail = 0
{
draw_sprite_ext(pl_move_hyumpanchi,0,x+64,y,0.85,0.85,0,c_white,1)
}
else
{
	if send_mail < 7
	{
	draw_sprite_ext(pl_move_hyumpanchi_attack,send_mail,x+64,y,0.85,0.85,0,c_white,1)
	}
	else
	{
	draw_sprite_ext(pl_move_hyumpanchi_attack,7,x+64,y,0.85,0.85,0,c_white,1)
	}
}


var xx = camera_get_view_x(view_camera[0])+64
var yy = camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0])-ac_y-320
if draw_real_accident = 1
{
draw_sprite_ext(Sprite166167,0,xx,yy,0.2,0.2,0,c_white,alpha)
}