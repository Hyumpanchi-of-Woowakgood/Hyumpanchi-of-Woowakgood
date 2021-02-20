/// @description Insert description here
// You can write your code in this editor
var cm_vx = obj_camera.v_x/1280
var xx = camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])*0.5
var yy = camera_get_view_y(view_camera[0])+cm_vx*350

if rectangle_in_rectangle(xx-cm_vx*120,yy-cm_vx*18,xx+cm_vx*120,yy+cm_vx*18,mouse_x,mouse_y,mouse_x,mouse_y)
{
	if global.nickname = "여기를 클릭해서 이름 입력"
	{
	keyboard_string = ""
	}
	else
	{
	keyboard_string = global.nickname
	}
pressed = 1
}