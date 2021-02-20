/// @description Insert description here
// You can write your code in this editor

if alpha >= 0 && a = 0
{
a = 1

	if global.voice_option = 0 && global.wakrio_played = 0
	{
	global.wakrio_played = 1
	var sfx = audio_play_sound(help_me_plz,0,0)
	audio_sound_gain(sfx,0.9*global.master_volume*2*global.sfx_volume,0)
	a = 2
	}
}

alpha += (t_alpha - alpha)*0.034

if t_alpha > 0
{
	if alpha > 1
	{
	t_alpha = -0.01
	}
}
else
{
	if alpha < 0
	{
	scene ++
	t_alpha = 1.01
	}
}

if a = 1 && global.wakrio_played = 1
{
t_alpha = -0.01
scale = 2.8
obj_camera.tv_x = 1280*0.7
obj_camera.tv_y = 720*0.7

	if global.t_in_building != -0.01
	{
	obj_camera.v_x = 1280*0.7
	obj_camera.v_y = 720*0.7
	global.t_in_building = -0.01
	}
}

if global.revive_with_rage = 0 && !audio_is_playing(wak_rio) && player.slow_motion = 0
{
obj_camera.x = 1523
obj_camera.y = 903
obj_camera.t_x = 1523
obj_camera.t_y = 903
}



if scene >= 2 && global.revive_with_rage = 0
{
scale += 0.00001
obj_camera.v_x = 1280*0.55*scale
obj_camera.v_y = 720*0.55*scale
global.t_in_building = -0.01
}

if scene >= 3
{
	if global.revive_with_rage = 0
	{
	player.gravity = 4
	player.vspeed = 32
	player.movement_speed = 0
	global.movement_speed = 0
	global.hp = 2
	global.terror_zero = 0
	player.x = 1523
	player.y = -128
	player.hurt = 0
	player.a_sound = 1
	player.dead = 0
	player.cannot_move = 0
	code.revive_c = 1
	player.w_alpha = 2
	player.entering_daepiso = 0
	global.total_died ++
	global.revive_with_rage = 1
	
	player.down_attack_with_rage = 1
	player.cooltime = 1
	player.cannot_move = 1
	player.jump = 0
	player.jump_end_motion = 0
	player.b_movement_speed = 0
	player.jump_vsp_up = 1
	player.cooltime = 1
	player.w_alpha = 1
	global.revived_once = 1
	
	var __i = choose(-1,1)
	var bl_ef = instance_create_depth(player.x,player.y,player.depth-1,ef_blood)
	var img_scale = -__i*irandom_range(8,15)/5
	bl_ef.image_xscale = img_scale*0.5
	bl_ef.image_yscale = abs(img_scale)*0.5
	bl_ef.t_x = __i
	bl_ef.image_angle = irandom_range(-90,90)
	
	
		if global.vr_weared > 0 || global.replay_time > 1
		{
		var sfx = audio_play_sound(swing_lightsaber_sfx1,0,0)
		audio_sound_gain(sfx,0.1*global.master_volume*2*global.sfx_volume,0)
		}
	
	var sfx = audio_play_sound(sound5,0,0)
	audio_sound_gain(sfx,0.13*global.master_volume*2*global.sfx_volume,0)
	}
}



if !audio_is_playing(wak_rio) && global.revive_with_rage = 1 && scene >= 5 && player.slow_motion >= 2
{
global.revive_with_rage = 0
instance_destroy()
}