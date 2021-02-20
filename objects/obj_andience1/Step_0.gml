/// @description Insert description here
// You can write your code in this editor
if global.hp <= 1 && room != room4
{
time = 1
}

if global.killed_wakchang > 0
{
instance_destroy()
}

if instance_number(down_effect) > 0
{
	if gravity = 0
	{
	y --
	gravity = 0.3
	vspeed = -irandom_range(30,50)/10
	time = 0
	image_index = 0
	max_time = 9099999
	}
}



if time > max_time
{
y --
gravity = 0.3
vspeed = -irandom_range(30,50)/10
time = 0
image_index = 0
max_time = 9999999
}

if instance_number(player) > 0
{
	if player.x > x
	{
	image_xscale = -1
	}
	else
	{
	image_xscale = 1
	}
}
else
{
	if obj_camera.x > x
	{
	image_xscale = -1
	}
	else
	{
	image_xscale = 1
	}
}



if global.n_room != 0 || (global.rainy = 1 && instance_number(gyu_seong) = 0 && global.t_in_building < 1 && !audio_is_playing(it_s_over) && !audio_is_playing(nomal_ending) && global.vr_weared = 0 && room != room4)
{
instance_destroy()
}


if y >= 903-48
{
image_index = 1
gravity = 0
y = 903-48
	if time = 0
	{
	max_time = t_max_time+irandom_range(-40,40)
	time = 1
	}
}

if y < 903-48
{
image_index = 0
gravity = 0.3
}

if time >= 1
{
	if global.playing_scene = 0 || room = room4
	{
	time ++
	}
}
