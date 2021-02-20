/// @description Insert description here
// You can write your code in this editor\
global.killed_wakchang = 0

if waiting_revive > 0 && global.hp > 0
{
waiting_revive ++

	if waiting_revive > 120
	{
		if down_attack = 0 && global.vr_weared > 0 && down_to_floor = 0
		{
		x = player.x
		y = -256
		gravity = 0.455
		vspeed = 1
		down_attack = 1
		rage_dilay -= 80
		global.w_alpha = 1
		
		var p_mes_guide_vote = instance_create_depth(x,y,player.depth-1,player_message)
		p_mes_guide_vote.text = "내려찍기가 온닷!!!!"
		p_mes_guide_vote.target = player.id
		p_mes_guide_vote.alarm[2] = 120
		}

		if down_attack = 0 && global.vr_weared <= 0 && down_to_floor = 0
		{
			if place_meeting(player.x,905,obj_floor)
			{
			x = player.x
			}
			else
			{
			x = obj_floor.x
			}
		y = -256
		gravity = 0.455
		vspeed = 1
		down_to_floor = 1
		global.w_alpha = 1
		}
	waiting_revive = 0
	}
}

if sprite_index = move_sprite
{
	if floor(image_index) = 3 || floor(image_index) = 9
	{
		if !audio_is_playing(footstep_sfx)
		{
		var sfx = audio_play_sound(footstep_sfx,0,0)
		audio_sound_gain(sfx,(1 - point_distance(x,y,player.x,player.y)/64)*0.2*global.master_volume*2*global.sfx_volume,0)
		}
	}
}

if rage_mode > 0 && global.dev_mode > 0
{
	if black_alpha < 1
	{
	black_alpha += 0.08
	}
	
	if global.l_q_grap = 0
	{
	rage_eye_effect_n_current ++
		if rage_eye_effect_n_current >= 200
		{
		rage_eye_effect_n_current = 0
		}
	
	if sprite_index = pl_move_mad_gyu_seong_spin_jump
	{
	rage_eye_effect_x[rage_eye_effect_n_current] = x+2*image_xscale
	rage_eye_effect_y[rage_eye_effect_n_current] = y-5
	}
	else
	{
	rage_eye_effect_x[rage_eye_effect_n_current] = x+1*image_xscale
	rage_eye_effect_y[rage_eye_effect_n_current] = y+1
	}
	
	rage_eye_effect_current_alpha[rage_eye_effect_n_current] = 0.95
	rage_eye_effect_width[rage_eye_effect_n_current] = 2.5

		for(var i = 0; i <= 200; i++)
		{
		rage_eye_effect_current_alpha[i] -= 0.07
		rage_eye_effect_width[i] -= 0.085
		}
	}
}
else
{
	if black_alpha > 0
	{
	black_alpha -= 0.08
	}
}

if down_attack > 0
{
rage_mode = 0
hit_stand_up = 0
hit_motion = 0
hit_cooltime = 0
random_attack_chance = 0
attack_ = 0
attack_dilay2 = 0
attack_dilay = 0
cannot_move = 1
movement_speed = 0
gravity_ignore = 0
knocked_down_ef = 0
stemina = 0
	
	if global.p_floor <= y
	{
	obj_camera.tv_x = 1280
	obj_camera.tv_y = 720
	sprite_index = pl_move_gyu_seong_down_attack
	gravity = 0
	vspeed = 0
		if down_attack = 1
		{
		global.w_alpha = 1
		room_speed = 20
		var effect_ = instance_create_depth(x,global.p_floor+27,player.depth+1,down_effect)
		effect_.t_image_xscale = 0.3*20
		effect_.t_image_yscale = 0.05*20
	
		var sfx = audio_play_sound(sword_ready,0,0)
		audio_sound_gain(sfx,0.1*global.master_volume*2*global.sfx_volume,0)
		
		var sfx = audio_play_sound(down_attack_sfx,0,0)
		audio_sound_gain(sfx,0.3*global.master_volume*2*global.sfx_volume,0)
		
		var _cre_ef = instance_create_depth(x,y,depth-1,rage_mode_knockback_for_mob_bomb)
		_cre_ef.image_xscale = 8
		_cre_ef.image_yscale = 1
	
		//var skill_red_ball_effect_rage = instance_create_depth(x,y,depth-1,red_circle_effect)
		//skill_red_ball_effect_rage.image_xscale = 1.5
		//skill_red_ball_effect_rage.image_yscale = 1.5
		//skill_red_ball_effect_rage.t_scale = 1.5
		//skill_red_ball_effect_rage.alarm[11] = 7
		image_index = 1
		view_shake(6,40,6)
		}
	down_attack ++
	
		if down_attack < 10
		{
		view_shake(1,6,1)
		}
		
		if room_speed < 60
		{
		room_speed += 1
		}
		else
		{
		room_speed = 60
		}
		
		if down_attack > 60
		{
		room_speed = 60
		sprite_index = move_sprite
		image_index = 0
		cannot_move = 0
		down_attack = 0
		}
	}
	else
	{
	obj_camera.tv_x = 1280*0.7
	obj_camera.tv_y = 720*0.7
	sprite_index = pl_move_gyu_seong_down_attack_b
	image_index = 0
	}
}

if hit_motion = -1
{
	if down_attack = 0
	{
	sprite_index = hurt_sprite
	}
image_index = 1
attack_ = 0
attack_sound_effect = 0
attack_dilay = 0
random_attack_chance = 0
attack_dilay2 = 0
}
else if hit_motion > 0
{
	if down_attack = 0
	{
	sprite_index = hurt_sprite
	}
image_index = 0
}


if hp > 0 && hit_motion = 0 && hit_cooltime = 0 && place_meeting(x,y+2,obj_floor) && (rage_mode > 0 || cannot_move = 0)
{
	if attack_dilay2 > 0 && attack_pepsi_timer = -4
	{
	attack_dilay2 ++
	}
	
	if attack_ = 0 && random_attack_chance = 1 && attack_dilay2 = 0 && global.t_black_ != 2 && attack_pepsi_timer = -4
	{
	attack_ = 0.01
	alarm[11] = irandom_range(400,500)
	}
	
	if attack_pepsi_timer <= 0 && attack_pepsi_timer != -4
	{
	attack_ = 0.01
	attack_pepsi_timer = -4
	}
	
	if attack_pepsi_timer > 0
	{
	attack_pepsi_timer --
	}
	
	if attack_ = 0 && attack_dilay2 > 0 && random_attack_chance = 1 && attack_pepsi_timer = -4
	{
		if global.playing_scene = 0 && attack_paturn = 0 && instance_number(message_) <= 0
		{
		attack_pepsi_timer = 30
	
		var sfx = audio_play_sound(sound5,0,0)
		audio_sound_gain(sfx,0.13*global.master_volume*2*global.sfx_volume,0)
	
		var p_mes_guide_vote = instance_create_depth(x,y,player.depth-1,player_message)
		p_mes_guide_vote.text = "펩시 콜라나 드셔ㅋㅋ"
		p_mes_guide_vote.target = id
		p_mes_guide_vote.alarm[2] = 120
		}
		else
		{
		attack_ = 0.01
		attack_pepsi_timer = -4
	
		var sfx = audio_play_sound(sound5,0,0)
		audio_sound_gain(sfx,0.13*global.master_volume*2*global.sfx_volume,0)
		}
		
	var __i = choose(-1,1)
	var bl_ef = instance_create_depth(x,y,depth-1,ef_blood)
	var img_scale = -__i*irandom_range(8,15)/5
	bl_ef.image_xscale = img_scale*0.5
	bl_ef.image_yscale = abs(img_scale)*0.5
	bl_ef.t_x = __i
	bl_ef.image_angle = irandom_range(-90,90)
	alarm[11] = irandom_range(400,500)
	}
	


	
	if global.t_black_ != 2
	{
		if point_distance(x,y,player.x,player.y) <= 45
		{
			if attack_dilay = 0 && attack_ = 0
			{
			attack_dilay = 1
			if player.sprite_index = player.move_sprite
			{
			random_attack_chance = choose(1,1,1,1,1,1,0,0)
			}
			else
			{
			random_attack_chance = choose(1,1,0,-1,-1,-1)
			}
			alarm[6] = irandom_range(130,190)
			}
			
	
			if random_attack_chance = -1
			{
			var sg = sign(x - player.x)
			if sg = 0
			{
			sg = choose(-1,1)
			}

			movement_speed += sg*32
			}
		}
		else
		{
			if attack_dilay2 = 0 && attack_ = 0
			{
			random_attack_chance = choose(1,1,0,0)
		
				if random_attack_chance = 0
				{
				attack_dilay2 = -1
				alarm[11] = irandom_range(400,500)
				}
				else
				{
				attack_dilay2 = 1
				}
			}
		}
	}
}


if attack_ > 0 && hp > 0 && ((hit_motion = 0 && hit_cooltime = 0) || (rage_mode > 0 && gravity = 0)) && scene < 9.3
{
cannot_move = 1
if attack_ > 1
{
attack_ += 0.18
}
else
{
attack_ += 0.048
}
image_index = attack_
sprite_index = attack_sprite
	if global.playing_scene = 0
	{
	movement_speed += (0 - movement_speed)*0.08
	}
t_x = x

	if attack_sound_effect = 0 && attack_ > 2.5
	{
	var sfx = audio_play_sound(swing_sfx1,0,0)
	audio_sound_gain(sfx,(1 - point_distance(x,y,player.x,player.y)/64)*0.4*global.master_volume*2*global.sfx_volume,0)
	attack_sound_effect = 1
	
		if attack_dilay2 > 0 || (global.playing_scene > 0 && scene > 6.65 && scene < 8.27)
		{
		var bomb = instance_create_depth(x,y-32,player.depth-1,minecraft_)
		bomb.ignore_gravity = 0
		bomb.hspeed = -image_xscale*10
		bomb.vspeed = -5
		bomb.image_xscale = 0.75
		bomb.image_yscale = 0.75
		bomb.image_index = 3
	
		var bomb = instance_create_depth(x,y-32,player.depth-1,minecraft_)
		bomb.ignore_gravity = 0
		bomb.hspeed = -image_xscale*1.2*10
		bomb.vspeed = -6
		bomb.image_xscale = 0.75
		bomb.image_yscale = 0.75
		bomb.image_index = 3
	
		var bomb = instance_create_depth(x,y-32,player.depth-1,minecraft_)
		bomb.ignore_gravity = 0
		bomb.hspeed = -image_xscale*1.4*10
		bomb.vspeed = -7
		bomb.image_xscale = 0.75
		bomb.image_yscale = 0.75
		bomb.image_index = 3
	
		attack_dilay2 = -1
		random_attack_chance = 0
		alarm[11] = irandom_range(400,500)
		}
	
		if global.playing_scene = 0
		{
		var _ef = instance_create_depth(x,y,depth+1,effect_gyu_seong_attack)
		_ef.image_xscale = image_xscale
		_ef.image_alpha = 0.8
		movement_speed = -image_xscale*5
		}
	}

	if attack_ > 8
	{
	attack_ = 0
	attack_sound_effect = 0
	cannot_move = 0
	attack_dilay = 0
	random_attack_chance = 0
	sprite_index = move_sprite
	}
}




if sprite_index = move_sprite
{
	if hit_cooltime = 0 && cannot_move = 0 && hit_motion = 0 && knocked_down_ef = 0 && global.playing_scene = 0
	{
		if abs(x - t_x) < 0.2
		{
		t_x = player.x
		}
		else
		{
		var __i = sign(t_x - x)

		if __i = 0
		{
		__i = choose(-0.2,0.2)
		}

		image_xscale = -__i
		
		if abs(player.x - x) > 128
		{
		speed_dis += (7 - speed_dis)*0.05
		}
		else
		{
		speed_dis += (6 - speed_dis)*0.04
		}
		
		if abs(player.x - x) >= 128 && abs(player.x - x) <= 130
		{
		var random_val = percentage_k(30)
		
			if random_val = 1
			{
			vspeed = -4
			}
		}

		movement_speed += (__i*speed_dis - movement_speed)*0.05
		movement_speed += __i*0.03
		}
	}
}

	if place_meeting(x+movement_speed*0.7-16*image_xscale,obj_floor.y,obj_floor)
	{
		if !place_meeting(x-image_xscale*16,y-1,obj_floor)
		{
		x += movement_speed*0.7
		}
	}
	else
	{
		movement_speed = 0
		if attack_ = 0
		{
		t_x = player.x
		image_index = 0
		}
	}




if place_meeting(x,obj_floor.y+1,obj_floor) && knocked_down_ef = 0
{
movement_speed += (0 - movement_speed)*0.05
}


if down_attack = 0
{
	if hit_motion > 0
	{
	sprite_index = hurt_sprite
	}
	else
	{
		if hit_motion != -1
		{
			if attack_ = 0
			{
			sprite_index = move_sprite
			}
		}
	}
}

if down_attack = 0
{
	if hit_cooltime = 0 && gravity_ignore = 0
	{
		if place_meeting(x,y+1,obj_floor) || place_meeting(x,y+vspeed,obj_floor)
		{
		gravity = 0
		vspeed = 0
		y = y+vspeed
		down_to_floor = 0
			if hit_stand_up = 1
			{
			hit_stand_up = 0
			alarm[2] = 45
			}
		}
		else
		{
		gravity = 0.2
		}
	}
}

if place_meeting(x,y+1.3,obj_floor)
{
	if hit_motion > 0 && knocked_down_ef = 0
	{
	hit_motion = -1
	alarm[4] = 30
	}
}
else
{
	if !place_meeting(x,y+1.3,obj_floor)
	{
		if hit_motion != 1 && knocked_down_ef = 0
		{
		hit_motion = 1
		alarm[4] = 30
		}
	}
}

if attack_ = 0
{
	if cannot_move > 0 && hit_motion = 0
	{
	image_index = 0
	}
}

repeat(100)
{
	if place_meeting(x,y+0.2,obj_floor)
	{
	y -= 0.1
	gravity = 0
	down_to_floor = 0
		if hit_stand_up = 1
		{
		hit_stand_up = 0
		alarm[2] = 45
		}
	}
	else
	{
	break;
	}
}

if sprite_index = move_sprite
{
image_index += (movement_speed)*0.12
}