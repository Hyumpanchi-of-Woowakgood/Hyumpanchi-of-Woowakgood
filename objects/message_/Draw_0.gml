/// @description Insert description here
// You can write your code in this editor
//if global.trailer_mode = 0
if do_not_draw = 0
{
var xx = camera_get_view_x(view_camera[0])
var yy = camera_get_view_y(view_camera[0])+160
var cm_vx = 1

for(var i = 0; i < 8; i ++)
{
draw_set_color(c_black)
draw_set_alpha(image_alpha*0.16)
draw_rectangle(xx,yy+i*3*cm_vx,xx+camera_get_view_width(view_camera[0]),yy+150-i*3,0)
draw_set_alpha(1)
}

	if text != "왁초리" && text != "VR" && text != "승부 빤스" && text != "15kg짜리 가축" && text != "왁기의 빨대" && text != "헤르메스 부츠"
	{
	draw_text_kl_scale(xx+camera_get_view_width(view_camera[0])*0.5,yy+21,text,32,-1,image_alpha,c_white,0,0,font0,2/3*cm_vx,2/3*cm_vx,0)

	draw_text_kl_scale(xx+camera_get_view_width(view_camera[0])*0.5,yy+83*cm_vx,sub_text,32,-1,image_alpha,c_white,0,0,font0,1/3*cm_vx,1/3*cm_vx,0)
	}
	
	if text = "왁초리"
	{
		if global.replay_time > 1
		{
		draw_text_kl_scale(xx+camera_get_view_width(view_camera[0])*0.5,yy-7*cm_vx,"잃어버린 파란 광선 검",32,-1,image_alpha,c_white,0,0,font0,2/3*cm_vx,2/3*cm_vx,0)

		draw_sprite_ext(sprite41,13,xx+camera_get_view_width(view_camera[0])*0.5-8,yy+68*cm_vx,0.7,0.7,60,c_white,image_alpha)
		}
		else
		{
		draw_text_kl_scale(xx+camera_get_view_width(view_camera[0])*0.5,yy-7*cm_vx,text,32,-1,image_alpha,c_white,0,0,font0,2/3*cm_vx,2/3*cm_vx,0)

		draw_sprite_ext(sprite41,4,xx+camera_get_view_width(view_camera[0])*0.5-8,yy+68*cm_vx,0.7,0.7,60,c_white,image_alpha)
		}

	draw_text_kl_scale(xx+camera_get_view_width(view_camera[0])*0.5,yy+100*cm_vx,sub_text,32,-1,image_alpha,c_white,0,0,font0,1/3*cm_vx,1/3*cm_vx,0)
	}
	
	if text = "VR"
	{
	draw_text_kl_scale(xx+camera_get_view_width(view_camera[0])*0.5,yy-7*cm_vx,text,32,-1,image_alpha,c_white,0,0,font0,2/3*cm_vx,2/3*cm_vx,0)

	draw_sprite_ext(sprite41,5,xx+camera_get_view_width(view_camera[0])*0.5,yy+68*cm_vx,1*cm_vx,1*cm_vx,0,c_white,image_alpha)

	draw_text_kl_scale(xx+camera_get_view_width(view_camera[0])*0.5,yy+100*cm_vx,sub_text,32,-1,image_alpha,c_white,0,0,font0,1/3*cm_vx,1/3*cm_vx,0)
	}
	
	if text = "승부 빤스" || text = "왁기의 빨대"
	{
		if global.nickname = "왁기"
		{
		text = "왁기의 빨대"
		}
		
	draw_text_kl_scale(xx+camera_get_view_width(view_camera[0])*0.5,yy-7*cm_vx,text,32,-1,image_alpha,c_white,0,0,font0,2/3*cm_vx,2/3*cm_vx,0)

	if text != "왁기의 빨대"
	{
	draw_sprite_ext(sprite41,6,xx+camera_get_view_width(view_camera[0])*0.5,yy+68*cm_vx,1,1,0,c_white,image_alpha)
	}
	else
	{
	draw_sprite_ext(sprite41,8,xx+camera_get_view_width(view_camera[0])*0.5,yy+68*cm_vx,1,1,0,c_white,image_alpha)
	}

	draw_text_kl_scale(xx+camera_get_view_width(view_camera[0])*0.5,yy+100*cm_vx,sub_text,32,-1,image_alpha,c_white,0,0,font0,1/3*cm_vx,1/3*cm_vx,0)

	
	global.pants = 1
	}
	
	if text = "15kg짜리 가축"
	{
	draw_text_kl_scale(xx+camera_get_view_width(view_camera[0])*0.5,yy-7*cm_vx,text,32,-1,image_alpha,c_white,0,0,font0,2/3*cm_vx,2/3*cm_vx,0)

	draw_sprite_ext(sprite41,7,xx+camera_get_view_width(view_camera[0])*0.5,yy+68*cm_vx,1,1,0,c_white,image_alpha)

	draw_text_kl_scale(xx+camera_get_view_width(view_camera[0])*0.5,yy+100*cm_vx,sub_text,32,-1,image_alpha,c_white,0,0,font0,1/3*cm_vx,1/3*cm_vx,0)
	
	global.messi = 1
	}
	
	if text = "헤르메스 부츠"
	{
	draw_text_kl_scale(xx+camera_get_view_width(view_camera[0])*0.5,yy-7*cm_vx,text,32,-1,image_alpha,c_white,0,0,font0,2/3*cm_vx,2/3*cm_vx,0)

	draw_sprite_ext(sprite41,10,xx+camera_get_view_width(view_camera[0])*0.5,yy+68*cm_vx,1,1,0,c_white,image_alpha)

	draw_text_kl_scale(xx+camera_get_view_width(view_camera[0])*0.5,yy+100*cm_vx,sub_text,32,-1,image_alpha,c_white,0,0,font0,1/3*cm_vx,1/3*cm_vx,0)
	
	global.boots_ = 1
	}
}
