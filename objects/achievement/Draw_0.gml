/// @description Insert description here
// You can write your code in this editor
if global.trailer_mode = 0
{
var xx = camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])
var yy = camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0])
var cm_vx = obj_camera.v_x/1280

draw_set_alpha(image_alpha*0.8)
draw_set_color(c_black)
draw_rectangle(xx-cm_vx*320,yy-cm_vx*96,xx,yy,0)

draw_text_kl_scale(xx-cm_vx*310,yy-cm_vx*89,"* '"+string(title)+"' 도전과제 달성!",16,999,image_alpha,c_red,0,-1,font0,1/3*cm_vx,1/3*cm_vx,image_angle)

draw_text_kl_scale(xx-cm_vx*310,yy-cm_vx*44,string(text),16,999,image_alpha,c_white,0,-1,font0,1/3*cm_vx,1/3*cm_vx,image_angle)
}