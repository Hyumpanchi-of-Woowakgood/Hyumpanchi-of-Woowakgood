/// @description Insert description here
// You can write your code in this editor
depth = -99999999

if game_over_alpha > 0
{
game_over_alpha += 0.01
}

if esc_alpha > 0
{
esc_alpha += 0.01
}

if achievement_alpha > 0 && achievement_alpha < 1
{
achievement_alpha += 0.05
}

obj_camera.v_x = 1280
obj_camera.v_y = 720

global.saved_view_xscale = obj_camera.v_x
global.saved_view_yscale = obj_camera.v_y
global.saved_view_t_xscale = obj_camera.tv_x
global.saved_view_t_yscale = obj_camera.tv_y

if b = 1
{
global.tuto_volume -= 0.001
global.ending += 0.0025
total_alpha -= 0.002

	if global.ending > 1
	{
	global.playing_scene = 0
	global.rainy = 0
	}
	
	if global.ending > 3
	{
	b = 0
	global.ending = 0
	room_goto(room4)
	}
}


if achievement_alpha >= 1 && a = 0
{
var sfx = audio_play_sound(down_attack_sfx,0,0)
audio_sound_gain(sfx,0.3*global.master_volume*2*global.sfx_volume,0)

var achived = 0
for(var i = 0; i < 23; i++)
{
	if global.achievement_finish[i] = 1
	{
	achived ++
	}
}
	if achived < 32
	{
		if global.voice_option = 0
		{
		var sfx = audio_play_sound(ssip,0,0)
		audio_sound_gain(sfx,0.3*global.master_volume*2*global.sfx_volume,0)
		}
	}
	
	if achived >= 32 && achived < 46
	{
		if global.voice_option = 0
		{
		var sfx = audio_play_sound(aaang_,0,0)
		audio_sound_gain(sfx,0.4*global.master_volume*2*global.sfx_volume,0)
		}
	}
	
	if achived >= 46
	{
		if global.voice_option = 0
		{
		var sfx = audio_play_sound(gibungoa,0,0)
		audio_sound_gain(sfx,0.4*global.master_volume*2*global.sfx_volume,0)
		}
	}
a = 1
}