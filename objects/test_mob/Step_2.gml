/// @description Insert description here
// You can write your code in this editor
if knocked_down_ef = 0
{
	if hp <= 0
	{
	knocked_down_ef = 1
	}
}

if knocked_down_ef > 0
{
cannot_move = 1
hit_motion = 1
sprite_index = hurt_sprite
movement_speed += (0 - movement_speed)*0.1

	if place_meeting(x,y+1,obj_floor)
	{
	image_index = 1
	knocked_down_ef ++
	}
	
	if knocked_down_ef > 500
	{
	image_alpha -= 0.05
		if image_alpha <= 0
		{
		instance_destroy()
		}
	}
}

if hit_cooltime > 0
{
t_x = x
hit_stand_up = 1
}

if hit_stand_up = 1
{
cannot_move = 1
}


if place_meeting(x,y,effect)
{
	if hit_cooltime = 0
	{
	var sfx = audio_play_sound(choose(global.hit_sfx_1,global.hit_sfx_2,global.hit_sfx_3),0,0)
	audio_sound_gain(sfx,0.2*global.master_volume*2*global.sfx_volume,0)
	
	if global.vr_weared > 0 || global.replay_time > 1
	{
	var sfx = audio_play_sound(sparking_sound,0,0)
	audio_sound_gain(sfx,0.2*global.master_volume*2*global.sfx_volume,0)
	}
	
	t_hp_bar_alpha = 1
	alarm[5] = 90
	
	hp_minus_for_mob(27+global.skill_turning_attack*2)
	
	movement_speed = 0
	var __i = sign(x - player.x)
	if __i = 0
	{
	__i = choose(-1,1)
	}
	

	movement_speed += __i*1.8
	hit_cooltime = 1
	last_hit = 1
	vspeed = -1
	alarm[1] = 10
	cannot_move = 1
	alarm[2] = 24
		if hit_motion = 0
		{
		hit_motion = 1
		}
	}
}

if place_meeting(x,y,effect_jump_attack)
{
	if hit_cooltime = 0
	{
	var sfx = audio_play_sound(choose(global.hit_sfx_1,global.hit_sfx_2,global.hit_sfx_3),0,0)
	audio_sound_gain(sfx,0.2*global.master_volume*2*global.sfx_volume,0)
	
	if global.vr_weared > 0 || global.replay_time > 1
	{
	var sfx = audio_play_sound(sparking_sound,0,0)
	audio_sound_gain(sfx,0.2*global.master_volume*2*global.sfx_volume,0)
	}
	
	t_hp_bar_alpha = 1
	alarm[5] = 90
	view_shake(3,3,3)
	
	hp_minus_for_mob(21+global.skill_jump_attack*2)
	
	movement_speed = 0
	var __i = sign(x - player.x)
	if __i = 0
	{
	__i = choose(-1,1)
	}
	
	

	
	movement_speed += __i*0.4
	hit_cooltime = 1
	last_hit = 1
	vspeed = -4.1
	alarm[1] = 5
	cannot_move = 1
	alarm[2] = 24
	gravity_ignore = 1
	alarm[3] = 9
		if hit_motion = 0
		{
		hit_motion = 1
		}
	}
}


if place_meeting(x,y,effect_down_attack)
{
	if hit_cooltime = 0
	{
	var sfx = audio_play_sound(choose(global.hit_sfx_1,global.hit_sfx_2,global.hit_sfx_3),0,0)
	audio_sound_gain(sfx,0.2*global.master_volume*2*global.sfx_volume,0)
	if global.vr_weared > 0 || global.replay_time > 1
	{
	var sfx = audio_play_sound(sparking_sound,0,0)
	audio_sound_gain(sfx,0.2*global.master_volume*2*global.sfx_volume,0)
	}
	
	t_hp_bar_alpha = 1
	alarm[5] = 90
	
	hp_minus_for_mob(18+global.normal_attack_dmg*0.5)
	
	movement_speed = 0
	var __i = sign(x - player.x)
	if __i = 0
	{
	__i = choose(-1,1)
	}
	
	

	movement_speed += __i*0.9
	hit_cooltime = 1
	last_hit = 1
	gravity = 0.36
	vspeed += 4
	alarm[1] = 3
	cannot_move = 1
	alarm[2] = 24
		if hit_motion = 0
		{
		hit_motion = 1
		}
	}
}





if place_meeting(x,y,effect_attack1)
{
	if hit_cooltime = 0
	{
	var sfx = audio_play_sound(choose(global.hit_sfx_1,global.hit_sfx_2,global.hit_sfx_3),0,0)
	audio_sound_gain(sfx,0.2*global.master_volume*2*global.sfx_volume,0)
	
	if global.vr_weared > 0 || global.replay_time > 1
	{
	var sfx = audio_play_sound(sparking_sound,0,0)
	audio_sound_gain(sfx,0.2*global.master_volume*2*global.sfx_volume,0)
	}
	
	t_hp_bar_alpha = 1
	alarm[5] = 90
	
	hp_minus_for_mob(16+global.normal_attack_dmg*0.6)
	
	movement_speed = 0
	var __i = sign(x - player.x)
	if __i = 0
	{
	__i = choose(-1,1)
	}
	

	
	movement_speed += __i*2
	hit_cooltime = 1
	last_hit = 1
	gravity = 0.36
	vspeed += 4
	alarm[1] = 13
	cannot_move = 1
	alarm[2] = 24
		if hit_motion = 0
		{
		hit_motion = 1
		}
	}
}




if place_meeting(x,y,effect_attack2)
{
	if hit_cooltime = 0
	{
	var sfx = audio_play_sound(choose(global.hit_sfx_1,global.hit_sfx_2,global.hit_sfx_3),0,0)
	audio_sound_gain(sfx,0.2*global.master_volume*2*global.sfx_volume,0)
	
	if global.vr_weared > 0 || global.replay_time > 1
	{
	var sfx = audio_play_sound(sparking_sound,0,0)
	audio_sound_gain(sfx,0.2*global.master_volume*2*global.sfx_volume,0)
	}
	
	t_hp_bar_alpha = 1
	view_shake(7,13.5,4)
	alarm[5] = 90
	
	hp_minus_for_mob(19+global.normal_attack_dmg*0.6)
	
	movement_speed = 0
	var __i = sign(x - player.x)
	if __i = 0
	{
	__i = choose(-1,1)
	}
	

	movement_speed += __i*2
	hit_cooltime = 1
	last_hit = 1
	gravity = 0.2
	vspeed -= 1.5
	alarm[1] = 10
	cannot_move = 1
	alarm[2] = 24
		if hit_motion = 0
		{
		hit_motion = 1
		}
	}
}





if place_meeting(x,y,effect_attack3)
{
	if hit_cooltime = 0
	{
	var sfx = audio_play_sound(choose(global.hit_sfx_1,global.hit_sfx_2,global.hit_sfx_3),0,0)
	audio_sound_gain(sfx,0.2*global.master_volume*2*global.sfx_volume,0)
	
	if global.vr_weared > 0 || global.replay_time > 1
	{
	var sfx = audio_play_sound(sparking_sound,0,0)
	audio_sound_gain(sfx,0.2*global.master_volume*2*global.sfx_volume,0)
	}
	
	t_hp_bar_alpha = 1
	alarm[5] = 90
	
	view_shake(7,60,4)
	
	hp_minus_for_mob(26+global.normal_attack_dmg*0.6)
	
	movement_speed = 0
	var __i = sign(x - player.x)
	if __i = 0
	{
	__i = choose(-1,1)
	}
	
	

	movement_speed += __i*2.5
	hit_cooltime = 1
	last_hit = 1
	gravity = 0.2
	vspeed -= 3.5
	alarm[1] = 10
	cannot_move = 1
	alarm[2] = 18
		if hit_motion = 0
		{
		hit_motion = 1
		}
	}
}




if place_meeting(x,y,ef_blood_dash_attack)
{
	if hit_cooltime = 0
	{
	var sfx = audio_play_sound(choose(global.hit_sfx_1,global.hit_sfx_2,global.hit_sfx_3),0,0)
	audio_sound_gain(sfx,0.2*global.master_volume*2*global.sfx_volume,0)
	
	if global.vr_weared > 0 || global.replay_time > 1
	{
	var sfx = audio_play_sound(sparking_sound,0,0)
	audio_sound_gain(sfx,0.2*global.master_volume*2*global.sfx_volume,0)
	}
	
	t_hp_bar_alpha = 1
	alarm[5] = 90
	
	view_shake(7,12,4)
	
	hp_minus_for_mob(92+global.normal_attack_dmg*13)
	
	movement_speed = 0
	var __i = sign(x - player.x)
	if __i = 0
	{
	__i = choose(-1,1)
	}
	
	

	movement_speed += __i*2.5
	hit_cooltime = 1
	last_hit = 1
	gravity = 0.2
	vspeed -= 0.5
	alarm[1] = 20
	cannot_move = 1
	alarm[2] = 48
		if hit_motion = 0
		{
		hit_motion = 1
		}
	}
}