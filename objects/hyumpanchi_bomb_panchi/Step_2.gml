/// @description Insert description here
// You can write your code in this editor

if knocked_down_ef = 0
{
	if hp <= 0
	{
	knocked_down_ef = 1
	var random_val = choose(0,0,1)
	
	if audio_is_playing(ung_won) || audio_is_playing(sibalruna) || audio_is_playing(ya_sibal)
	{
	random_val = 0
	}
	
		if random_val = 1
		{
			if global.voice_option = 0
			{
			var sfx = audio_play_sound(choose(shut_up,ung_won,ung_won,go_out_die,jukaburyrum),0,0)
			audio_sound_gain(sfx,0.2*global.master_volume*2*global.sfx_volume,0)
			}
		}
		
			if global.killed_wakchang = 0 && global.wave > 1
			{
			var random_done = choose(1,1,0)
				if random_done = 1
				{
					if (global.nickname != "하드코어" && global.nickname != "하이퍼코어" && global.nickname != "썩은물")
					{
					var _done = instance_create_depth(-100,-100,-100,donation)
					_done.donated_cost = choose(1000,1100,1000,1000,1000,1000,1100,1200,1300,1400,1500)
					}
				}
		}
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
	}
	
	
	if knocked_down_ef < 3
	{
	grabed = 1
	bomb_on ++
	knocked_down_ef = 999
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
	var _attacker_ef = instance_place(x,y,effect)
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
	
	bloody(_attacker_ef)
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
	var _attacker_ef = instance_place(x,y,effect_jump_attack)
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
	

	bloody(_attacker_ef)
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
	var _attacker_ef = instance_place(x,y,effect_down_attack)
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
	
	bloody(_attacker_ef)
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
	var _attacker_ef = instance_place(x,y,effect_attack1)
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
	
	
	bloody(_attacker_ef)
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
	var _attacker_ef = instance_place(x,y,effect_attack2)
	var sfx = audio_play_sound(choose(global.hit_sfx_1,global.hit_sfx_2,global.hit_sfx_3),0,0)
	audio_sound_gain(sfx,0.2*global.master_volume*2*global.sfx_volume,0)
	
	if global.vr_weared > 0 || global.replay_time > 1
	{
	var sfx = audio_play_sound(sparking_sound,0,0)
	audio_sound_gain(sfx,0.2*global.master_volume*2*global.sfx_volume,0)
	}
	
	t_hp_bar_alpha = 1
	alarm[5] = 90
	view_shake(7,13.5,4)
	
	hp_minus_for_mob(19+global.normal_attack_dmg*0.6)
	
	movement_speed = 0
	var __i = sign(x - player.x)
	if __i = 0
	{
	__i = choose(-1,1)
	}
	

	bloody(_attacker_ef)
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
	var _attacker_ef = instance_place(x,y,effect_attack3)
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
	
	bloody(_attacker_ef)
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



if place_meeting(x,y,effect_attack_s)
{
	if hit_cooltime = 0
	{
	var _attacker_ef = instance_place(x,y,effect_attack_s)
	var sfx = audio_play_sound(choose(global.hit_sfx_1,global.hit_sfx_2,global.hit_sfx_3),0,0)
	audio_sound_gain(sfx,0.2*global.master_volume*2*global.sfx_volume,0)
	
	if global.vr_weared > 0 || global.replay_time > 1
	{
	var sfx = audio_play_sound(sparking_sound,0,0)
	audio_sound_gain(sfx,0.2*global.master_volume*2*global.sfx_volume,0)
	}
	
	t_hp_bar_alpha = 1
	alarm[5] = 90
	
	var skill_red_ball_effect_rage = instance_create_depth(x,y,depth-1,red_circle_effect)
	skill_red_ball_effect_rage.image_xscale = 0.45
	skill_red_ball_effect_rage.image_yscale = 0.45
	skill_red_ball_effect_rage.t_scale = 0.65
	skill_red_ball_effect_rage.alarm[11] = 7
	
	view_shake(7,12,4)
	
	hp_minus_for_mob(32+global.normal_attack_dmg*6)
	
	movement_speed = 0
	var __i = sign(x - player.x)
	if __i = 0
	{
	__i = choose(-1,1)
	}
	
	
	bloody(_attacker_ef)
	movement_speed += __i*2.5
	hit_cooltime = 1
	last_hit = 1
	gravity = 0.2
	vspeed -= 3.8
	alarm[1] = 20
	cannot_move = 1
	alarm[2] = 48
		if hit_motion = 0
		{
		hit_motion = 1
		}
	}
}





if place_meeting(x,y,rage_mode_knockback) || place_meeting(x,y,down_effect)
{
	if hit_cooltime = 0
	{
	alarm[5] = 90
	
	hp_minus_for_mob(0)
	
	movement_speed = 0
	hit_cooltime = 1
	last_hit = 1
	gravity = 0.2
	vspeed -= 3.8
	alarm[1] = 16
	cannot_move = 1
	alarm[2] = 16
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
	var _attacker_ef = instance_place(x,y,ef_blood_dash_attack)
	var sfx = audio_play_sound(choose(global.hit_sfx_1,global.hit_sfx_2,global.hit_sfx_3),0,0)
	audio_sound_gain(sfx,0.2*global.master_volume*2*global.sfx_volume,0)
	
	if global.vr_weared > 0 || global.replay_time > 1
	{
	var sfx = audio_play_sound(sparking_sound,0,0)
	audio_sound_gain(sfx,0.2*global.master_volume*2*global.sfx_volume,0)
	}
	
	t_hp_bar_alpha = 1
	alarm[5] = 90

	
	bloody(_attacker_ef)
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


if place_meeting(x,y,charging_attack)
{
	if hit_cooltime = 0
	{
	var _attacker_ef = instance_place(x,y,charging_attack)
	var sfx = audio_play_sound(choose(global.hit_sfx_1,global.hit_sfx_2,global.hit_sfx_3),0,0)
	audio_sound_gain(sfx,0.2*global.master_volume*2*global.sfx_volume,0)

	t_hp_bar_alpha = 1
	alarm[5] = 90
	
	
	bloody(_attacker_ef)
	view_shake(1,4,2)
	hp_minus_for_mob(62+global.normal_attack_dmg*2)

	
	movement_speed = 0
	var __i = sign(x - player.x)
	if __i = 0
	{
	__i = choose(-1,1)
	}
	
	
	gravity = 0.2
	y --
	vspeed -= 4
	movement_speed = -player.image_xscale*13
	hit_cooltime = 1
	last_hit = 1
	alarm[1] = 25
	cannot_move = 1
	alarm[2] = 25
		if hit_motion = 0
		{
		hit_motion = 1
		}
	}
}



if place_meeting(x,y,effect_special_skill)
{
	if hit_cooltime = 0
	{
	var _attacker_ef = instance_place(x,y,effect_special_skill)
	var sfx = audio_play_sound(choose(global.hit_sfx_1,global.hit_sfx_2,global.hit_sfx_3),0,0)
	audio_sound_gain(sfx,0.2*global.master_volume*2*global.sfx_volume,0)
	
	if global.vr_weared > 0 || global.replay_time > 1
	{
	var sfx = audio_play_sound(sparking_sound,0,0)
	audio_sound_gain(sfx,0.2*global.master_volume*2*global.sfx_volume,0)
	}
	
	t_hp_bar_alpha = 1
	alarm[5] = 90
	
	var skill_red_ball_effect_rage = instance_create_depth(x,y,depth-1,red_circle_effect)
	skill_red_ball_effect_rage.image_xscale = 0.45
	skill_red_ball_effect_rage.image_yscale = 0.45
	skill_red_ball_effect_rage.t_scale = 0.65
	skill_red_ball_effect_rage.alarm[11] = 7
	
	
	bloody(_attacker_ef)
	view_shake(1,4,2)
	hp_minus_for_mob(7+global.normal_attack_dmg*2)
	
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
	vspeed -= 1
	alarm[1] = 3
	cannot_move = 1
	alarm[2] = 3
		if hit_motion = 0
		{
		hit_motion = 1
		}
	}
}
