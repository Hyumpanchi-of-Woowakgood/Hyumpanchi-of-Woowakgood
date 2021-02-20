/// @description Insert description here
// You can write your code in this editor





var xx = camera_get_view_x(view_camera[0])
var yy = camera_get_view_y(view_camera[0])
var xxx = camera_get_view_width(view_camera[0])
var yyy = camera_get_view_height(view_camera[0])

if global.playing_scene > 0
{
	if global.playing_scene_black_bg < 125
	{
	global.playing_scene_black_bg ++
	}
global.playing_scene_black_bg += (125 - global.playing_scene_black_bg)*0.01
}
else
{
	if global.playing_scene_black_bg > 0
	{
	global.playing_scene_black_bg --
	}
global.playing_scene_black_bg += (-1 - global.playing_scene_black_bg)*0.01
}

if global.playing_scene_black_bg > 0
{
draw_set_alpha(1)
draw_set_color(c_black)
draw_rectangle(xx,yy,xx+xxx,yy+global.playing_scene_black_bg*obj_camera.v_y/1000,0)
draw_rectangle(xx,yy+yyy,xx+xxx,yy+yyy-global.playing_scene_black_bg*obj_camera.v_y/1000,0)
}



if global.trailer_mode = 0
{
	if tip_alpha > 0
	{
	var c_scale = obj_camera.v_y/720
	var xx = camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])
	var yy = camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0])

	draw_text_kl_scale(xx-16*c_scale,yy-32*c_scale,"* D키를 눌러 다음 대사로 넘길수 있습니다",16,99999,tip_alpha,c_white,0,1,font0,c_scale/4.5,c_scale/4.5,0)
	}
}





//draw_text(player.x,500,global.wave_time)