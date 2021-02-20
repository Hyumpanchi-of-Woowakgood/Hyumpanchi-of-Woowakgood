/// @description Insert description here
// You can write your code in this editor
if bgm != -1
{
audio_sound_gain(bgm,0.23*global.master_volume*scene_volume,0)
}

if black_out > 0
{
black_out -= 0.1
}


if !audio_is_playing(it_s_over) && !audio_is_playing(nomal_ending) && can_play_bgm = 1
{
bgm = audio_play_sound(it_s_over,0,0)
}




if global.achievement_finish[16] = 0 && instance_number(achievement) = 0 && global.got_wakchori = 0
{
var _message = instance_create_depth(-100,-100,-9999999999,achievement)
_message.title = "난 죽음을 택하겠다"
_message.text = "왁초리가 없는 상태로 쓰러졌다"
global.achievement_finish[16] = 1
}


if total_shaked > 3
{
global.revived += 0.01
scene_volume += (-0.01 - scene_volume)*0.05
	if scene_volume <= 0
	{
	audio_stop_sound(bgm)
	}
	if floor(image_index) != 0
	{
	image_index -= 0.3
	}
	
	if global.revived > 1.2
	{
	obj_camera.t_x = -4
	obj_camera.t_y = -4
	obj_camera.tv_x = 1280
	obj_camera.tv_y = 720
	global.p_floor = 903
	room_goto(room0)
	}
	
y -= 1.5
image_angle += -image_xscale
	if total_shaked = 4
	{
	total_shaked++
	}
}



if global.revived < 1.2
{
obj_camera.t_y = y
obj_camera.t_x = 640
}

if y > 448
{
gravity = 0
vspeed = 0
a_sound -= 0.023
image_index += 0.5
	if audio_ef = 0
	{
	audio_ef = 1
	var sfx = audio_play_sound(down_attack_sfx,0,0)
	audio_sound_gain(sfx,0.3*global.master_volume*2*global.sfx_volume,0)
	
	//a___ = audio_play_sound(choose(wakgood_hurt,wakgood_hurt2),0,0)
	}
	
//audio_sound_gain(a___,0.05*global.master_volume*a_sound2*global.sfx_volume,0)
}

if c = 1
{
	if can_shake < 1
	{
	can_shake += 0.1
	}
}


if image_index > 4
{
image_index = 4
}

if global.revived < 1.2
{
obj_camera.tv_x = 1280*0.7
obj_camera.tv_y = 720*0.7
}


if shaking > 0
{
shaking ++

	if shaking%4 = 1
	{
	x_plused ++
		if x_plused > 1
		{
		x_plused = 0
		}
		
	x += x_plused*2
	saved_x_plused = x_plused
	alarm[3] = 3
	}

	if shaking > 13
	{
	shaking = 0
	}
}