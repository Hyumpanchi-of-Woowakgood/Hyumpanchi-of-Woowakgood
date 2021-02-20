/// @description Insert description here
// You can write your code in this editor

if attack_paturn = 0
{
	if x < 704
	{
	movement_speed += 15
	vspeed = -6
	}

	if x > 2464
	{
	movement_speed -= 15
	vspeed = -6
	}
}


if global.gyu_seong_wave = 5
{
	if attack_paturn = 0
	{
	mac = 0
		if before_paturn != 3
		{
		stemina += 1
		obj_camera.tv_x = 1280*0.8
		obj_camera.tv_y = 720*0.8
		}
		else
		{
			if instance_number(mob_parents) = 4
			{
			stemina = 601
			obj_camera.tv_x = 1280*0.8
			obj_camera.tv_y = 720*0.8
			}
			else
			{
			stemina = 0
			obj_camera.tv_x = 1280*1.1
			obj_camera.tv_y = 720*1.1
			}
		}

		if stemina > 600
		{
			if cannot_move = 1
			{
			var sg = sign(x - player.x)
				if sg = 0
				{
				sg = choose(-1,1)
				}
			movement_speed += sg*32
			stemina = 0
			cannot_move = 0
			vspeed = -4.1
			}

			var _random_p = choose(1,2,1,2,3,3,3,3,4,4)
			repeat(9999)
			{
				if _random_p = before_paturn
				{
				var _random_p = choose(1,2,1,2,3,3,4,5,4,4)
				}
				else
				{
				attack_paturn = _random_p
				before_paturn = _random_p
				break;
				}
			}
		}
	}

	if attack_paturn = 1
	{
	gravity_ignore = 1
	gravity = 0
	vspeed = 0
	cannot_move = 0
	sprite_index = move_sprite
	image_xscale = -1
		if point_distance(x,y,2664,600) > 2
		{
		x += (2664 - x)*0.03
		y += (600 - y)*0.03
		}
		else
		{
		attack_paturn = 1.01
		var sfx = audio_play_sound(laser_ready_sfx,0,0)
		audio_sound_gain(sfx,0.3*global.master_volume*2*global.sfx_volume,0)
		obj_camera.tv_x = 1280*1.1
		obj_camera.tv_y = 720*1.1
		}
	movement_speed = 0
	}
	
	if attack_paturn >= 1.01 && attack_paturn < 1.1
	{
	attack_paturn += 0.01
	}

	if attack_paturn = 1.1
	{
	gravity_ignore = 1
	gravity = 0
	vspeed = 0
	cannot_move = 0
	sprite_index = move_sprite
	image_xscale = 1
		if laser = -1
		{
		global.w_alpha = 1
		laser = instance_create_depth(x,y+16,depth-2,block_laser)
		laser.width_ = 16
		laser.x2 = x
		laser.y2 = y
		laser.direction = -90
		var sfx = audio_play_sound(laser_start_sfx,0,0)
		audio_sound_gain(sfx,0.3*global.master_volume*2*global.sfx_volume,0)
		}
		else
		{
		laser.x = x
		laser.y = y+16
		}
	
	movement_speed = -4
	x += movement_speed*0.7
		if x < 604
		{
		attack_paturn = 0
		instance_destroy(laser)
		laser = -1
		gravity_ignore = 0
		movement_speed = 0
		gravity = 0.2
		stemina = 0
		var sfx = audio_play_sound(laser_end_sfx,0,0)
		audio_sound_gain(sfx,0.3*global.master_volume*2*global.sfx_volume,0)
		}
	}

	if attack_paturn = 2
	{
	gravity_ignore = 1
	gravity = 0
	vspeed = 0
	cannot_move = 0
	sprite_index = move_sprite
	image_xscale = 1
		if point_distance(x,y,604,600) > 2
		{
		x += (604 - x)*0.03
		y += (600 - y)*0.03
		}
		else
		{
		attack_paturn = 2.01
		var sfx = audio_play_sound(laser_ready_sfx,0,0)
		audio_sound_gain(sfx,0.3*global.master_volume*2*global.sfx_volume,0)
		obj_camera.tv_x = 1280*1.1
		obj_camera.tv_y = 720*1.1
		}
	movement_speed = 0
	}
	
	if attack_paturn >= 2.01 && attack_paturn < 2.1
	{
	attack_paturn += 0.01
	}

	if attack_paturn = 2.1
	{
	gravity_ignore = 1
	gravity = 0
	vspeed = 0
	cannot_move = 0
	sprite_index = move_sprite
	image_xscale = -1
		if laser = -1
		{
		global.w_alpha = 1
		laser = instance_create_depth(x,y+16,depth-2,block_laser)
		laser.width_ = 16
		laser.x2 = x
		laser.y2 = y
		laser.direction = -90
		var sfx = audio_play_sound(laser_start_sfx,0,0)
		audio_sound_gain(sfx,0.3*global.master_volume*2*global.sfx_volume,0)
		}
		else
		{
		laser.x = x
		laser.y = y+16
		}
	
	movement_speed = 4
	x += movement_speed*0.7
		if x > 2664
		{
		attack_paturn = 0
		instance_destroy(laser)
		laser = -1
		gravity_ignore = 0
		movement_speed = 0
		gravity = 0.2
		stemina = 0
		var sfx = audio_play_sound(laser_end_sfx,0,0)
		audio_sound_gain(sfx,0.3*global.master_volume*2*global.sfx_volume,0)
		}
	}
	
	
	
	
	if attack_paturn = 3
	{
	gravity_ignore = 1
	gravity = 0
	vspeed = 0
	cannot_move = 1
	sprite_index = move_sprite
	image_xscale = 1
	attack_paturn = 3.01
	var sfx = audio_play_sound(laser_ready_sfx,0,0)
	audio_sound_gain(sfx,0.3*global.master_volume*2*global.sfx_volume,0)
		
	var sfx = audio_play_sound(aaang_,0,0)
	audio_sound_gain(sfx,0.2*global.master_volume*2*global.sfx_volume,0)
	audio_sound_pitch(sfx,0.85)
	obj_camera.tv_x = 1280*1
	obj_camera.tv_y = 720*1
	movement_speed = 0
	}
	
	if attack_paturn >= 3.01 && attack_paturn <= 3.1
	{
	attack_paturn += 0.0025
	}

	if attack_paturn >= 3.1
	{
	gravity = 0
	vspeed = 0
	cannot_move = 0
	sprite_index = move_sprite
	image_xscale = -1
	
		if laser = -1
		{
		t_spin_laser_angle = choose(-1,1)
		laser = instance_create_depth(x,y-6,depth-2,block_laser)
		laser.width_ = 16
		laser.x2 = x
		laser.y2 = y
		laser.direction = 0
		var sfx = audio_play_sound(laser_start_sfx,0,0)
		audio_sound_gain(sfx,0.3*global.master_volume*2*global.sfx_volume,0)
		}
		else
		{
			if laser != -2
			{
			laser.direction = spin_laser_angle-90
			laser.x = x
			laser.y = y-6
			}
		}
		
		spin_laser_angle += (t_spin_laser_angle*90.008 - spin_laser_angle)*0.08
		
		if abs(spin_laser_angle*t_spin_laser_angle - spin_laser_angle*90) < 0.1 && laser != -2
		{
		instance_destroy(laser)
		laser = -2
		}
		
		
		
		
		if (t_spin_laser_angle < 0 && spin_laser_angle <= -90) || (t_spin_laser_angle > 0 && spin_laser_angle >= 90)
		{
		var sfx = audio_play_sound(laser_end_sfx,0,0)
		audio_sound_gain(sfx,0.3*global.master_volume*2*global.sfx_volume,0)
		attack_paturn = 0
		laser = -1
		gravity_ignore = 0
		movement_speed = 0
		gravity = 0.2
		stemina = 0
		cannot_move = 0
		}
	}
	
	
	
	if attack_paturn = 4
	{
	gravity = 0
	vspeed = 0
	cannot_move = 1
	sprite_index = move_sprite
	image_xscale = -1
	attack_paturn = 4.01
	var sfx = audio_play_sound(laser_ready_sfx,0,0)
	audio_sound_gain(sfx,0.3*global.master_volume*2*global.sfx_volume,0)
	obj_camera.tv_x = 1280*1.1
	obj_camera.tv_y = 720*1.1
	
	var sfx = audio_play_sound(aaang_,0,0)
	audio_sound_gain(sfx,0.2*global.master_volume*2*global.sfx_volume,0)
	audio_sound_pitch(sfx,0.9)
	mac ++
	movement_speed = 0
	}
	
	
	if attack_paturn > 4 && attack_paturn < 5
	{
	mine_craft_cre++
	if mine_craft_cre > 30
	{
	var bomb = instance_create_depth(x,y-32,player.depth-1,minecraft_)
	bomb.hspeed = -image_xscale*abs(player.x-x)/8
	bomb.vspeed = -abs(player.y-y)/8
	bomb.image_xscale = 0.5
	bomb.image_yscale = 0.5
	bomb.ignore_gravity = 0
	mine_craft_cre = 0
	attack_paturn += 0.1
	}
	
		if attack_paturn > 4.3
		{
			if mac < 2
			{
			attack_paturn = choose(4,0,0)
			}
			else
			{
			attack_paturn = 0
			}
		gravity_ignore = 0
		movement_speed = 0
		mine_craft_cre = 0
		gravity = 0.2
		stemina = 0
		cannot_move = 0
		var sfx = audio_play_sound(laser_ready_sfx,0,0)
		audio_sound_gain(sfx,0.3*global.master_volume*2*global.sfx_volume,0)
		obj_camera.tv_x = 1280*1.2
		obj_camera.tv_y = 720*1.2
		}
	}
}














if knocked_down_ef = 0
{
	if hp <= 0
	{
	knocked_down_ef = 1
	}
}

if y > room_width
{
hp = -1
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
	else
	{
	knocked_down_ef = 1
	}
	
	if knocked_down_ef > 100 && scene > 4
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
	t_hp_bar_alpha = 1
	alarm[5] = 90
	
	hp_minus_for_mob(27+global.skill_turning_attack*2)
	
	movement_speed = 0
	var __i = sign(x - player.x)
	if __i = 0
	{
	__i = choose(-1,1)
	}
	
	var random_val = choose(0,0,1)
	
	if random_val = 1
	{
	var bl_ef = instance_create_depth(x,y,depth-1,ef_blood)
	var img_scale = -__i*irandom_range(8,15)/5
	bl_ef.image_xscale = img_scale
	bl_ef.image_yscale = abs(img_scale)
	bl_ef.t_x = __i
	bl_ef.image_angle = irandom_range(-90,90)
	global.w_alpha = 1
	}

	hit_cooltime = 1
	last_hit = 1
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
	t_hp_bar_alpha = 1
	alarm[5] = 90
	
	hp_minus_for_mob(21+global.skill_jump_attack*2)
	
	movement_speed = 0
	var __i = sign(x - player.x)
	if __i = 0
	{
	__i = choose(-1,1)
	}
	
	
	var random_val = choose(0,0,1)
	
	if random_val = 1
	{
	var bl_ef = instance_create_depth(x,y,depth-1,ef_blood)
	var img_scale = -__i*irandom_range(8,15)/5
	bl_ef.image_xscale = img_scale
	bl_ef.image_yscale = abs(img_scale)
	bl_ef.t_x = __i
	}

	hit_cooltime = 1
	last_hit = 1
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
	t_hp_bar_alpha = 1
	alarm[5] = 90
	
	hp_minus_for_mob(18+global.normal_attack_dmg*0.5)
	
	movement_speed = 0
	var __i = sign(x - player.x)
	if __i = 0
	{
	__i = choose(-1,1)
	}
	
	
	var random_val = choose(0,0,1)
	
	if random_val = 1
	{
	var bl_ef = instance_create_depth(x,y,depth-1,ef_blood)
	var img_scale = -__i*irandom_range(8,15)/5
	bl_ef.image_xscale = img_scale
	bl_ef.image_yscale = abs(img_scale)
	bl_ef.t_x = __i
	}

	hit_cooltime = 1
	last_hit = 1
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
	t_hp_bar_alpha = 1
	alarm[5] = 90
	
	hp_minus_for_mob(16)
	
	movement_speed = 0
	var __i = sign(x - player.x)
	if __i = 0
	{
	__i = choose(-1,1)
	}
	
	
	var random_val = choose(0,0,1)
	
	if random_val = 1
	{
	var bl_ef = instance_create_depth(x,y,depth-1,ef_blood)
	var img_scale = -__i*irandom_range(8,15)/5
	bl_ef.image_xscale = img_scale
	bl_ef.image_yscale = abs(img_scale)
	bl_ef.t_x = __i
	}

	hit_cooltime = 1
	last_hit = 1
	alarm[1] = 23
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
	t_hp_bar_alpha = 1
	alarm[5] = 90
	
	hp_minus_for_mob(19)
	
	movement_speed = 0
	var __i = sign(x - player.x)
	if __i = 0
	{
	__i = choose(-1,1)
	}
	
	
	var random_val = choose(0,0,1)
	
	if random_val = 1
	{
	var bl_ef = instance_create_depth(x,y,depth-1,ef_blood)
	var img_scale = -__i*irandom_range(8,15)/5
	bl_ef.image_xscale = img_scale
	bl_ef.image_yscale = abs(img_scale)
	bl_ef.t_x = __i
	}

	hit_cooltime = 1
	last_hit = 1
	alarm[1] = 25
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
	t_hp_bar_alpha = 1
	alarm[5] = 90
	
	view_shake(7,60,4)
	
	hp_minus_for_mob(21)
	
	movement_speed = 0
	var __i = sign(x - player.x)
	if __i = 0
	{
	__i = choose(-1,1)
	}
	
	
	var random_val = choose(0,0,1)
	
	if random_val = 1
	{
	var bl_ef = instance_create_depth(x,y,depth-1,ef_blood)
	var img_scale = -__i*irandom_range(8,15)/5
	bl_ef.image_xscale = img_scale
	bl_ef.image_yscale = abs(img_scale)
	bl_ef.t_x = __i
	}

	hit_cooltime = 1
	last_hit = 1
	alarm[1] = 18
	cannot_move = 1
	alarm[2] = 18
		if hit_motion = 0
		{
		hit_motion = 1
		}
	}
}