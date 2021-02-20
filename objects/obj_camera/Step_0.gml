/// @description Insert description here
// You can write your code in this editor

if instance_number(gyu_seong) <= 0 && global.n_room = 0 && global.playing_scene <= 0 && room = room0
{
t_x = -4
t_y = -4
}

	if global.t_shake_x <= 0.01
	{
	global.t_shake_x = 0
	}
	
	if global.t_shake_y <= 0.01
	{
	global.t_shake_y = 0
	}
global.t_shake_x += (0 - global.t_shake_x)*0.1
global.t_shake_y += (0 - global.t_shake_y)*0.1
global.real_shake_x += (global.t_shake_x*global.shake_x - global.real_shake_x)*0.1
global.real_shake_y += (global.t_shake_y*global.shake_y - global.real_shake_y)*0.1
global.shake_time ++
	if global.shake_time > 1
	{
	global.shake_x = -global.shake_x
	global.shake_y = -global.shake_y
	global.shake_time = 0
	}


if instance_number(player) > 0
{
	if global.revived_once != 1
	{
	x += global.real_shake_x
	y += global.real_shake_y
	}
}
else
{
x += global.real_shake_x
y += global.real_shake_y
}



depth = -9999

if (t_x != 1523 && t_y != 903) || instance_number(ending_credits) > 0
{
	if instance_number(player) > 0 && t_x = -4
	{
	x += (player.x - x)*0.18
	}

	if t_x != -4
	{
	x += (t_x - x)*0.1
	}


	if instance_number(player) > 0
	{
	y += (player.y - y)*0.18
	}

	if t_y != -4
	{
	y += (t_y - y)*0.25
	}
}

x = floor(x)
y = floor(y)


v_x += (tv_x - v_x)*0.02;
v_y += (tv_y - v_y)*0.02;
global.view_angle_ += (0 - global.view_angle_)*0.1

camera_set_view_angle(view_camera[0],global.view_angle_)
camera_set_view_size(view_camera[0],floor(v_x),floor(v_y));

if view_smaller > 0
{
tv_x -= view_smaller*1.28
tv_y -= view_smaller*0.72
}











if global.w_alpha > 0 && global.revived = 0
{
global.w_alpha -= 0.15
}

if global.w_alpha < 0
{
global.w_alpha = 0
}

global.black_ += (global.t_black_ - global.black_)*0.02

if global.terror_zero = 1
{
global.terror += (0 - global.terror)*0.1
}


if global.w_alpha2 > 0
{
global.w_alpha2 -= 0.15
}




global.last_scene_black += (global.t_last_scene_black - global.last_scene_black)*0.001