/// @description Insert description here
// You can write your code in this editor
var xx = camera_get_view_x(view_camera[0])
var yy = camera_get_view_y(view_camera[0])
var c_scale = obj_camera.v_y/720

if scene = 0
{
draw_text_kl_scale(xx+640*c_scale,yy+330*c_scale,"빨리 날 구하러 와라...",250,9999,alpha,c_white,-1,0,font01,1/2.5*c_scale,1/2.5*c_scale,image_angle)
}

if scene = 1
{
draw_text_kl_scale(xx+640*c_scale,yy+330*c_scale,"날 구하러 와줘...",250,9999,alpha,c_white,-1,0,font01,1/2.5*c_scale,1/2.5*c_scale,image_angle)
}