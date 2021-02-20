/// @description Insert description here
// You can write your code in this editor
if global.t_c_discon = 0
{
	if title = "채팅 연동 투표 on!"
	{
	var cm_vx = obj_camera.v_x/1280
	var xx = camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])
	var yy = camera_get_view_y(view_camera[0])-110*cm_vx

	draw_set_alpha(image_alpha*0.8)
	draw_set_color(c_black)
	draw_rectangle(xx-cm_vx*320,yy+cm_vx*200,xx+10,yy,0)

	draw_text_kl_scale(xx-cm_vx*304,yy+cm_vx*116,"*"+string(title),16,999,image_alpha,$FFF7D06D,0,-1,font0,1/3.5*cm_vx,1/3.5*cm_vx,image_angle)

	draw_text_kl_scale(xx-cm_vx*304,yy+cm_vx*143,string(file_name),16,1500,image_alpha,c_white,0,-1,font0,1/5*cm_vx,1/5*cm_vx,image_angle)
	draw_text_kl_scale(xx-cm_vx*304,yy+cm_vx*163,string(sub_file_name),16,1500,image_alpha,c_white,0,-1,font0,1/5*cm_vx,1/5*cm_vx,image_angle)
	}
	else
	{
	var cm_vx = obj_camera.v_x/1280
	var xx = camera_get_view_x(view_camera[0])
	var yy = camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0])+100*cm_vx

	draw_set_alpha(image_alpha*0.8)
	draw_set_color(c_black)
	draw_rectangle(xx+cm_vx*320,yy-cm_vx*210,xx-10,yy,0)

	draw_text_kl_scale(xx+cm_vx*4,yy-cm_vx*200,"*"+string(title),16,999,image_alpha,$FFF7D06D,0,-1,font0,1/3.5*cm_vx,1/3.5*cm_vx,image_angle)

	draw_text_kl_scale(xx+cm_vx*4,yy-cm_vx*174,string(file_name),16,1500,image_alpha,c_white,0,-1,font0,1/5*cm_vx,1/5*cm_vx,image_angle)
	draw_text_kl_scale(xx+cm_vx*4,yy-cm_vx*144,string(sub_file_name),16,1500,image_alpha,c_white,0,-1,font0,1/5*cm_vx,1/5*cm_vx,image_angle)
	}
}
else
{
	if title = "채팅 연동 투표 on!"
	{
	var cm_vx = obj_camera.v_x/1280
	var xx = camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])
	var yy = camera_get_view_y(view_camera[0])-110*cm_vx

	draw_set_alpha(image_alpha*0.8)
	draw_set_color(c_black)
	draw_rectangle(xx-cm_vx*320,yy+cm_vx*200,xx+10,yy,0)

	draw_text_kl_scale(xx-cm_vx*304,yy+cm_vx*116,"*트위치 연동이 꺼져있습니다!",16,999,image_alpha,$FFF7D06D,0,-1,font0,1/3.5*cm_vx,1/3.5*cm_vx,image_angle)

	draw_text_kl_scale(xx-cm_vx*304,yy+cm_vx*143,"설정에서 트위치 연동 시스템을 사용하려면 다시 켜주세요",16,1500,image_alpha,c_white,0,-1,font0,1/5*cm_vx,1/5*cm_vx,image_angle)
	}
	else
	{
	var cm_vx = obj_camera.v_x/1280
	var xx = camera_get_view_x(view_camera[0])
	var yy = camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0])+100*cm_vx

	draw_set_alpha(image_alpha*0.8)
	draw_set_color(c_black)
	draw_rectangle(xx+cm_vx*320,yy-cm_vx*210,xx-10,yy,0)

	draw_text_kl_scale(xx+cm_vx*4,yy-cm_vx*200,"*트위치 연동이 꺼져있습니다!",16,999,image_alpha,$FFF7D06D,0,-1,font0,1/3.5*cm_vx,1/3.5*cm_vx,image_angle)

	draw_text_kl_scale(xx+cm_vx*4,yy-cm_vx*174,"설정에서 트위치 연동 시스템을 사용하려면 다시 켜주세요",16,1500,image_alpha,c_white,0,-1,font0,1/5*cm_vx,1/5*cm_vx,image_angle)
	}
}
