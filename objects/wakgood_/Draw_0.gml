/// @description Insert description here
// You can write your code in this editor
var xx = camera_get_view_x(view_camera[0])
var yy = camera_get_view_y(view_camera[0])+160
var xxx = camera_get_view_width(view_camera[0])
//var yyy = camera_get_view_height(view_camera[0])
draw_self()

if scene_alpha > 0
{
draw_set_alpha(scene_alpha*0.8)
draw_set_color(c_black)
draw_rectangle(xx,yy,xx+xxx,yy+326,0)

draw_sprite_ext(sprite7111,global.vr_weared,xx+xxx+scene_x,yy+163,1,1,0,c_white,scene_alpha)
}
