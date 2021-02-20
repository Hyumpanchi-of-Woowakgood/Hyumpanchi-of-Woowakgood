/// @description Insert description here
// You can write your code in this editor
armored_level = 5.5

if guarding > 0
{
cannot_move = 1
	if move_sprite = pl_move_gyu_seong
	{
	sprite_index = pl_move_gyu_seong_guard
	}
	else
	{
	sprite_index = pl_move_gyu_seong_guard_mad
	}
	
	if guarding > 0
	{
	guarding -= 0.05
	}
	
	if guarding > 1
	{
	guarding -= 0.1
	}
	
	if guarding <= 0 && guarding != -1
	{
	sprite_index = move_sprite
	cooltime = 0
	cannot_move = 0
	guarding = -1
	}
}

if instance_number(hyumpanchi_bomb_panchi) > 0
{
auto_guarding = 1
}
else
{
auto_guarding = 0
}


if attack_paturn != 0
{
time__a ++
	if time__a > 3600
	{
	attack_paturn = 0
	time__a = 0
	}
}

if attack_paturn = 0
{
	if x < 704
	{
	movement_speed += 25
	vspeed = -6
	}

	if x > 2464
	{
	movement_speed -= 25
	vspeed = -6
	}
}


if global.gyu_seong_wave = 1
{
	if attack_paturn = 0
	{
		if laser != -1
		{
		instance_destroy(laser)
		laser = -1
		}
		
	mac = 0
		if before_paturn != 3
		{
			if down_attack = 0
			{
				if instance_number(revive_with_rage_scene) = 0 && global.playing_scene = 0
				{
						if rage_mode > 0
						{
						stemina += 0.1
						}
			
						if hp < 300
						{
						stemina += 0.2
						}
			
						if hp < 200
						{
						stemina += 0.25
						}
			
						if hp < 100
						{
						stemina += 0.3
						}
			
				stemina += 1.15
				}
			obj_camera.tv_x = 1280*0.8
			obj_camera.tv_y = 720*0.8
			}
		}
		else
		{
		instance_destroy(minecraft_)
			if instance_number(mob_parents) = 4
			{
			stemina = 601
			obj_camera.tv_x = 1280*0.8
			obj_camera.tv_y = 720*0.8
			}
			else
			{
			stemina = 0
			obj_camera.tv_x = 1280
			obj_camera.tv_y = 720
			}
		}

		if stemina > 550 && global.playing_scene = 0
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
			
			var _random_p = choose(1,2,3,4,5,9,10,11,1,2,4,5,11,11)
			if global.vr_weared = 1
			{
			var _random_p = choose(1,2,3,4,5,7,10,11,12,1,4,5,7,11,12,11,12,14,14)
			}
			
			repeat(9999)
			{
				if _random_p = before_paturn
				{
				var _random_p = choose(1,2,3,4,5,9,10,11,1,2,4,5,11,11)
					if global.vr_weared = 1
					{
					var _random_p = choose(3,4,5,7,10,11,12,1,2,4,5,7,11,12,11,12,14,14)
					}
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
		obj_camera.tv_x = 1280*1.2
		obj_camera.tv_y = 720*1.2
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
		instance_destroy(minecraft_)
		laser = instance_create_depth(x,y+16,depth-2,block_laser)
		laser.width_ = 16
		laser.x2 = x
		laser.y2 = y
		laser.direction = -90
		laser.damage_able = 1
		laser.color_ = $FF5B14EE
		var sfx = audio_play_sound(laser_start_sfx,0,0)
		audio_sound_gain(sfx,0.3*global.master_volume*2*global.sfx_volume,0)
		
		var sfx = audio_play_sound(laser_keep_sfx,0,0)
		audio_sound_gain(sfx,0.3*global.master_volume*2*global.sfx_volume,0)
		}
		else
		{
		laser.x = x
		laser.y = y+16
		instance_destroy(minecraft_)
		}
	
	movement_speed = -7
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
		obj_camera.tv_x = 1280*1.2
		obj_camera.tv_y = 720*1.2
		}
	movement_speed = 0
	stemina = 0
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
		instance_destroy(minecraft_)
		laser = instance_create_depth(x,y+16,depth-2,block_laser)
		laser.width_ = 16
		laser.x2 = x
		laser.y2 = y
		laser.direction = -90
		laser.damage_able = 1
		laser.color_ = $FF5B14EE
		var sfx = audio_play_sound(laser_start_sfx,0,0)
		audio_sound_gain(sfx,0.3*global.master_volume*2*global.sfx_volume,0)
		
		var sfx = audio_play_sound(laser_keep_sfx,0,0)
		audio_sound_gain(sfx,0.3*global.master_volume*2*global.sfx_volume,0)
		}
		else
		{
		laser.x = x
		laser.y = y+16
		instance_destroy(minecraft_)
		}
	
	movement_speed = 7
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
		for(var i = 0; i < choose(2,2,3,3,3,3,4); i++)
		{
		instance_create_depth(irandom_range(704,2464),0,player.depth+choose(-1,1),hyumpanchi_bomb_panchi)
		}
	attack_paturn = 0
	stemina = 0
	}
	
	
	if attack_paturn = 4
	{
	gravity_ignore = 1
	gravity = 0
	vspeed = 0
	cannot_move = 0
	sprite_index = move_sprite
	image_xscale = -1
		if point_distance(x,y,2664,500) > 2
		{
		x += (2664 - x)*0.03
		y += (500 - y)*0.03
		}
		else
		{
		attack_paturn = 4.01
		var sfx = audio_play_sound(laser_ready_sfx,0,0)
		audio_sound_gain(sfx,0.3*global.master_volume*2*global.sfx_volume,0)
		obj_camera.tv_x = 1280*1.2
		obj_camera.tv_y = 720*1.2
		mac ++
		}
	movement_speed = 0
	stemina = 0
	}
	
	
	if attack_paturn > 4 && attack_paturn < 5
	{
	movement_speed = -25
	x += movement_speed*0.7
	
	mine_craft_cre++
	if mine_craft_cre > 2
	{
	var bomb = instance_create_depth(x,y-32,player.depth-1,minecraft_)
	bomb.ignore_gravity = 0
	mine_craft_cre = 0
	}
	
		if x < 604
		{
			if mac < 2
			{
			attack_paturn = choose(5,0,0)
			stemina = 0
			}
			else
			{
			attack_paturn = 0
			stemina = 0
			}
		gravity_ignore = 0
		movement_speed = 0
		mine_craft_cre = 0
		gravity = 0.2
		stemina = 0
		var sfx = audio_play_sound(laser_ready_sfx,0,0)
		audio_sound_gain(sfx,0.3*global.master_volume*2*global.sfx_volume,0)
		obj_camera.tv_x = 1280*1.2
		obj_camera.tv_y = 720*1.2
		}
	}
	
	
	
	
	
	if attack_paturn = 5
	{
	gravity_ignore = 1
	gravity = 0
	vspeed = 0
	cannot_move = 0
	sprite_index = move_sprite
	image_xscale = -1
		if point_distance(x,y,604,500) > 2
		{
		x += (604 - x)*0.03
		y += (500 - y)*0.03
		}
		else
		{
		attack_paturn = 5.01
		var sfx = audio_play_sound(laser_ready_sfx,0,0)
		audio_sound_gain(sfx,0.3*global.master_volume*2*global.sfx_volume,0)
		obj_camera.tv_x = 1280*1.2
		obj_camera.tv_y = 720*1.2
		mac ++
		}
	movement_speed = 0
	}
	
	
	if attack_paturn > 5 && attack_paturn < 6
	{
	movement_speed = 25
	x += movement_speed*0.7
	
	mine_craft_cre++
	if mine_craft_cre > 2
	{
	var bomb = instance_create_depth(x,y-32,player.depth-1,minecraft_)
	bomb.ignore_gravity = 0
	mine_craft_cre = 0
	}
	
		if x > 2664
		{
			if mac < 2
			{
			attack_paturn = choose(4,0,0)
			stemina = 0
			}
			else
			{
			attack_paturn = 0
			stemina = 0
			}
		gravity_ignore = 0
		movement_speed = 0
		mine_craft_cre = 0
		gravity = 0.2
		stemina = 0
		var sfx = audio_play_sound(laser_ready_sfx,0,0)
		audio_sound_gain(sfx,0.3*global.master_volume*2*global.sfx_volume,0)
		obj_camera.tv_x = 1280*1.2
		obj_camera.tv_y = 720*1.2
		}
	}
	
	
	if attack_paturn >= 7 && attack_paturn <= 8
	{
	obj_camera.tv_x = 1280*1.2
	obj_camera.tv_y = 720*1.2
	
		if attack_paturn = 7
		{
		a_ = choose(-1,1)
			if instance_number(minecraft_) = 1
			{
			instance_destroy(minecraft_)
			}
		}
	attack_paturn += 0.01
	
		if (attack_paturn = 7 || attack_paturn = 7.25 || attack_paturn = 7.5 || attack_paturn = 7.75)
		{
		randomize()
		var bomb = instance_create_depth(obj_floor.x-1100*a_,player.y,player.depth-1,minecraft_)
		bomb.ignore_gravity = 1
		bomb.hspeed = a_*10
		}
		
		if attack_paturn >= 8
		{
			if already_used_skill < 2
			{
			already_used_skill ++
			attack_paturn = choose(0,0,7)
			stemina = 0
			}
			else
			{
			already_used_skill = 0
			attack_paturn = 0
			stemina = 0
			}
		}
	}
	
	if attack_paturn >= 9 && attack_paturn <= 10
	{
	var dir = -1
		if attack_paturn = 10
		{
		dir = 1
		}
		
	obj_camera.tv_x = 1280*1.3
	obj_camera.tv_y = 720*1.3
	y += (500 - y)*0.08
	x += (obj_floor.x+dir*1000 - x)*0.03
	
	if targeting_laser = 0
	{
	instance_destroy(minecraft_)
	var p_mes_guide_vote = instance_create_depth(x,y,player.depth-1,player_message)
	p_mes_guide_vote.text = "강풍!!!!!버텨욧!!!!!달리기로!!!!!!"
	p_mes_guide_vote.target = player.id
	p_mes_guide_vote.alarm[2] = 300
	
	var sfx = audio_play_sound(kitaso,0,0)
	audio_sound_gain(sfx,0.2*global.master_volume*2*global.sfx_volume,0)
	}
	
	targeting_laser += 1
	
		if targeting_laser < 180 && targeting_laser > 20
		{
		global.t_wind_dir += (dir*70 - global.t_wind_dir)*0.1
			if dir = -1 && player.movement_speed > global.t_wind_dir/7
			{
				if player.double_pressed_right >= 2
				{
				player.movement_speed += (global.t_wind_dir/10 - player.movement_speed)*0.1
				}
				else
				{
				player.movement_speed += (global.t_wind_dir/4 - player.movement_speed)*0.1
				}
			}
			
			if dir = 1 && player.movement_speed < global.t_wind_dir/7
			{
				if player.double_pressed_left >= 2
				{
				player.movement_speed += (global.t_wind_dir/10 - player.movement_speed)*0.1
				}
				else
				{
				player.movement_speed += (global.t_wind_dir/4 - player.movement_speed)*0.1
				}
			}
		}

	
	gravity = 0
	vspeed = 0
	gravity_ignore = 1
	
			
			

		
		if targeting_laser > 240
		{
		targeting_laser = 0
		attack_paturn = 0
		stemina = 0
		gravity_ignore = 0
		target_laser_time = 0

		global.t_wind_dir = irandom_range(-100,100)/10
		}
	}
	
	
	
	if attack_paturn >= 11 && attack_paturn < 12
	{
	gravity_ignore = 1
	sprite_index = move_sprite
	gravity = 0
	vspeed = 0
	x += (obj_floor.x - x)*0.08
	y += (600 - y)*0.08
	obj_camera.tv_x = 1280*1.1
	obj_camera.tv_y = 720*1.1
		
		if point_distance(x,y,obj_floor.x,600) < 4 && attack_paturn = 11
		{
		attack_paturn += 0.01
		instance_destroy(minecraft_)
		}
		
		if attack_paturn > 11 && attack_paturn < 11.5
		{
		attack_paturn += 0.01
		}
		
		if attack_paturn = 11.1 || attack_paturn = 11.15 || attack_paturn = 11.2 || attack_paturn = 11.3 || attack_paturn = 11.35 || attack_paturn = 11.4
		{
		var bomb = instance_create_depth(x,y,player.depth-1,pepsi)
		bomb.follow = 1
		bomb.speed = 8
		if attack_paturn = 11.1
		{
		var random_angle = 70
		}
		
		if attack_paturn = 11.15
		{
		var random_angle = 35
		}
		
		if attack_paturn = 11.2
		{
		var random_angle = 10
		}
		
		if attack_paturn = 11.3
		{
		var random_angle = 350
		}
		
		if attack_paturn = 11.35
		{
		var random_angle = 325
		}
		
		if attack_paturn = 11.4
		{
		var random_angle = 290
		}
		bomb.image_angle = random_angle
		bomb.direction = random_angle
		}
	
		if instance_number(pepsi) = 0 && attack_paturn >= 11.5
		{
		gravity_ignore = 0
		movement_speed = 0
		gravity = 0.2
		stemina = 0
		attack_paturn = 0
		var sfx = audio_play_sound(laser_ready_sfx,0,0)
		audio_sound_gain(sfx,0.3*global.master_volume*2*global.sfx_volume,0)
		obj_camera.tv_x = 1280
		obj_camera.tv_y = 720
		}
	}
	
	
	
	
	
	if attack_paturn >= 12 && attack_paturn < 13
	{
	var dir = sign(x - obj_floor.x)
	if dir = 0
	{
	dir = choose(-1,1)
	}

		
	gravity_ignore = 1
	sprite_index = move_sprite
	gravity = 0
	vspeed = 0
	x += (obj_floor.x+dir*1000 - x)*0.08
	y += (430 - y)*0.08
	obj_camera.tv_x = 1280*1.3
	obj_camera.tv_y = 720*1.3
		
		if point_distance(x,y,obj_floor.x+dir*1000,430) < 14 && attack_paturn = 12
		{
		attack_paturn += 0.01
		}
		
		if attack_paturn > 12 && attack_paturn < 12.95
		{
		attack_paturn += 0.005
		}
		
		if attack_paturn = 12.1 || attack_paturn = 12.25 || attack_paturn = 12.4 || attack_paturn = 12.55 || attack_paturn = 12.7 || attack_paturn = 12.85
		{
		var bomb = instance_create_depth(x,y,player.depth-1,pepsi)
		bomb.follow = 0
		bomb.speed = 18
		bomb.image_angle = point_direction(x,y,player.x,player.y)
		bomb.direction = point_direction(x,y,player.x,player.y)
		}
	
		if instance_number(pepsi) = 0 && attack_paturn >= 12.95
		{
		gravity_ignore = 0
		movement_speed = 0
		gravity = 0.2
		stemina = 0
		attack_paturn = 0
		var sfx = audio_play_sound(laser_ready_sfx,0,0)
		audio_sound_gain(sfx,0.3*global.master_volume*2*global.sfx_volume,0)
		obj_camera.tv_x = 1280
		obj_camera.tv_y = 720
		}
	}
	

	
	if attack_paturn >= 14 && attack_paturn <= 15
	{
	var dir = -1
		if attack_paturn = 10
		{
		dir = 1
		}
		
		
		if targeting_laser < 150
		{
			if global.hp > 1
			{
			y += (player.y - y)*0.08
			}
		}
	obj_camera.tv_x = 1280*1.15
	obj_camera.tv_y = 720*1.15

	x += (obj_floor.x+dir*1000 - x)*0.03
	targeting_laser += 1
	gravity = 0
	vspeed = 0
	gravity_ignore = 1
	instance_destroy(minecraft_)
	
		if laser = -1
		{
		laser = instance_create_depth(x,y,depth-2,block_laser)
		laser.image_alpha = 0
		laser.width_ = 4
		laser.x2 = x
		laser.y2 = y
		laser.direction = -90
		laser.damage_able = 1
		laser.color_ = c_white
		}
		else
		{
			if instance_exists(laser)
			{
			laser.x = x
			laser.y = y

		
				if targeting_laser < 150
				{
				laser.image_alpha += (0.4 - laser.image_alpha)*0.1
					if player.x > x
					{
					laser.direction = 0
					}
					else
					{
					laser.direction = 180
					}
				}
		
				if targeting_laser = 150
				{
				laser.image_alpha = 0
				var sfx = audio_play_sound(laser_ready_sfx,0,0)
				audio_sound_gain(sfx,0.3*global.master_volume*2*global.sfx_volume,0)
				}
	
				if targeting_laser = 160
				{
				var sfx = audio_play_sound(laser_keep_sfx,0,0)
				audio_sound_gain(sfx,0.3*global.master_volume*2*global.sfx_volume,0)
				}
		
				if targeting_laser >= 170
				{
				laser.width_ = 16
				laser.color_ = $FF5B14EE
				laser.image_alpha += (1 - laser.image_alpha)*0.1573
				}
		
				if targeting_laser > 213
				{
				target_laser_time ++
					if global.vr_weared = 0
					{
					target_laser_time ++
					}
			
					if target_laser_time > 1
					{
					instance_destroy(laser)
					laser = -1
					targeting_laser = 0
					attack_paturn = 0
					stemina = 0
					gravity_ignore = 0
					target_laser_time = 0
				
					var sfx = audio_play_sound(laser_end_sfx,0,0)
					audio_sound_gain(sfx,0.3*global.master_volume*2*global.sfx_volume,0)
					}
					else
					{
					attack_paturn = attack_paturn
					instance_destroy(laser)
					laser = -1
					targeting_laser = 0
					stemina = 0
					gravity_ignore = 0
					}
				}
			}
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



if knocked_down_ef > 0
{
cannot_move = 1
hit_motion = 1
if down_attack = 0
{
sprite_index = hurt_sprite
}
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



if down_attack = 0
{
		if place_meeting(x,y,effect)
		{
		var _attacker_ef = instance_place(x,y,effect)
		movement_speed = 0
			var __i = sign(x - player.x)
			if __i = 0
			{
			__i = choose(-1,1)
			}
			
			if hit_cooltime = 0
			{
				if auto_guarding = 0
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
				bloody(_attacker_ef)
				hp_minus_for_mob(27+global.skill_turning_attack*2)
				
					if rage_mode = 0
					{
					movement_speed += __i*1.8
					vspeed = -1
					cannot_move = 1
					alarm[2] = 24
						if hit_motion = 0
						{
						hit_motion = 1
						}
					}
				}
				else
				{
				guarding = 2.5
				w_alpha = 1
				var sfx = audio_play_sound(guard,0,0)
				audio_sound_gain(sfx,0.1*global.master_volume*2*global.sfx_volume,0)
				image_xscale = __i
				movement_speed += __i*1.5
					
				var random_dir_ = image_xscale
					repeat(6)
					{
					var _ef = instance_create_depth(player.x-image_xscale*4,player.y+irandom_range(-13,0),player.depth-1,effect_spark)
					_ef.hspeed = irandom_range(5,20)*random_dir_
					_ef.vspeed = irandom_range(-4,2)
					}
				}


			alarm[1] = 10
			hit_cooltime = 1
			last_hit = 1
			}
		}

		if place_meeting(x,y,effect_jump_attack)
		{
			if hit_cooltime = 0
			{
			var _attacker_ef = instance_place(x,y,effect_jump_attack)
			movement_speed = 0
			var __i = sign(x - player.x)
				if __i = 0
				{
				__i = choose(-1,1)
				}
			
				if auto_guarding = 0
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
				bloody(_attacker_ef)
				hp_minus_for_mob(21+global.skill_jump_attack*2)
				
					if rage_mode = 0
					{
					gravity_ignore = 1
					movement_speed += __i*0.4
					vspeed = -4.1
					cannot_move = 1
					alarm[2] = 24
						if hit_motion = 0
						{
						hit_motion = 1
						}
					}
				}
				else
				{
				guarding = 2.5
				w_alpha = 1
				var sfx = audio_play_sound(guard,0,0)
				audio_sound_gain(sfx,0.1*global.master_volume*2*global.sfx_volume,0)
				image_xscale = __i
				movement_speed += __i*0.4
					
					var random_dir_ = image_xscale
					repeat(6)
					{
					var _ef = instance_create_depth(player.x-image_xscale*4,player.y+irandom_range(-13,0),player.depth-1,effect_spark)
					_ef.hspeed = irandom_range(5,20)*random_dir_
					_ef.vspeed = irandom_range(-4,2)
					}
				}
			



			alarm[3] = 9
			alarm[1] = 5
			hit_cooltime = 1
			last_hit = 1
			}
		}


		if place_meeting(x,y,effect_down_attack)
		{
			if hit_cooltime = 0
			{
			var _attacker_ef = instance_place(x,y,effect_down_attack)
			movement_speed = 0
			var __i = sign(x - player.x)
			if __i = 0
			{
			__i = choose(-1,1)
			}
			
				if auto_guarding = 0
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
				bloody(_attacker_ef)
				hp_minus_for_mob(18+global.normal_attack_dmg*0.5)
					if rage_mode = 0
					{
					movement_speed += __i*0.9
					vspeed += 4
					cannot_move = 1
					alarm[2] = 24
						if hit_motion = 0
						{
						hit_motion = 1
						}
					}
				}
				else
				{
				guarding = 2.5
				w_alpha = 1
				var sfx = audio_play_sound(guard,0,0)
				audio_sound_gain(sfx,0.1*global.master_volume*2*global.sfx_volume,0)
				image_xscale = __i
				movement_speed += __i*0.9
				
					var random_dir_ = image_xscale
					repeat(6)
					{
					var _ef = instance_create_depth(player.x-image_xscale*4,player.y+irandom_range(-13,0),player.depth-1,effect_spark)
					_ef.hspeed = irandom_range(5,20)*random_dir_
					_ef.vspeed = irandom_range(-4,2)
					}
				}
	
	
	
			hit_cooltime = 1
			last_hit = 1
			alarm[1] = 3
			gravity = 0.36
			}
		}





		if place_meeting(x,y,effect_attack1)
		{
			if hit_cooltime = 0
			{
			var _attacker_ef = instance_place(x,y,effect_attack1)
			movement_speed = 0
			var __i = sign(x - player.x)
				if __i = 0
				{
				__i = choose(-1,1)
				}
			
				if auto_guarding = 0
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
				bloody(_attacker_ef)
				hp_minus_for_mob(16+global.normal_attack_dmg*0.6)
					
					if rage_mode = 0
					{
					movement_speed += __i*2
					vspeed += 4
					cannot_move = 1
					alarm[2] = 24
						if hit_motion = 0
						{
						hit_motion = 1
						}
					}
				}
				else
				{
				guarding = 2.5
				w_alpha = 1
				var sfx = audio_play_sound(guard,0,0)
				audio_sound_gain(sfx,0.1*global.master_volume*2*global.sfx_volume,0)
				image_xscale = __i
				movement_speed += __i*1.8
				
					var random_dir_ = image_xscale
					repeat(6)
					{
					var _ef = instance_create_depth(player.x-image_xscale*4,player.y+irandom_range(-13,0),player.depth-1,effect_spark)
					_ef.hspeed = irandom_range(5,20)*random_dir_
					_ef.vspeed = irandom_range(-4,2)
					}
				}
	

			alarm[1] = 23
			gravity = 0.36
			hit_cooltime = 1
			last_hit = 1
			}
		}




		if place_meeting(x,y,effect_attack2)
		{
			if hit_cooltime = 0
			{
			var _attacker_ef = instance_place(x,y,effect_attack2)
			movement_speed = 0
			var __i = sign(x - player.x)
				if __i = 0
				{
				__i = choose(-1,1)
				}
				
				if auto_guarding = 0
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
				view_shake(7,13.5,4)
	
				bloody(_attacker_ef)
				hp_minus_for_mob(19+global.normal_attack_dmg*0.6)
					
					if rage_mode = 0
					{
					movement_speed += __i*2
					vspeed -= 1.5
					cannot_move = 1
					alarm[2] = 24
						if hit_motion = 0
						{
						hit_motion = 1
						}
					}
				}
				else
				{
				guarding = 2.5
				w_alpha = 1
				var sfx = audio_play_sound(guard,0,0)
				audio_sound_gain(sfx,0.1*global.master_volume*2*global.sfx_volume,0)
				image_xscale = __i
				movement_speed += __i*1.8
				
					var random_dir_ = image_xscale
					repeat(6)
					{
					var _ef = instance_create_depth(gyu_seong.x-image_xscale*4,player.y+irandom_range(-13,0),player.depth-1,effect_spark)
					_ef.hspeed = irandom_range(5,20)*random_dir_
					_ef.vspeed = irandom_range(-4,2)
					}
				}
	
	
			alarm[1] = 25
			hit_cooltime = 1
			last_hit = 1
			gravity = 0.2
			}
		}





		if place_meeting(x,y,effect_attack3)
		{
			if hit_cooltime = 0
			{
			var _attacker_ef = instance_place(x,y,effect_attack3)
			movement_speed = 0
			var __i = sign(x - player.x)
			if __i = 0
			{
			__i = choose(-1,1)
			}
				
				if auto_guarding = 0
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
				bloody(_attacker_ef)
				hp_minus_for_mob(26+global.normal_attack_dmg*0.6)

			
				movement_speed += __i*2.5
				vspeed -= 3.5
				cannot_move = 1
				alarm[2] = 18
					if hit_motion = 0
					{
					hit_motion = 1
					}
				}
				else
				{
				guarding = 2.5
				w_alpha = 1
				var sfx = audio_play_sound(guard,0,0)
				audio_sound_gain(sfx,0.1*global.master_volume*2*global.sfx_volume,0)
				image_xscale = __i
				movement_speed += __i*2.3
				
					var random_dir_ = image_xscale
					repeat(6)
					{
					var _ef = instance_create_depth(player.x-image_xscale*4,player.y+irandom_range(-13,0),player.depth-1,effect_spark)
					_ef.hspeed = irandom_range(5,20)*random_dir_
					_ef.vspeed = irandom_range(-4,2)
					}
				}
				
			hit_cooltime = 1
			last_hit = 1
			gravity = 0.2
			alarm[1] = 18
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
			bloody(_attacker_ef)
			movement_speed = 0
			var __i = sign(x - player.x)
			if __i = 0
			{
			__i = choose(-1,1)
			}
	
			rage_dilay -= 50
			if rage_dilay <= 0
			{
			rage_dilay = 0
			}

			hit_cooltime = 1
			last_hit = 1
			gravity = 0.2
			alarm[1] = 20
				if rage_mode = 0
				{
				movement_speed += __i*2.5
				vspeed -= 3.8
				cannot_move = 1
				alarm[2] = 48
					if hit_motion = 0
					{
					hit_motion = 1
					}
				}
			}
		}




		if place_meeting(x,y,rage_mode_knockback) || place_meeting(x,y,down_effect)
		{
			if hit_cooltime = 0
			{
			movement_speed = 0
			var __i = sign(x - player.x)
				if __i = 0
				{
				__i = choose(-1,1)
				}
			
				if auto_guarding = 0
				{
					if rage_mode = 0
					{
					movement_speed += __i*2.5
					vspeed -= 3.8
					cannot_move = 1
					alarm[2] = 16
						if hit_motion = 0
						{
						hit_motion = 1
						}
					}
				alarm[5] = 90
				hp_minus_for_mob(0)
				}
				else
				{
				guarding = 2.5
				w_alpha = 1
				var sfx = audio_play_sound(guard,0,0)
				audio_sound_gain(sfx,0.1*global.master_volume*2*global.sfx_volume,0)
				image_xscale = __i
				movement_speed += __i*2.3
				
					var random_dir_ = image_xscale
					repeat(6)
					{
					var _ef = instance_create_depth(player.x-image_xscale*4,player.y+irandom_range(-13,0),player.depth-1,effect_spark)
					_ef.hspeed = irandom_range(5,20)*random_dir_
					_ef.vspeed = irandom_range(-4,2)
					}
				}
	
	
	
			hit_cooltime = 1
			last_hit = 1
			alarm[1] = 16
			gravity = 0.2
			}
		}




		if place_meeting(x,y,ef_blood_dash_attack) && global.playing_scene = 0
		{
			if hit_cooltime = 0
			{
			var _attacker_ef = instance_place(x,y,ef_blood_dash_attack)
			movement_speed = 0
			var __i = sign(x - player.x)
			if __i = 0
			{
			__i = choose(-1,1)
			}
			hp_minus_for_mob(92+global.normal_attack_dmg*2)
			
				if auto_guarding = 0
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
				
				var skill_red_ball_effect_rage = instance_create_depth(x,y,depth-1,red_circle_effect)
				skill_red_ball_effect_rage.image_xscale = 0.45
				skill_red_ball_effect_rage.image_yscale = 0.45
				skill_red_ball_effect_rage.t_scale = 0.65
				skill_red_ball_effect_rage.alarm[11] = 7

				
				vspeed -= 0.5
				cannot_move = 1
				alarm[2] = 48
					if hit_motion = 0
					{
					hit_motion = 1
					}
				
				rage_dilay -= 25
				movement_speed += __i*2.5
					if rage_dilay <= 0
					{
					rage_dilay = 0
					}
				}
				else
				{
				image_xscale = __i
				guarding = 2.5
				w_alpha = 1
				movement_speed += __i*2.2
				var sfx = audio_play_sound(guard,0,0)
				audio_sound_gain(sfx,0.1*global.master_volume*2*global.sfx_volume,0)
				
					var random_dir_ = image_xscale																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																														
					repeat(6)
					{
					var _ef = instance_create_depth(player.x-image_xscale*4,player.y+irandom_range(-13,0),player.depth-1,effect_spark)
					_ef.hspeed = irandom_range(5,20)*random_dir_
					_ef.vspeed = irandom_range(-4,2)
					}
				}
			hit_cooltime = 1
			last_hit = 1
			gravity = 0.2
			alarm[1] = 20
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
	
	

			movement_speed = -player.image_xscale*13
			hit_cooltime = 1
			last_hit = 1
			gravity = 0.2
			y --
			vspeed -= 4
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

	
			view_shake(1,4,2)
			bloody(_attacker_ef)
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
	
	
			rage_dilay -= 15
			if rage_dilay <= 0
			{
			rage_dilay = 0
			}
		
		
				if hit_motion = 0
				{
				hit_motion = 1
				}
			}
		}
}