/// @description Insert description here
// You can write your code in this editor

if global.playing_scene > 0 && (x >= 2510 || x <= 623)
{
global.movement_speed = 0
movement_speed = 0
}


if room_height <= y-400
{
timer_a++
}

if timer_a > 30 && instance_number(revive_with_rage_scene) > 0
{
x = irandom_range(0,room_width)
timer_a = 0
}



if slow_motion = 1
{
	if audio_is_playing(wak_rio)
	{
	slow_motion_rsp ++
	room_speed = 25+slow_motion_rsp
		if slow_motion_rsp > 35
		{
		room_speed = 60
		slow_motion = 2
		}
	}
	else
	{
	room_speed = 60
	slow_motion = 2
	}
}




if global.playing_scene > 0
{
	if global.movement_speed <= 0.01 && movement_speed <= 0.01
	{
	image_index += (0 - image_index)*0.1
		if abs(image_index) < 0.1
		{
		image_index = 0
		}
	}
}

if w_alpha > 0.05 && guarding > 0 && charge_attack = 0
{
	if keyboard_check_pressed(ord(string(global.a_key))) && fast_guarding > 0
	{
	fast_guarding = 0
		repeat(3)
		{
		var ef = instance_create_depth(x,y,depth+1,gyu_seong_red_ef)
		var sprite = asset_get_index(string(sprite_get_name(string(guard_sprite)))+"_white")
		if sprite_exists(sprite)
		{
		ef.sprite_index = sprite
		}
		else
		{
		ef.sprite_index = guard_sprite
		}
		ef.image_index = 2
		ef.image_xscale = image_xscale
		ef.image_yscale = image_yscale
		ef.image_alpha = 0.2*image_alpha
		ef.image_angle = image_angle
		}		
	skill_combo = 20
	}
	
	if keyboard_check_pressed(vk_down) && charge_attack = 0
	{
		if place_meeting(x,y+2,obj_floor) && hurt = 0
		{
		fast_guarding = 0
		attack_ = 0
		keep_attack = 0
		keep_attacking = 0
		attack_sfx_on = 0
		sprite_index = move_sprite
		image_index = 0
		cooltime = 0
		cannot_move = 0

		down_attack = 0
		spin = 1
		cannot_move = 1
		cooltime = 1
		global.stemina_cooltime = 0
			repeat(choose(6,7,7,8,8,9,9,9,10,10,11,12))
			{
			randomize()
			var dust = instance_create_depth(x+irandom_range(-2,2),y+28+irandom_range(-2,2),depth+1,pepsi_effect)
			dust.image_xscale = 0.13
			dust.image_yscale = 0.13
			dust.vspeed = -irandom_range(100,200)/200
			dust.hspeed = (-global.movement_speed*irandom_range(10,50)/50)+irandom_range(-20,20)/5
			dust.image_alpha = 0.4
			}
			
			if global.achievement_finish[45] = 0
			{
			var _message = instance_create_depth(-100,-100,-9999999999,achievement)
			_message.title = "위기 탈출"
			_message.text = "구르기를 시전 했다"
			global.achievement_finish[45] = 1
			}
			

			repeat(3)
			{
			var ef = instance_create_depth(x,y,depth+1,gyu_seong_red_ef)
			var sprite = asset_get_index(string(sprite_get_name(string(guard_sprite)))+"_white")
			if sprite_exists(sprite)
			{
			ef.sprite_index = sprite
			}
			else
			{
			ef.sprite_index = guard_sprite
			}
			ef.image_index = 2
			ef.image_xscale = image_xscale
			ef.image_yscale = image_yscale
			ef.image_alpha = 0.2*image_alpha
			ef.image_angle = image_angle
			}	
		}
	}
}




if spin >= 10
{
	if keyboard_check_pressed(vk_space)
	{
		repeat(3)
		{
		var ef = instance_create_depth(x,y,depth+1,gyu_seong_red_ef)
		var sprite = asset_get_index(string(sprite_get_name(string(spin_sprite)))+"_white")
		if sprite_exists(sprite)
		{
		ef.sprite_index = sprite
		}
		else
		{
		ef.sprite_index = spin_sprite
		}
		ef.image_index = 0
		ef.image_xscale = image_xscale
		ef.image_yscale = image_yscale
		ef.image_alpha = 0.2*image_alpha
		ef.image_angle = image_angle
		}
		
	sprite_index = move_sprite
	spin = 0
	cooltime = 1
	alarm[1] = 8
	cannot_move = 0
	
	var sfx = audio_play_sound(jump_sfx,0,0)
	audio_sound_gain(sfx,0.6*global.master_volume*2*global.sfx_volume,0)
	
		repeat(choose(6,7,7,8,8,9,9,9,10,10,11,12))
		{
		randomize()
		var dust = instance_create_depth(x+irandom_range(-2,2),y+28+irandom_range(-2,2),depth+1,pepsi_effect)
		dust.image_xscale = 0.13
		dust.image_yscale = 0.13
		dust.vspeed = -irandom_range(100,200)/200
		dust.hspeed = (-global.movement_speed*irandom_range(10,50)/50)+irandom_range(-20,20)/5
		dust.image_alpha = 0.4
		}
	
	vspeed = -6
	jump = 0
	jump_end_motion = 0
	b_movement_speed = 0
	global.stemina_cooltime = 0
	y -= 1.2
	jump = 1
	
	if image_xscale < 0 && global.movement_speed > 0
	{
	global.movement_speed = abs(global.movement_speed)
	}
	if image_xscale > 0 && global.movement_speed < 0
	{
	global.movement_speed = -abs(global.movement_speed)
	}

	b_movement_speed = global.movement_speed
	cannot_move = 1
	}
}



if (attack_ > 4 && attack_ <= 6) || (attack_ > 6.5 && attack_ <= 9) || (attack_ >= 12)
{
	if global.skill_jump_attack > 0 && global.stemina > 2.5 && keyboard_check_pressed(ord(string(global.w_key))) && attack_ >= 12 && charge_attack = 0
	{
		repeat(3)
		{
		var ef = instance_create_depth(x,y,depth+1,gyu_seong_red_ef)
		var sprite = asset_get_index(string(sprite_get_name(string(attack_sprite)))+"_white")
		if sprite_exists(sprite)
		{
		ef.sprite_index = sprite
		}
		else
		{
		ef.sprite_index = attack_sprite
		}
		if attack_ > 4 && attack_ <= 6
		{
		ef.image_index = 3
		}
		if attack_ > 6.5 && attack_ <= 9
		{
		ef.image_index = 8
		}
		if attack_ >= 12
		{
		ef.image_index = 13
		}
		
		ef.image_xscale = image_xscale
		ef.image_yscale = image_yscale
		ef.image_alpha = 0.2*image_alpha
		ef.image_angle = image_angle
		}
	
	skill_combo = 20
	}
	
	if global.skill_turning_attack > 0 && global.stemina > 3.8 && keyboard_check_pressed(ord(string(global.q_key))) && attack_ >= 12 && charge_attack = 0
	{
		repeat(3)
		{
		var ef = instance_create_depth(x,y,depth+1,gyu_seong_red_ef)
		var sprite = asset_get_index(string(sprite_get_name(string(attack_sprite)))+"_white")
		if sprite_exists(sprite)
		{
		ef.sprite_index = sprite
		}
		else
		{
		ef.sprite_index = attack_sprite
		}
		if attack_ > 4 && attack_ <= 5
		{
		ef.image_index = 3
		}
		if attack_ > 6.5 && attack_ <= 9
		{
		ef.image_index = 8
		}
		if attack_ >= 12
		{
		ef.image_index = 13
		}
		
		ef.image_xscale = image_xscale
		ef.image_yscale = image_yscale
		ef.image_alpha = 0.2*image_alpha
		ef.image_angle = image_angle
		}
	
	skill_combo = 20
	}
	
	if keyboard_check_pressed(vk_up) && charge_attack = 0
	{
		repeat(3)
		{
		var ef = instance_create_depth(x,y,depth+1,gyu_seong_red_ef)
		var sprite = asset_get_index(string(sprite_get_name(string(attack_sprite)))+"_white")
		if sprite_exists(sprite)
		{
		ef.sprite_index = sprite
		}
		else
		{
		ef.sprite_index = attack_sprite
		}
		if attack_ > 4 && attack_ <= 5
		{
		ef.image_index = 3
		}
		if attack_ > 6.5 && attack_ <= 9
		{
		ef.image_index = 8
		}
		if attack_ >= 12
		{
		ef.image_index = 13
		}
		
		ef.image_xscale = image_xscale
		ef.image_yscale = image_yscale
		ef.image_alpha = 0.2*image_alpha
		ef.image_angle = image_angle
		}
	
	skill_combo = 20
	}
	
	if keyboard_check_pressed(vk_down) && charge_attack = 0
	{
		if place_meeting(x,y+2,obj_floor) && hurt = 0
		{
		attack_ = 0
		keep_attack = 0
		keep_attacking = 0
		attack_sfx_on = 0
		sprite_index = move_sprite
		image_index = 0
			if skill_combo = 0
			{
			alarm[1] = 12
			alarm[3] = 13
			}
			else
			{
			cooltime = 0
			cannot_move = 0
			}

		down_attack = 0
		spin = 1
		cannot_move = 1
		cooltime = 1
		global.stemina_cooltime = 0
			repeat(choose(6,7,7,8,8,9,9,9,10,10,11,12))
			{
			randomize()
			var dust = instance_create_depth(x+irandom_range(-2,2),y+28+irandom_range(-2,2),depth+1,pepsi_effect)
			dust.image_xscale = 0.13
			dust.image_yscale = 0.13
			dust.vspeed = -irandom_range(100,200)/200
			dust.hspeed = (-global.movement_speed*irandom_range(10,50)/50)+irandom_range(-20,20)/5
			dust.image_alpha = 0.4
			}
			
			if global.achievement_finish[45] = 0
			{
			var _message = instance_create_depth(-100,-100,-9999999999,achievement)
			_message.title = "위기 탈출"
			_message.text = "구르기를 시전 했다"
			global.achievement_finish[45] = 1
			}
			

			repeat(3)
			{
			var ef = instance_create_depth(x,y,depth+1,gyu_seong_red_ef)
			var sprite = asset_get_index(string(sprite_get_name(string(attack_sprite)))+"_white")
			if sprite_exists(sprite)
			{
			ef.sprite_index = sprite
			}
			else
			{
			ef.sprite_index = attack_sprite
			}
			if attack_ > 4 && attack_ <= 5
			{
			ef.image_index = 3
			}
			if attack_ > 6.5 && attack_ <= 9
			{
			ef.image_index = 8
			}
			if attack_ >= 12
			{
			ef.image_index = 13
			}
		
			ef.image_xscale = image_xscale
			ef.image_yscale = image_yscale
			ef.image_alpha = 0.2*image_alpha
			ef.image_angle = image_angle
			}
		}
	}
}


if down_attack > 13
{
	if global.skill_jump_attack > 0 && global.stemina > 2.5 && keyboard_check_pressed(ord(string(global.w_key))) && charge_attack = 0
	{
		repeat(3)
		{
		var ef = instance_create_depth(x,y,depth+1,gyu_seong_red_ef)
		var sprite = asset_get_index(string(sprite_get_name(string(down_attack_sprite)))+"_white")
		if sprite_exists(sprite)
		{
		ef.sprite_index = sprite
		}
		else
		{
		ef.sprite_index = down_attack_sprite
		}
		ef.image_index = 4
		ef.image_xscale = image_xscale
		ef.image_yscale = image_yscale
		ef.image_alpha = 0.2*image_alpha
		ef.image_angle = image_angle
		}
	
	skill_combo = 20
	}
	
	if global.skill_turning_attack > 0 && global.stemina > 3.8 && keyboard_check_pressed(ord(string(global.q_key))) && charge_attack = 0
	{
		repeat(3)
		{
		var ef = instance_create_depth(x,y,depth+1,gyu_seong_red_ef)
		var sprite = asset_get_index(string(sprite_get_name(string(attack_sprite)))+"_white")
		if sprite_exists(sprite)
		{
		ef.sprite_index = sprite
		}
		else
		{
		ef.sprite_index = attack_sprite
		}
		ef.image_index = 6
		ef.image_xscale = image_xscale
		ef.image_yscale = image_yscale
		ef.image_alpha = 0.2*image_alpha
		ef.image_angle = image_angle
		}
	
	skill_combo = 20
	}
	
	if keyboard_check_pressed(vk_up) && charge_attack = 0
	{
		repeat(3)
		{
		var ef = instance_create_depth(x,y,depth+1,gyu_seong_red_ef)
		var sprite = asset_get_index(string(sprite_get_name(string(attack_sprite)))+"_white")
		if sprite_exists(sprite)
		{
		ef.sprite_index = sprite
		}
		else
		{
		ef.sprite_index = attack_sprite
		}
		ef.image_index = 6
		ef.image_xscale = image_xscale
		ef.image_yscale = image_yscale
		ef.image_alpha = 0.2*image_alpha
		ef.image_angle = image_angle
		}
	
	skill_combo = 20
	}
	
	if keyboard_check_pressed(vk_down) && charge_attack = 0
	{
		if place_meeting(x,y+2,obj_floor) && hurt = 0
		{
		cooltime = 0
		down_attack_motion_dilay = 0
		down_attack_gravity = 0
		down_attack_sfx_on = 0
		down_attack_plusing = 0
		down_attack = 0
		cannot_move = 0
		sprite_index = move_sprite
		image_index = 0
		y -= 1

		spin = 1
		cannot_move = 1
		cooltime = 1
		global.stemina_cooltime = 0
			repeat(choose(6,7,7,8,8,9,9,9,10,10,11,12))
			{
			randomize()
			var dust = instance_create_depth(x+irandom_range(-2,2),y+28+irandom_range(-2,2),depth+1,pepsi_effect)
			dust.image_xscale = 0.13
			dust.image_yscale = 0.13
			dust.vspeed = -irandom_range(100,200)/200
			dust.hspeed = (-global.movement_speed*irandom_range(10,50)/50)+irandom_range(-20,20)/5
			dust.image_alpha = 0.4
			}
			
			if global.achievement_finish[45] = 0
			{
			var _message = instance_create_depth(-100,-100,-9999999999,achievement)
			_message.title = "위기 탈출"
			_message.text = "구르기를 시전 했다"
			global.achievement_finish[45] = 1
			}
			

			repeat(3)
			{
			var ef = instance_create_depth(x,y,depth+1,gyu_seong_red_ef)
			var sprite = asset_get_index(string(sprite_get_name(string(down_attack_sprite)))+"_white")
			if sprite_exists(sprite)
			{
			ef.sprite_index = sprite
			}
			else
			{
			ef.sprite_index = down_attack_sprite
			}
			ef.image_index = 4
			ef.image_xscale = image_xscale
			ef.image_yscale = image_yscale
			ef.image_alpha = 0.2*image_alpha
			ef.image_angle = image_angle
			}
		}
	}
}


if dash_attack >= 4.6
{
	if global.skill_jump_attack > 0 && global.stemina > 2.5 && keyboard_check_pressed(ord(string(global.w_key))) && charge_attack = 0
	{
		repeat(3)
		{
		var ef = instance_create_depth(x,y,depth+1,gyu_seong_red_ef)
		var sprite = asset_get_index(string(sprite_get_name(string(rush_attack_sprite)))+"_white")
		if sprite_exists(sprite)
		{
		ef.sprite_index = sprite
		}
		else
		{
		ef.sprite_index = rush_attack_sprite
		}
		ef.image_index = 9
		ef.image_xscale = image_xscale
		ef.image_yscale = image_yscale
		ef.image_alpha = 0.2*image_alpha
		ef.image_angle = image_angle
		}
	
	skill_combo = 20
	}
	
	if keyboard_check_pressed(vk_up) && charge_attack = 0
	{
		repeat(3)
		{
		var ef = instance_create_depth(x,y,depth+1,gyu_seong_red_ef)
		var sprite = asset_get_index(string(sprite_get_name(string(attack_sprite)))+"_white")
		if sprite_exists(sprite)
		{
		ef.sprite_index = sprite
		}
		else
		{
		ef.sprite_index = attack_sprite
		}
		if attack_ > 4 && attack_ <= 5
		{
		ef.image_index = 2
		}
		if attack_ > 6.5 && attack_ <= 9
		{
		ef.image_index = 7
		}
		if attack_ >= 12
		{
		ef.image_index = 12
		}
		
		ef.image_xscale = image_xscale
		ef.image_yscale = image_yscale
		ef.image_alpha = 0.2*image_alpha
		ef.image_angle = image_angle
		}
	
	skill_combo = 20
	}
	
	if keyboard_check_pressed(vk_down) && charge_attack = 0 && attack_ <= 0
	{
		if place_meeting(x,y+2,obj_floor) && hurt = 0
		{
		dash_attack = 0
		double_pressed_left = 0
		double_pressed_right = 0
		cannot_move = 0
		sprite_index = move_sprite
		image_index = 0

		spin = 1
		cannot_move = 1
		cooltime = 1
		global.stemina_cooltime = 0
			repeat(choose(6,7,7,8,8,9,9,9,10,10,11,12))
			{
			randomize()
			var dust = instance_create_depth(x+irandom_range(-2,2),y+28+irandom_range(-2,2),depth+1,pepsi_effect)
			dust.image_xscale = 0.13
			dust.image_yscale = 0.13
			dust.vspeed = -irandom_range(100,200)/200
			dust.hspeed = (-global.movement_speed*irandom_range(10,50)/50)+irandom_range(-20,20)/5
			dust.image_alpha = 0.4
			}
			
			if global.achievement_finish[45] = 0
			{
			var _message = instance_create_depth(-100,-100,-9999999999,achievement)
			_message.title = "위기 탈출"
			_message.text = "구르기를 시전 했다"
			global.achievement_finish[45] = 1
			}
			

			repeat(3)
			{
			var ef = instance_create_depth(x,y,depth+1,gyu_seong_red_ef)
			var sprite = asset_get_index(string(sprite_get_name(string(rush_attack_sprite)))+"_white")
			if sprite_exists(sprite)
			{
			ef.sprite_index = sprite
			}
			else
			{
			ef.sprite_index = rush_attack_sprite
			}
			ef.image_index = 9
			ef.image_xscale = image_xscale
			ef.image_yscale = image_yscale
			ef.image_alpha = 0.2*image_alpha
			ef.image_angle = image_angle
			}
		}
	}
	
	
	if keyboard_check_pressed(vk_space) && charge_attack = 0
	{
		if global.nickname != "썩은물" && global.nickname != "씹찐따"
		{
			if global.never_move = 0 && hurt = 0
			{
				if place_meeting(x,y+1,obj_floor)
				{
					repeat(3)
					{
					var ef = instance_create_depth(x,y,depth+1,gyu_seong_red_ef)
					var sprite = asset_get_index(string(sprite_get_name(string(rush_attack_sprite)))+"_white")
					if sprite_exists(sprite)
					{
					ef.sprite_index = sprite
					}
					else
					{
					ef.sprite_index = rush_attack_sprite
					}
					ef.image_index = 9
					ef.image_xscale = image_xscale
					ef.image_yscale = image_yscale
					ef.image_alpha = 0.2*image_alpha
					ef.image_angle = image_angle
					}
					
				dash_attack = 0
				double_pressed_left = 0
				double_pressed_right = 0
				cannot_move = 0
				sprite_index = move_sprite
				image_index = 0
		
				var sfx = audio_play_sound(jump_sfx,0,0)
				audio_sound_gain(sfx,0.6*global.master_volume*2*global.sfx_volume,0)
	
					repeat(choose(6,7,7,8,8,9,9,9,10,10,11,12))
					{
					randomize()
					var dust = instance_create_depth(x+irandom_range(-2,2),y+28+irandom_range(-2,2),depth+1,pepsi_effect)
					dust.image_xscale = 0.13
					dust.image_yscale = 0.13
					dust.vspeed = -irandom_range(100,200)/200
					dust.hspeed = (-global.movement_speed*irandom_range(10,50)/50)+irandom_range(-20,20)/5
					dust.image_alpha = 0.4
					}
	
				vspeed = -6
				jump_end_motion = 0
				b_movement_speed = 0
				global.stemina_cooltime = 0
				y -= 1.2
				jump = 1
	
				if image_xscale < 0 && global.movement_speed > 0
				{
				global.movement_speed = abs(global.movement_speed)
				}
				if image_xscale > 0 && global.movement_speed < 0
				{
				global.movement_speed = -abs(global.movement_speed)
				}

				b_movement_speed = global.movement_speed
				cannot_move = 1
				}
			}
		}
	}
}

if skill_combo > 0
{
skill_combo --
}



/////////////////////////////////////////////////////////////////////////////////



if keyboard_check(vk_up) && hurt = 0 && global.playing_scene = 0 && global.grabed <= 0 && charge_attack = 0
{
	if (cannot_move = 0) && guarding <= 1
	{
		if guarding = -1
		{
		guarding = 1
		fast_guarding = 1
		alarm[11] = 40
		}
	}
	
	if guarding > 1
	{
	guarding -= 0.05
	}
}
else
{
	if guarding <= 0 && guarding != -1
	{
	sprite_index = move_sprite
	cooltime = 0
	cannot_move = 0
	guarding = -1
	}
	
	if guarding > 0
	{
	guarding -= 0.05
	}
	
	if guarding > 1
	{
	guarding -= 0.1
	}
}

if guarding > 0
{
global.stemina_cooltime = 0
global.movement_speed += (0 - global.movement_speed)*0.1
double_pressed_left = 0
double_pressed_right = 0
cannot_move = 1
sprite_index = guard_sprite
image_index = guarding
}


if global.grabed > 0 || hurt > 0 || skill_combo >= 1
{
	if charge_attack > 0
	{
	global.movement_speed = 0
	movement_speed *= 0.5
	attack_charge_sfx = 0
	sprite_index = move_sprite
	image_index = 0
	cannot_move = 0
	cooltime = 0
	charge_attack = 0
	charge_attack_effect = 0
	}
	
	if attack_ > 0
	{
	attack_ = 0
	keep_attack = 0
	keep_attacking = 0
	attack_sfx_on = 0
	sprite_index = move_sprite
	image_index = 0
		if skill_combo = 0
		{
		alarm[1] = 12
		alarm[3] = 13
		}
		else
		{
		cooltime = 0
		cannot_move = 0
		}
	}
	
	if attack_in_air > 0
	{
	attack_in_air = 0
	attack_sfx_on = 0
	sprite_index = move_sprite
	image_index = 0
		if skill_combo = 0
		{
		alarm[1] = 12
		alarm[3] = 13
		}
		else
		{
		cooltime = 0
		cannot_move = 0
		}
	}
	
	if down_attack > 0
	{
		if skill_combo = 0
		{
		alarm[1] = 8
		}
		else
		{
		cooltime = 0
		}
		
	down_attack_motion_dilay = 0
	down_attack_gravity = 0
	down_attack_sfx_on = 0
	down_attack_plusing = 0
	down_attack = 0
	cannot_move = 0
	sprite_index = move_sprite
	image_index = 0
	y -= 1
	}
	
	if spin_attack > 0
	{
	spin_attack = 9999
	}
	
	if jump_attack > 0
	{
	jump_attack = 9999
	}
	
	if attack_laser > 0
	{
	attack_laser_sfx = 0
	down_attack_plusing = 0
	attack_laser = 0
	down_attack_with_rage_dis = 0
	cannot_move = 0
	cooltime = 0
	sprite_index = move_sprite
	image_index = 0
	global.never_move = 0
	}
	
	if down_attack_with_rage > 0
	{
		if skill_combo = 0
		{
		alarm[1] = 8
		}
		else
		{
		cooltime = 0
		}
		
	down_attack_motion_dilay = 0
	down_attack_gravity = 0
	down_attack_sfx_on = 0
	down_attack_plusing = 0
	down_attack_with_rage = 0
	cannot_move = 0
	down_attack_with_rage_dis = 0
	sprite_index = move_sprite
	image_index = 0
	y -= 1
	}
	
	if dash_attack > 0
	{
	dash_attack = 0
	double_pressed_left = 0
	double_pressed_right = 0
	cannot_move = 0
	sprite_index = move_sprite
	image_index = 0
	}
	
	if skill_red_ball_effect != -1
	{
	instance_destroy(skill_red_ball_effect)
	skill_red_ball_effect = -1
	}
	
	if guarding > 0
	{
	sprite_index = move_sprite
	cooltime = 0
	cannot_move = 0
	guarding = -1
	paring = 1
	
		if fast_guarding > 0
		{
		w_alpha = 1
		global.stemina_cooltime = 999
		image_index = 0
		attack_in_air = 2.92
		attack_in_air_cool = 1
		cooltime = 1
		cannot_move = 1
		fast_guarding = 0
		}
	}
fast_guarding = 0
skill_combo = 0
}






if global.never_move = 0 && keyboard_check_pressed(ord(string(global.a_key))) && charge_attack = 0
{
if global.got_wakchori > 0
{
	if (attack_in_air < 7 && gravity > 0 && cooltime = 0 && hurt = 0 && attack_in_air_cool = 0 && (!place_meeting(x,y+38,obj_floor) || vspeed < 0))
	{
	image_index = 0
	attack_in_air = 2.92
	attack_in_air_cool = 1
	cooltime = 1
	cannot_move = 1
	}
	
	if attack_ > 0 && jump = 0
	{
	keep_attack = 1
	alarm[2] = 14
	}
	
	
		if (attack_ < 7 && cannot_move = 0 && cooltime = 0 && hurt = 0) && (gravity <= 0 || attack_in_air_cool = 1)
		{
		global.stemina_cooltime = 0
		attack_ = 1
		cooltime = 1
		cannot_move = 1
		if global.movement_speed*2 > 5
		{
		global.movement_speed = global.movement_speed*2
		}
		else
		{
		global.movement_speed = 5*sign(global.movement_speed)
		}


		vspeed += 2
		}
	}
}





var pressing = 0
if global.run_key != "Non" && keyboard_check_pressed(ord(string(global.run_key))) && charge_attack = 0
{
pressing = 1
}

if global.run_key = vk_shift && keyboard_check_pressed(string(global.run_key)) && charge_attack = 0
{
pressing = 1
}

if global.run_key = vk_up && keyboard_check_pressed(string(global.run_key)) && charge_attack = 0
{
pressing = 1
}



if global.never_move = 0 && global.run_key != "Non" && pressing = 1
{
double_pressed_right = 2
double_pressed_left = 2
}




var pressing = 0
if global.e_key != "Non" && keyboard_check(ord(string(global.e_key))) && charge_attack = 0
{
pressing = 1
}

if global.e_key = vk_shift && keyboard_check(string(global.e_key)) && charge_attack = 0
{
pressing = 1
}

if global.e_key = vk_up && keyboard_check(string(global.e_key)) && charge_attack = 0
{
pressing = 1
}



if global.awakening = 0 && global.rage_gauge = 100 && pressing = 1 && global.never_move = 0
{
global.awakening += 0.05
global.stop_awakening = 0
}

if global.awakening > 0.1
{
	if global.voice_option = 0 && rage_mode_sfx = -1
	{
	rage_mode_sfx = audio_play_sound(ang___,0,0)
	audio_sound_gain(rage_mode_sfx,0.6*global.master_volume*2*global.sfx_volume,0)
	}
}



if global.awakening < 1 && pressing = 0
{
audio_stop_sound(rage_mode_sfx)
rage_mode_sfx = -1
global.awakening = 0
}





if global.never_move = 0 && keyboard_check_released(ord(string(global.e_key))) && w_alpha < 0.17 && charge_attack = 0
{
	if global.can_use_quake_skill = 1 && check_d_press_e = 0
	{
		if gravity = 0
		{
			if !keyboard_check(vk_down) && attack_laser = 0
			{
				if down_attack_with_rage = 0 && cannot_move = 0 && cooltime = 0 && spin = 0 && down_attack_plusing = 0 && hurt = 0 && global.rage_gauge >= 27
				{
				vspeed = 0
				vspeed = -6
				y -= 1
				down_attack_with_rage = 1
				cooltime = 1
				cannot_move = 1
				jump = 0
				jump_end_motion = 0
				b_movement_speed = 0
				jump_vsp_up = 1
				cooltime = 1
				if global.n_room = 0
				{
				movement_speed = -image_xscale*8
				}
				global.stemina_cooltime = 0
				global.rage_gauge -= 27
				

				var skill_red_ball_effect_rage = instance_create_depth(x,y,player.depth-1,red_circle_effect)
				skill_red_ball_effect_rage.image_xscale = 0.8
				skill_red_ball_effect_rage.image_yscale = 0.8
				skill_red_ball_effect_rage.t_scale = 0.8
				skill_red_ball_effect_rage.alarm[11] = 7
			
				if global.achievement_finish[78] = 0
				{
				var _message = instance_create_depth(-100,-100,-9999999999,achievement)
				_message.title = "새로운 스킬!"
				_message.text = "깨지고 부서져라"
				global.achievement_finish[78] = 1
				}
			
					if global.awakening >= 1
					{
					global.awakening -= 0.3
					}
			
				var sfx = audio_play_sound(sound5,0,0)
				audio_sound_gain(sfx,0.13*global.master_volume*2*global.sfx_volume,0)
				
				
			
				w_alpha = 1

				var __i = choose(-1,1)
				var bl_ef = instance_create_depth(x,y,depth-1,ef_blood)
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
				}
			}
			
			if keyboard_check(vk_down) && global.vr_weared = 1 && global.normal_attack_dmg >= 5 && down_attack_with_rage = 0
			{
				if attack_laser = 0 && cannot_move = 0 && cooltime = 0 && spin = 0 && hurt = 0 && global.rage_gauge >= 80
				{
				vspeed = 0
				y -= 1
				attack_laser = 1
				cooltime = 1
				cannot_move = 1
				jump = 0
				jump_end_motion = 0
				b_movement_speed = 0
				jump_vsp_up = 1
				cooltime = 1
				global.stemina_cooltime = 0
				global.rage_gauge -= 80
				
				if skill_red_ball_effect = -1
				{
				skill_red_ball_effect = instance_create_depth(x+10*image_xscale,y+15,player.depth-1,red_circle_effect)
				skill_red_ball_effect.image_xscale = 0.35
				skill_red_ball_effect.image_yscale = 0.35
				skill_red_ball_effect.t_scale = 0.35
				}
			
				if global.achievement_finish[79] = 0
				{
				var _message = instance_create_depth(-100,-100,-9999999999,achievement)
				_message.title = "숨겨진 스킬!"
				_message.text = "근력 강화 5레벨 이상부터 사용 가능"
				global.achievement_finish[79] = 1
				}
			
					if global.awakening >= 1
					{
					global.awakening -= 0.8
					}
			
				var sfx = audio_play_sound(laser_skill_ready,0,0)
				audio_sound_gain(sfx,0.15*global.master_volume*2*global.sfx_volume,0)
				
				if global.voice_option = 0
				{
				var sfx = audio_play_sound(ready_swording,0,0)
				audio_sound_gain(sfx,0.35*global.master_volume*2*global.sfx_volume,0)
				}

			
					if global.vr_weared > 0 || global.replay_time > 1
					{
					var sfx = audio_play_sound(choose(swing_lightsaber_sfx2,swing_lightsaber_sfx3),0,0)
					audio_sound_gain(sfx,0.1*global.master_volume*2*global.sfx_volume,0)
					}
				}
			}
		}
	}
}


if pressing = 0
{
check_d_press_e = 0
}











if global.never_move = 0 && keyboard_check_pressed(ord(string(global.q_key)))
{
if global.skill_turning_attack > 0 && turning_attack_used < global.skill_turning_attack
{
if global.got_wakchori > 0
{
	if global.stemina > 3.8
	{
		if spin_attack = 0 && cannot_move = 0 && cooltime = 0 && hurt = 0
		{
		turning_attack_used ++
		cannot_move = 1
		jump = 0
		jump_end_motion = 0
		b_movement_speed = 0
		jump_vsp_up = 1
		cooltime = 1
		global.stemina_cooltime = 0
		global.stemina -= 2.8
			if place_meeting(x,y+2,obj_floor)
			{
			spin_attack = 1.25
				if global.nickname = "무중력"
				{
				gravity = 0.1
				}
				else if global.nickname = "중력" || global.high_gravity > 0
				{
				gravity = 0.45
				}
				else
				{
				gravity = 0.2
				}
			vspeed = -4
			}
			else
			{
			spin_attack = 3
			vspeed = 0
			gravity = 0
			}
		}
	}
	else
	{
		if global.trailer_mode = 0
		{
		var sfx = audio_play_sound(cannot_buy,0,0)
		audio_sound_gain(sfx,0.3*global.master_volume*2*global.sfx_volume,0)
		}
	}
	
	

	if !place_meeting(x,y+10,obj_floor) && hurt = 0
	{
		if global.stemina > 3.8
		{
			if spin_attack = 0 && cannot_move = 1 && cooltime = 0 && jump > 0
			{
			turning_attack_used ++
			jump = 0
			jump_end_motion = 0
			b_movement_speed = 0
			spin_attack = 3.5
			cannot_move = 1
			jump_vsp_up = 1
			cooltime = 1
			gravity = 0
			vspeed = 0
			global.stemina_cooltime = 0
			global.stemina -= 2.8
			}
		}
		else
		{
			if global.trailer_mode = 0
			{
			var sfx = audio_play_sound(cannot_buy,0,0)
			audio_sound_gain(sfx,0.3*global.master_volume*2*global.sfx_volume,0)
			}
		}
	}
}
}
}







if global.never_move = 0 && keyboard_check_pressed(ord(string(global.s_key)))
{
if !place_meeting(x,y+2,obj_floor)
{
	if global.skill_down_attack > 0
	{
	if global.got_wakchori > 0
	{
		if global.stemina > 2.8
		{
			if down_attack = 0 && cannot_move = 0 && cooltime = 0 && spin = 0 && down_attack_plusing = 0 && hurt = 0
			{
			down_attack = 1
			cooltime = 1
			cannot_move = 1
			jump = 0
			jump_end_motion = 0
			b_movement_speed = 0
			jump_vsp_up = 1
			cooltime = 1
			global.stemina_cooltime = 0
			global.stemina -= 1.8
			var _ef = instance_create_depth(x,y-32,depth+1,effect_down_attack)
			_ef.sprite_index = pl_move_skeleton_down_attack1
			_ef.image_index = global.vr_weared
			if global.replay_time > 1 && global.vr_weared = 0
			{
			_ef.image_index = 2
			}
			_ef.image_xscale = image_xscale
			_ef.image_alpha = 0.10001
			
				if global.vr_weared > 0 || global.replay_time > 1
				{
				var sfx = audio_play_sound(choose(swing_lightsaber_sfx2,swing_lightsaber_sfx3),0,0)
				audio_sound_gain(sfx,0.1*global.master_volume*2*global.sfx_volume,0)
				}
			}
		}
		else
		{
			if global.trailer_mode = 0
			{
			var sfx = audio_play_sound(cannot_buy,0,0)
			audio_sound_gain(sfx,0.3*global.master_volume*2*global.sfx_volume,0)
			}
		}
	
	
		if global.stemina > 2.8
		{
			if down_attack = 0 && cannot_move = 1 && jump > 0 && cooltime = 0 && spin = 0 && down_attack_plusing = 0 && hurt = 0
			{
			down_attack = 1
			cooltime = 1
			cannot_move = 1
			jump = 0
			jump_end_motion = 0
			b_movement_speed = 0
			jump_vsp_up = 1
			cooltime = 1
			global.stemina_cooltime = 0
			global.stemina -= 1.8
			var _ef = instance_create_depth(x,y-6,depth+1,effect_down_attack)
			_ef.sprite_index = pl_move_skeleton_down_attack1
			_ef.image_index = global.vr_weared
			if global.replay_time > 1 && global.vr_weared = 0
			{
			_ef.image_index = 2
			}
			_ef.image_xscale = image_xscale
			_ef.image_alpha = 0.6
			
				if global.vr_weared > 0 || global.replay_time > 1
				{
				var sfx = audio_play_sound(choose(swing_lightsaber_sfx2,swing_lightsaber_sfx3),0,0)
				audio_sound_gain(sfx,0.1*global.master_volume*2*global.sfx_volume,0)
				}
			}
		}
		else
		{
			if global.trailer_mode = 0
			{
			var sfx = audio_play_sound(cannot_buy,0,0)
			audio_sound_gain(sfx,0.3*global.master_volume*2*global.sfx_volume,0)
			}
		}
	}
	}
}
else
{
	if global.vr_weared > 0 || global.replay_time > 1 && (double_pressed_left >= 2 || double_pressed_right >= 2) && global.rage_gauge >= 27
	{
		if gravity = 0 && dash_attack = 0 && cannot_move = 0 && cooltime = 0 && spin = 0 && down_attack_plusing = 0 && hurt = 0
		{
		global.rage_gauge -= 27
		
		if global.achievement_finish[84] = 0
		{
		var _message = instance_create_depth(-100,-100,-9999999999,achievement)
		_message.title = "최종 스킬이당"
		_message.text = "돌진 베기를 사용 했다"
		global.achievement_finish[84] = 1
		}
		
			if global.awakening >= 1
			{
			global.awakening -= 0.3
			}
		dash_attack = 1
		cannot_move = 1
		}
	}
}
}









if global.never_move = 0 && keyboard_check_pressed(ord(string(global.w_key)))
{
if global.skill_jump_attack > 0 && jump_attack_used < global.skill_jump_attack
{
if global.got_wakchori > 0
{
	if global.stemina > 2.5
	{
		if jump_attack = 0 && cannot_move = 0 && cooltime = 0 && hurt = 0
		{
		jump_attack_used ++
		if skill_combo = 0
		{
		jump_attack = 1
		}
		else
		{
		skill_combo = 0
		jump_attack = 1.5
		}
		cannot_move = 1
		jump = 0
		jump_end_motion = 0
		b_movement_speed = 0
		jump_vsp_up = 1
		cooltime = 1
		vspeed = 0
		gravity = 0
		global.stemina -= 1.5
		global.stemina_cooltime = 0
		}
	}
	else
	{
		if global.trailer_mode = 0
		{
		var sfx = audio_play_sound(cannot_buy,0,0)
		audio_sound_gain(sfx,0.3*global.master_volume*2*global.sfx_volume,0)
		}
	}

if !place_meeting(x,y+10,obj_floor)
{
	if global.stemina > 3
	{
		if jump_attack = 0 && cannot_move = 1 && cooltime = 0 && jump > 0 && hurt = 0
		{
		jump_attack_used ++
		gravity = 0
		vspeed = 0
		jump = 0
		jump_end_motion = 0
		b_movement_speed = 0
		if skill_combo = 0
		{
		jump_attack = 1
		}
		else
		{
		skill_combo = 0
		jump_attack = 1.5
		}
		cannot_move = 1
		jump_vsp_up = 1
		cooltime = 1
		global.stemina -= 2
		global.stemina_cooltime = 0
		}
	}
	else
	{
		if global.trailer_mode = 0
		{
		var sfx = audio_play_sound(cannot_buy,0,0)
		audio_sound_gain(sfx,0.3*global.master_volume*2*global.sfx_volume,0)
		}
	}
}
}
}
}























if global.stemina <= 1 || global.nickname = "씹찐따"
{
double_pressed_left = 0
double_pressed_right = 0
}


if global.awakening >= 1
{
var ef = instance_create_depth(x,y,depth+1,gyu_seong_red_ef);
var sprite = asset_get_index(string(sprite_get_name(string(sprite_index)))+"_white");
if sprite_exists(sprite)
{
ef.sprite_index = sprite;
}
else
{
ef.sprite_index = sprite_index;
};
ef.image_index = image_index;
ef.image_xscale = image_xscale;
ef.image_yscale = image_yscale;
ef.image_alpha = 0.2*image_alpha;
ef.image_angle = image_angle;
	
	if spin_attack >= 7
	{
	var ef = instance_create_depth(x,y,depth+1,gyu_seong_red_ef);
	var sprite = asset_get_index(string(sprite_get_name(string(sprite_index)))+"_white");
	if sprite_exists(sprite)
	{
	ef.sprite_index = sprite;
	}
	else
	{
	ef.sprite_index = sprite_index;
	};
	ef.image_index = image_index;
	ef.image_xscale = image_xscale;
	ef.image_yscale = image_yscale;
	ef.image_alpha = 0.2*image_alpha;
	ef.image_angle = image_angle+spin_attack_angle_p*60*(abs(image_xscale)/image_xscale)+10*(abs(image_xscale)/image_xscale);
	}

	

	if dont_shine = 0
	{
	global.rage_gauge = 100*(global.awakening-1)
	global.stemina += 0.1
	global.stemina_cooltime = 0
	}

	if global.awakening = 1 && global.stop_awakening = 0
	{
	check_d_press_e = 1
	var sfx = audio_play_sound(sound5,0,0)
	audio_sound_gain(sfx,0.13*global.master_volume*2*global.sfx_volume,0)
	view_shake(1,0,1)
	instance_create_depth(x,y,depth-1,rage_mode_knockback)
	
	var random_val = percentage_k(1)
	if random_val = 1 && global.copyright_warning = 0
	{
	var fus_ro_dah_sfx = audio_play_sound(fus_ro_dah,0,0)
	audio_sound_gain(fus_ro_dah_sfx,0.2*global.master_volume*2*global.sfx_volume,0)
	view_shake(7,32,10)
	
	instance_create_depth(x-16,y,depth-1,rage_mode_knockback)
	instance_create_depth(x+16,y,depth-1,rage_mode_knockback)
	}

	
	var skill_red_ball_effect_rage = instance_create_depth(x,y,player.depth-1,red_circle_effect)
	skill_red_ball_effect_rage.image_xscale = 0.8
	skill_red_ball_effect_rage.image_yscale = 0.8
	skill_red_ball_effect_rage.t_scale = 0.8
	skill_red_ball_effect_rage.alarm[11] = 7
	
	global.stop_awakening = 1
	global.awakening = 2
	global.rage_gauge = 0
	
		var __i = choose(-1,1)
		var bl_ef = instance_create_depth(x,y,depth-1,ef_blood)
		var img_scale = -__i*irandom_range(8,15)/5
		bl_ef.image_xscale = img_scale
		bl_ef.image_yscale = abs(img_scale)
		bl_ef.t_x = __i
		bl_ef.image_angle = irandom_range(-90,90)
		w_alpha = 1.1
	
		if global.achievement_finish[24] = 0
		{
		var _message = instance_create_depth(-100,-100,-9999999999,achievement)
		_message.title = "레이지 모드"
		_message.text = "스테미나 회복 속도, 공속, 이속 증가"
		global.achievement_finish[24] = 1
		}
	}
}
else
{
dont_shine = 0
	if audio_is_playing(wak_rio) || global.revived_once = 1
	{
	var ef = instance_create_depth(x,y,depth+1,gyu_seong_blue_ef);
	var sprite = asset_get_index(string(sprite_get_name(string(sprite_index)))+"_white");
	if sprite_exists(sprite)
	{
	ef.sprite_index = sprite;
	}
	else
	{
	ef.sprite_index = sprite_index;
	};
	ef.image_index = image_index;
	ef.image_xscale = image_xscale;
	ef.image_yscale = image_yscale;
	ef.image_alpha = 0.2*image_alpha;
	ef.image_angle = image_angle;
	}
}

if global.awakening > 0 && global.stop_awakening = 0
{
global.awakening += 0.05
w_alpha = global.awakening*0.5
}

if global.stop_awakening = 1
{
	if global.messi = 0
	{
	global.awakening -= 0.001
	}
	else
	{
	global.awakening -= 0.0009
	}
	
	if global.awakening < 1
	{
	global.awakening = 0
	global.stop_awakening = 0
		if dont_shine = 0
		{
		var __i = choose(-1,1)
		var bl_ef = instance_create_depth(x,y,depth-1,ef_blood)
		var img_scale = -__i*irandom_range(8,15)/5
		bl_ef.image_xscale = img_scale
		bl_ef.image_yscale = abs(img_scale)
		bl_ef.t_x = __i
		bl_ef.image_angle = irandom_range(-90,90)
		w_alpha = 1.1
		
		var skill_red_ball_effect_rage = instance_create_depth(x,y,player.depth-1,red_circle_effect)
		skill_red_ball_effect_rage.image_xscale = 0.8
		skill_red_ball_effect_rage.image_yscale = 0.8
		skill_red_ball_effect_rage.t_scale = 0.8
		skill_red_ball_effect_rage.alarm[11] = 7
		}
	}
}


if global.never_move = 1
{
pressed_a_key = 0
pressed_d_key = 0
}


if global.vr_weared = 0
{
	if global.replay_time <= 1
	{
	attack_laser_sprite = pl_move_skeleton_laser_skill
	move_sprite = pl_move_skeleton
	attack_sprite = pl_move_skeleton_attack
	spin_attack_sprite = pl_move_skeleton_spin_attack
	down_attack_sprite = pl_move_skeleton_down_attack
	jump_attack_sprite = pl_move_skeleton_jump_attack
	spin_sprite = pl_move_skeleton_spin
	spin_jump_sprite = pl_move_skeleton_spin_jump
	hurt_sprite = pl_hurt
	charging_sprite = pl_move_skeleton_charging
		if global.got_wakchori = 0
		{
		guard_sprite = pl_move_skeleton_guard_no_wakchori
		}
		else
		{
		guard_sprite = pl_move_skeleton_guard
		}
	
		if global.pants = 0
		{
		armored_level = 0.7
		}
		else
		{
		armored_level = 1
		}
	}
	else
	{
	attack_laser_sprite = pl_move_skeleton_laser_skill_red
	rush_attack_sprite = pl_move_skeleton_rush_slice_red
	move_sprite = pl_move_skeleton
	attack_sprite = pl_move_skeleton_attack_beat_saber_red
	spin_attack_sprite = pl_move_skeleton_spin_attack_beat_saber_red
	down_attack_sprite = pl_move_skeleton_down_attack_beat_saber_red
	jump_attack_sprite = pl_move_skeleton_jump_attack_beat_saber_red
	spin_sprite = pl_move_skeleton_spin
	spin_jump_sprite = pl_move_skeleton_spin_jump
	hurt_sprite = pl_hurt
	charging_sprite = pl_move_skeleton_charging
		if global.got_wakchori = 0
		{
		guard_sprite = pl_move_skeleton_guard_no_wakchori
		}
		else
		{
		guard_sprite = pl_move_skeleton_guard_red
		}
	
		if global.pants = 0
		{
		armored_level = 0.7
		}
		else
		{
		armored_level = 1
		}
	}
}
else
{
attack_laser_sprite = pl_move_skeleton_laser_skill
rush_attack_sprite = pl_move_skeleton_rush_slice
charging_sprite = pl_move_skeleton_charging_beatsaber
move_sprite = pl_move_skeleton_beat_saber
if global.playing_scene > 0 && instance_number(gyu_seong) > 0 && instance_number(player_message) <= 0
{
attack_sprite = pl_move_skeleton_attack_beat_saber_only_red
}
else
{
attack_sprite = pl_move_skeleton_attack_beat_saber
}
spin_attack_sprite = pl_move_skeleton_spin_attack_beat_saber
down_attack_sprite = pl_move_skeleton_down_attack_beat_saber
jump_attack_sprite = pl_move_skeleton_jump_attack_beat_saber
spin_sprite = pl_move_skeleton_spin_beat_saber
spin_jump_sprite = pl_move_skeleton_spin_jump_beat_saber
hurt_sprite = pl_hurt_beat_saber
guard_sprite = pl_move_skeleton_guard_beat_saber
armored_level = 1.3
}


hspeed += (0 - hspeed)*0.1
if sprite_index = move_sprite
{
	if floor(image_index) = 3 || floor(image_index) = 9
	{
		if !audio_is_playing(footstep_sfx)
		{
		var sfx = audio_play_sound(footstep_sfx,0,0)
		audio_sound_gain(sfx,0.2*global.master_volume*2*global.sfx_volume,0)
		
			repeat(irandom_range(2,abs(global.movement_speed)))
			{
			randomize()
			var dust = instance_create_depth(x+irandom_range(-1,1),y+28+irandom_range(-2,2),depth+1,pepsi_effect)
			dust.image_xscale = 0.1
			dust.image_yscale = 0.1
			dust.vspeed = -irandom_range(100,200)/200
			dust.hspeed = -global.movement_speed*irandom_range(10,50)/50
			dust.image_alpha = 0.4
			}
		}
	}
}

if global.hp <= 1
{
	if check_revive_ = 0
	{
		if global.nickname = "우왁굳" || global.nickname = "왁굳" || global.nickname = "오영택"
		{
		var check_total_dead = global.total_died-5
		}
		else
		{
		var check_total_dead = global.total_died-8
		}

	if check_total_dead < 0 || global.got_wakchori = 0
	{
	check_total_dead = 0
	}

	//show_message(check_total_dead)
	check_revive_ = percentage_k(check_total_dead*2)
	}

if global.revived_once > 0 && revive_bug_fixer = 0
{
slow_motion = 3
scene_staring = 0
revive_bug_fixer = 1
check_revive_ = 0
}


	if check_revive_ = 0 || global.revived_once > 0
	{
	scene_staring ++
	global.t_in_building += 0.01
	global.bgm_volume -= 0.01
	global.terror_zero = 1
		if dead = 0
		{
		a___ = audio_play_sound(choose(wakgood_hurt,wakgood_hurt2),0,0)
		dead = 1
		}
	
	a_sound -= 0.013
	audio_sound_gain(a___,0.2*global.master_volume*a_sound*2*global.sfx_volume,0)

	
		if hurt = 0
		{
		hurt = 1
		}
	entering_daepiso = 1
	cannot_move = 0
	sprite_index = hurt_sprite
	image_index = 1
	if global.nickname = "무중력"
	{
	gravity = 0.075
	}
	else if global.nickname = "중력" || global.high_gravity > 0
	{
	gravity = 0.3
	}
	else
	{
	gravity = 0.15
	}
		if scene_staring > 160
		{
		room_goto(room1)
		global.revived_once = 0
		global.t_in_building = -0.01
		a_sound = 1
		code.revive_c = 0
		dead = 0
		}
	}
	else
	{
	scene_staring ++
	global.t_in_building += 0.01
	global.bgm_volume -= 0.01
	global.terror_zero = 1
	
	entering_daepiso = 1
	cannot_move = 0
	sprite_index = hurt_sprite
	image_index = 1
	if global.nickname = "무중력"
	{
	gravity = 0.075
	}
	else if global.nickname = "중력" || global.high_gravity > 0
	{
	gravity = 0.3
	}
	else
	{
	gravity = 0.15
	}
	
	if scene_staring = 200
	{
	instance_create_depth(-100,-100,-99999999,revive_with_rage_scene)
	}
	
		if hurt = 0
		{
		hurt = 1
		}
	
		if dead = 0
		{
		a___ = audio_play_sound(choose(wakgood_hurt,wakgood_hurt2),0,0)
		dead = 1
		}
	a_sound -= 0.013
	audio_sound_gain(a___,0.2*global.master_volume*a_sound*2*global.sfx_volume,0)
	}
}


if entering_daepiso = 0
{

repeat(100)
{
	if place_meeting(x,y+0.2,obj_floor)
	{
	y -= 0.1
	jump_attack_used = 0
	turning_attack_used = 0
	}
	else
	{
	break;
	}
}

if !place_meeting(x,y+1,obj_floor)
{
	if jump = 0 && spin_attack = 0 && jump_attack = 0 && down_attack = 0
	{
	jump = 1
	jump_vsp_up = 1
	}
	
	if pressed_a_key+pressed_d_key != 0 && cooltime = 0
	{
		if !place_meeting(x-image_xscale*32,y,obj_floor)
		{
		x += (-image_xscale)*0.7
		}
	}
}


if spin_attack = 0 && jump_attack = 0 && down_attack = 0
{
	if place_meeting(x,y+1,obj_floor)
	{
	jump_attack_used = 0
	turning_attack_used = 0
	gravity = 0
	vspeed = 0
	t_y = y+vspeed
	
		if jump > 4
		{
		jump_end_motion = 1
		}
		
		if jump_end_motion = 1
		{
			if b_movement_speed > 0.11
			{
				if !place_meeting(x-image_xscale*32,y,obj_floor)
				{
				x += (1.5)*0.7
				}
			}
			else if b_movement_speed < -0.11
			{
				if !place_meeting(x-image_xscale*32,y,obj_floor)
				{
				x += (-1.5)*0.7
				}
			}
		}
		
		if jump_end_motion = 1
		{
		jump -= 0.9
			if attack_in_air <= 0
			{
			image_index = jump
			}
		}
		
		if jump <= 0 && jump_end_motion = 1
		{
		jump_vsp_up = 0
		cannot_move = 0
		jump = 0
		jump_end_motion = 0
		b_movement_speed = 0
		sprite_index = move_sprite
		}
	}
	else
	{
		if global.nickname = "무중력"
		{
		gravity = 0.1
		}
		else if global.nickname = "중력" || global.high_gravity > 0
		{
		gravity = 0.45
		}
		else
		{
		gravity = 0.2
		}
	}
}


if sprite_index = move_sprite
{
image_index += abs(global.movement_speed)*0.12
}

if !place_meeting(x-(image_xscale)*48,y,obj_floor)
{
	if !position_meeting(x+global.movement_speed+(sign(global.movement_speed)*16),y,obj_floor)
	{
		if global.flip_movement > 0
		{
		x -= (global.movement_speed)*0.7
		}
		else
		{
		x += (global.movement_speed)*0.7
		}
	}
	else
	{
		if gravity > 0 
		{
		global.movement_speed += (0 - global.movement_speed)*0.01
		}
	}
}
else
{
	if gravity > 0 
	{
	global.movement_speed += (0 - global.movement_speed)*0.01
	}
}

if pressed_d_key+pressed_a_key = 0 && cannot_move = 0 && attack_ = 0 && dash_attack = 0
{
global.movement_speed += (0 - global.movement_speed)*0.23
image_index += (0 - image_index)*0.1
}

if pressed_d_key+pressed_a_key != 0 && cannot_move = 0 && attack_ = 0 && attack_in_air_cool <= 0
{
	if global.flip_movement > 0
	{
	image_xscale = abs(image_xscale)*(pressed_d_key+pressed_a_key)
	}
	else
	{
	image_xscale = -abs(image_xscale)*(pressed_d_key+pressed_a_key)
	}
}

if cannot_move != 0
{
pressed_a_key = 0
pressed_d_key = 0
}

if spin > 0 && down_attack = 0
{
	if spin = 1
	{
	var sfx = audio_play_sound(spin_sfx,0,0)
	audio_sound_gain(sfx,0.12*global.master_volume*2*global.sfx_volume,0)
	var random_val = choose(1,0)
		if random_val = 1
		{
			if global.voice_option = 0
			{
			var sfx = audio_play_sound(zzae_ggi_chun,0,0)
			audio_sound_gain(sfx,0.5*global.master_volume*2*global.sfx_volume,0)
			}
		}
	}
sprite_index = spin_sprite
spin += 0.3
image_index = spin
global.movement_speed = 0

	if spin <= 11
	{
		for(var i = 0; i <= (11-spin); i++)
		{
			if !place_meeting(x-image_xscale*16,y-16,obj_floor)
			{
			x += -sign(image_xscale)*0.7
			}
			else
			{
			break;
			}
		}
	}
	
	if spin >= 11
	{
	sprite_index = move_sprite
	spin = 0
	cooltime = 1
	alarm[1] = 8
	cannot_move = 0
	}
}





if spin_attack > 0 && down_attack = 0
{
	if pressed_d_key+pressed_a_key != 0
	{
	image_xscale = -abs(image_xscale)*(pressed_d_key+pressed_a_key)
	}
sprite_index = spin_attack_sprite
spin_attack += 0.3
if global.awakening > 1 || (global.replay_time > 1 && global.vr_weared = 0)
{
spin_attack += 0.05
}

if spin_attack <= 7
{
image_index = spin_attack
}
else
{
image_index = 7
}

	if image_index > 5
	{
		if image_angle = 0
		{
		image_index = 5
		}
	}
	

	if spin_attack <= 1
	{
	global.movement_speed = 0
	}


	if spin_attack < 6
	{
	global.movement_speed = (-image_xscale)*2.2
	
		if vspeed > 0
		{
			if global.nickname = "무중력"
			{
			gravity = 0.105
			}
			else if global.nickname = "중력" || global.high_gravity > 0
			{
			gravity = 0.452
			}
			else
			{
			gravity = 0.21
			}
		}
		
		spin_attack_angle_p = 1
	}
	else
	{
	gravity = 0
	
		if spin_attack <= 7
		{
		var _pressing_a = keyboard_check(vk_left)
		var _pressing_d = keyboard_check(vk_right)
		
		if image_xscale < 0
		{
		_pressing_d = 0
		}
		else
		{
		_pressing_a = 0
		}
		
		if _pressing_d != 0 && _pressing_a != 0
		{
		global.movement_speed = (_pressing_d-_pressing_a)
		}
		else
		{
		global.movement_speed = -image_xscale*0.4
		}
		
		vspeed += (0 - vspeed)*0.05
		}
	
	spin_attack_angle_p++
	
	if spin_attack >= 7 && image_angle != 0
	{
	global.movement_speed += (0 - global.movement_speed)*0.08
		if hurt = 0
		{
		var _ef = instance_create_depth(x,y,depth+1,effect)
		_ef.image_index = global.vr_weared
		if global.replay_time > 1 && global.vr_weared = 0
		{
		_ef.image_index = 2
		}
		_ef.image_xscale = image_xscale
		_ef.image_alpha = 0.6
		_ef.image_angle = image_angle+spin_attack_angle_p*60*(abs(image_xscale)/image_xscale)+10*(abs(image_xscale)/image_xscale)
		}
		
		image_alpha = 0.6
	
		if spin_attack_sfx_on = 0
		{
		var sfx = audio_play_sound(spin_attack_sfx,0,0)
		audio_sound_gain(sfx,0.4*global.master_volume*2*global.sfx_volume,0)
		
		if global.vr_weared > 0 || global.replay_time > 1
		{
		var sfx = audio_play_sound(choose(swing_lightsaber_sfx2),0,0)
		audio_sound_gain(sfx,0.1*global.master_volume*2*global.sfx_volume,0)
		
		alarm[10] = 10
		alarm[11] = 18
		}
		
		if global.voice_option = 0
		{
		var sfx = audio_play_sound(aaang_,0,0)
		audio_sound_gain(sfx,0.23*global.master_volume*2*global.sfx_volume,0)
		}
		spin_attack_sfx_on = 1
		}
	}
	
		if spin_attack_angle_p > 1
		{
		image_angle += 120*(abs(image_xscale)/image_xscale)
		spin_attack_angle_p = 0
		}
	}
	
	if spin_attack >= 13
	{
	sprite_index = move_sprite
	image_angle = 0
	image_alpha = 1
	spin_attack = 0
	cannot_move = 0
	spin_attack_angle_p = 0
	spin_attack_sfx_on = 0
	cooltime = 1
	alarm[1] = 14
	}
}



if jump > 0 && jump_end_motion = 0 && down_attack = 0
{
	if jump < 5
	{
	jump += 0.3
		if global.awakening > 1 || (global.replay_time > 1 && global.vr_weared = 0)
		{
		jump += 0.05
		}
	}
sprite_index = spin_jump_sprite

if dash_attack = 0
{
global.movement_speed += (0 - global.movement_speed)*0.4
}

if !place_meeting(x-image_xscale*16,y,obj_floor)
{
	if b_movement_speed > 0 && b_movement_speed < 3
	{
	x += (b_movement_speed*2)*0.7
	}
	else
	{
	x += (b_movement_speed)*0.7
	}
}


	if jump > 4
	{
		if attack_in_air <= 0
		{
		image_index = 5
		}
		
		if jump_vsp_up != 1
		{ 
		jump_vsp_up = 1
		}
	}
	else
	{
		if attack_in_air <= 0
		{
		image_index = jump
		}
	}
}



if jump_attack > 0 && down_attack = 0 && spin_attack = 0
{
jump_attack += 0.3
if global.awakening > 1 || (global.replay_time > 1 && global.vr_weared = 0)
{
jump_attack += 0.05
}
sprite_index = jump_attack_sprite
image_index = jump_attack
global.movement_speed = 0

	if jump_attack > 5
	{
		if jump_attack_sfx_on != 1
		{
		jump_attack_sfx_on = 1
		var sfx = audio_play_sound(jump_attack_sfx,0,0)
		audio_sound_gain(sfx,0.6*global.master_volume*2*global.sfx_volume,0)
		
		if global.vr_weared > 0 || global.replay_time > 1
		{
		var sfx = audio_play_sound(choose(swing_lightsaber_sfx2,swing_lightsaber_sfx3),0,0)
		audio_sound_gain(sfx,0.1*global.master_volume*2*global.sfx_volume,0)
		}

		
		var random_val = choose(1,0,0)
			if random_val = 1
			{
				if global.voice_option = 0
				{
				var sfx = audio_play_sound(choose(yayaya,yayaya,sagaji),0,0)
				audio_sound_gain(sfx,0.2*global.master_volume*2*global.sfx_volume,0)
				}
			}
		}
	
	jump_attack += 0.12
	jump_attack_motion_dilay ++
		if jump_attack_vsp_up != 1
		{
		vspeed -= 4
		jump_attack_vsp_up = 1
		}
		
		if hurt = 0
		{
			if jump_attack_motion_dilay > 2
			{
			var _ef = instance_create_depth(x,y,depth+1,effect_jump_attack)
			if global.vr_weared = 1
			{
			_ef.sprite_index = pl_move_skeleton_jump_attack_beat_saber1
			}
			if global.replay_time > 1 && global.vr_weared = 0
			{
			_ef.sprite_index = pl_move_skeleton_jump_attack_beat_saber_red1
			}
			_ef.image_index = image_index
			_ef.image_xscale = image_xscale
			_ef.image_alpha = 0.6
			jump_attack_motion_dilay = 0
			}
		}
	
		
		if jump_attack < 11
		{
			if !place_meeting(x-image_xscale*32,y,obj_floor)
			{
			x += (-image_xscale)*0.7
			}
		}
	}
	

	if jump_attack > 14
	{
	jump_attack = 0
	cannot_move = 0
	jump_attack_vsp_up = 0
	jump_attack_sfx_on = 0
	image_index = 15
	cooltime = 1
	alarm[1] = 16
	}
}









if down_attack_with_rage > 0 && spin_attack = 0
{
down_dis += 0.5
	if down_attack_with_rage < 5
	{
	down_attack_with_rage += 0.3
	}
	
sprite_index = down_attack_sprite


	if down_attack_with_rage < 4
	{
		if !place_meeting(x-image_xscale*32,y,obj_floor)
		{
		x += (-image_xscale)*2.2
		}
	
		if global.nickname = "무중력"
		{
		gravity = 0.025
		}
		else if global.nickname = "중력" || global.high_gravity > 0
		{
		gravity = 0.1
		}
		else
		{
		gravity = 0.05
		}
	down_attack_motion_dilay = 1
	}
	else
	{
		if global.nickname = "무중력"
		{
		gravity = 0.18
		}
		else if global.nickname = "중력" || global.high_gravity > 0
		{
		gravity = 0.72
		}
		else
		{
		gravity = 0.36
		}
		
		if !place_meeting(x-image_xscale*32,y,obj_floor) && down_attack_with_rage < 4
		{
		x += (-image_xscale)*0.67
		}
	}
	
	if place_meeting(x,y+vspeed,obj_floor) || place_meeting(x,y+1,obj_floor)
	{
		if down_attack_sfx_on != 1
		{
		down_attack_sfx_on = 1
		var sfx = audio_play_sound(down_attack_sfx,0,0)
		audio_sound_gain(sfx,0.5*global.master_volume*2*global.sfx_volume,0)
		
		
		var sfx = audio_play_sound(bomb_sfx,false,0)
		audio_sound_gain(sfx,0.1*global.master_volume*2*global.sfx_volume,0)
		
		view_shake(4,15+down_dis,4)
		
		attack_target_x = x
		}
		
	global.movement_speed = 0
	movement_speed = 0
	down_dis = 0
		
	vspeed += (0 - vspeed)*0.54
	down_attack_plusing ++
	cooltime = 1
	image_index = 4
	}
	else
	{
	image_index = 3
	}
	
	if slow_motion > 0 && global.revived_once = 1
	{
	obj_camera.x = 1523
	obj_camera.y = 903
	}
	
	if abs(y - 903) <= 256 && slow_motion = 0 && instance_number(revive_with_rage_scene) > 0
	{
		if global.w_alpha2 <= 0
		{
		room_speed = 25
		global.w_alpha2 = 1.2
			if global.achievement_finish[91] = 0
			{
			var _message = instance_create_depth(-100,-100,-9999999999,achievement)
			_message.title = "영 웅 출 현"
			_message.text = "거신병 왁리오 등장"
			global.achievement_finish[91] = 1
			}
		}
	}
	
	if audio_is_playing(wak_rio)
	{
	audio_sound_gain(wakrio_bgm,0.3*global.master_volume*2*global.bgm_volume,0)
	}
	
	if down_attack_plusing > 0
	{
	down_attack_motion_dilay++
		if down_attack_motion_dilay > 4
		{
			
		if !audio_is_playing(wak_rio) && instance_number(revive_with_rage_scene) > 0 && slow_motion = 0 && global.revived_once = 1
		{
		global.w_alpha2 = 2
		w_alpha = 2
		
		obj_camera.x = player.x
		obj_camera.y = player.y
		
		wakrio_bgm = audio_play_sound(wak_rio,0,0)
		audio_sound_gain(wakrio_bgm,0.3*global.master_volume*2*global.bgm_volume,0)
		
		room_speed = 25
		slow_motion = 1
		}
		
		
		if slow_motion > 0 && global.revived_once = 1
		{
		obj_camera.v_x += 1280*0.05
		obj_camera.v_y += 720*0.05
		}
		
		var _effect = instance_create_depth(attack_target_x+down_attack_with_rage_dis,global.p_floor+27,player.depth-1,effect_quake)
		_effect.image_xscale = 1.5
		_effect.image_yscale = 2
		
		var _effect = instance_create_depth(attack_target_x-down_attack_with_rage_dis,global.p_floor+27,player.depth-1,effect_quake)
		_effect.image_xscale = 1.5
		_effect.image_yscale = 2
		
		down_attack_with_rage_dis += 64
		down_attack_motion_dilay = 0
		}
	}
	
	if (global.awakening <= 0 && down_attack_plusing > 10) || (global.awakening > 1 && down_attack_plusing > 16)
	{
	down_attack_with_rage ++
		if down_attack_with_rage > 32
		{
			if global.revived_once = 1
			{
			global.revived_once = 2
			}
		alarm[1] = 8
		down_attack_motion_dilay = 0
		down_attack_gravity = 0
		down_attack_sfx_on = 0
		down_attack_plusing = 0
		down_attack_with_rage = 0
		cannot_move = 0
		down_attack_with_rage_dis = 0
		sprite_index = move_sprite
		image_index = 0
		y -= 1
		}
		
		if slow_motion > 0
		{
		obj_camera.t_x = -4
		obj_camera.t_y = -4
		}
	}
}




if attack_laser > 0 && spin_attack = 0
{
cannot_move = 1
global.never_move = 1
global.movement_speed = 0
attack_laser += 0.1

if skill_red_ball_effect != -1
{
	if round(image_index) < 1
	{
	skill_red_ball_effect.x = x+10*image_xscale
	skill_red_ball_effect.y = y+15
	}
	
	if round(image_index) >= 1 && round(image_index) < 2
	{
	skill_red_ball_effect.x = x+16*image_xscale
	skill_red_ball_effect.y = y+10
	}
	
	if round(image_index) >= 2 && round(image_index) <= 4
	{
	skill_red_ball_effect.x = x+14*image_xscale
	skill_red_ball_effect.y = y-6
	}
	
	if round(image_index) >= 5 && round(image_index) <= 7
	{
	skill_red_ball_effect.x = x+14*image_xscale
	skill_red_ball_effect.y = y-5
	}
	
	if round(image_index) >= 8 && round(image_index) <= 9
	{
	skill_red_ball_effect.x = x+14*image_xscale
	skill_red_ball_effect.y = y-4
	}
	
	if round(image_index) >= 10
	{
	skill_red_ball_effect.x = x-9*image_xscale
	skill_red_ball_effect.y = y+15
	skill_red_ball_effect.des = 1
	skill_red_ball_effect = -1
	}
}
	
sprite_index = attack_laser_sprite
if attack_laser < 13
{
image_index = floor(attack_laser)
}
else
{
image_index = 12
}

	if floor(image_index) = 10 && attack_laser_sfx = 0
	{
	attack_laser_sfx = 1
	
	
	var effect_ = instance_create_depth(x,global.p_floor+27,player.depth+1,down_effect)
	effect_.t_image_xscale = 0.3*12
	effect_.t_image_yscale = 0.05*12
		
		
	var sfx = audio_play_sound(sword_ready,0,0)
	audio_sound_gain(sfx,0.12*global.master_volume*2*global.sfx_volume,0)

	
	attack_target_x = x
	
		if global.vr_weared > 0 || global.replay_time > 1
		{
		var sfx = audio_play_sound(choose(swing_lightsaber_sfx2,swing_lightsaber_sfx3),0,0)
		audio_sound_gain(sfx,0.1*global.master_volume*2*global.sfx_volume,0)
		}
	}
	
	if attack_laser > 12.6
	{
	movement_speed = 0
	down_attack_plusing ++
		if down_attack_plusing > 34
		{
		instance_create_depth(attack_target_x+down_attack_with_rage_dis,global.p_floor+32,player.depth-1,effect_special_skill)
		instance_create_depth(attack_target_x-down_attack_with_rage_dis,global.p_floor+32,player.depth-1,effect_special_skill)
		
		down_attack_plusing = 3
		down_attack_with_rage_dis += 151
		}
	}
	
	if attack_laser > 32
	{
	attack_laser_sfx = 0
	down_attack_plusing = 0
	attack_laser = 0
	down_attack_with_rage_dis = 0
	cannot_move = 0
	cooltime = 0
	sprite_index = move_sprite
	image_index = 0
	global.never_move = 0
	}
}












if down_attack > 0 && spin_attack = 0
{
down_dis += 0.5
	if down_attack < 5
	{
	down_attack += 0.3
		if global.awakening > 1 || (global.replay_time > 1 && global.vr_weared = 0)
		{
		down_attack += 0.05
		}
	}
	
sprite_index = down_attack_sprite
image_index = down_attack
global.movement_speed = 0

	if down_attack > 3
	{
	image_index = 4
	}
	
	if down_attack < 4
	{
		if !place_meeting(x-image_xscale*32,y,obj_floor)
		{
		x += (-image_xscale)*2.2
		}
	
		if down_attack > 6
		{
		image_index = 6
		}
		else
		{
		image_index = down_attack
		}
	
		if global.nickname = "무중력"
		{
		gravity = 0.025
		}
		else if global.nickname = "중력" || global.high_gravity > 0
		{
		gravity = 0.1
		}
		else
		{
		gravity = 0.05
		}
	down_attack_motion_dilay = 1
	}
	else
	{
		if global.nickname = "무중력"
		{
		gravity = 0.18
		}
		else if global.nickname = "중력" || global.high_gravity > 0
		{
		gravity = 0.72
		}
		else
		{
		gravity = 0.36
		}
		
		if down_attack_gravity < 1
		{
		vspeed += 3
		down_attack_gravity += 0.2
		}
		
		if !place_meeting(x-image_xscale*32,y,obj_floor) && down_attack < 4
		{
		x += (-image_xscale)*0.67
		}
		
	
	down_attack_motion_dilay++
	
	if hurt = 0
	{
		if down_attack_plusing != 1
		{
		var _ef = instance_create_depth(x,y,depth+1,effect_down_attack)
		_ef.sprite_index = pl_move_skeleton_down_attack1
		_ef.image_index = global.vr_weared
		if global.replay_time > 1 && global.vr_weared = 0
		{
		_ef.image_index = 2
		}
		_ef.image_xscale = image_xscale
		_ef.image_alpha = 0.6
		down_attack_motion_dilay = 0
		}
	}
	
	image_index = 4
	}
	
	if place_meeting(x,y+vspeed,obj_floor) || place_meeting(x,y+1,obj_floor)
	{
		if down_attack_sfx_on != 1
		{
		down_attack_sfx_on = 1
		var sfx = audio_play_sound(down_attack_sfx,0,0)
		audio_sound_gain(sfx,0.5*global.master_volume*2*global.sfx_volume,0)
		
		
		if global.voice_option = 0
		{
		var sfx = audio_play_sound(gae_sae_ggya,0,0)
		audio_sound_gain(sfx,0.2*global.master_volume*2*global.sfx_volume,0)
		}
		
		view_shake(4,15+down_dis,4)
		
		var effect_ = instance_create_depth(x,global.p_floor+27,player.depth+1,down_effect)
		effect_.t_image_xscale = 0.3*down_dis
		effect_.t_image_yscale = 0.05*down_dis
		}
		
	down_dis = 0
		
	vspeed += (0 - vspeed)*0.54
	down_attack_plusing = 1
	cooltime = 1
	}
	
	if down_attack_plusing > 0
	{
	down_attack ++
		if down_attack > 32
		{
		alarm[1] = 8
		down_attack_motion_dilay = 0
		down_attack_gravity = 0
		down_attack_sfx_on = 0
		down_attack_plusing = 0
		down_attack = 0
		cannot_move = 0
		sprite_index = move_sprite
		image_index = 0
		y -= 1
		}
	}
}


if attack_in_air > 0
{
attack_in_air += 0.16
	if global.awakening > 1 || (global.replay_time > 1 && global.vr_weared = 0)
	{
	attack_in_air += 0.03
	}

sprite_index = attack_sprite
image_index = floor(attack_in_air+2.88)

cannot_move = 1
cooltime = 1

if dash_attack = 0
{
global.movement_speed += (0 - global.movement_speed)*0.1
}


if attack_sfx_on = 0 && (floor(image_index) = 7)
{
var sfx = audio_play_sound(swing_sfx2,0,0)
audio_sound_gain(sfx,0.4*global.master_volume*2*global.sfx_volume,0)

if global.vr_weared > 0 || global.replay_time > 1
{
var sfx = audio_play_sound(swing_lightsaber_sfx2,0,0)
audio_sound_gain(sfx,0.1*global.master_volume*2*global.sfx_volume,0)
}

attack_sfx_on ++

	
	if hurt = 0
	{
	var _ef = instance_create_depth(x,y,depth-1,effect_attack2)
	_ef.image_index = 1+global.vr_weared*3
	if global.replay_time > 1 && global.vr_weared = 0
	{
	_ef.image_index = 7
	}
	_ef.image_xscale = image_xscale
	_ef.image_alpha = 0.8
	}
}



	if attack_in_air+2.88 > 7.5
	{
	paring = 0
	attack_in_air = 0
	keep_attack = 0
	keep_attacking = 0
	attack_sfx_on = 0
	sprite_index = move_sprite
	alarm[1] = 12
	alarm[3] = 13
	}
}

if charge_attack > 0
{
sprite_index = charging_sprite
image_index = charge_attack
cannot_move = 1
charge_attack += 0.025
double_pressed_left = 0
double_pressed_right = 0
global.movement_speed += (0 - global.movement_speed)*0.1
movement_speed = 0

	if global.awakening > 1 || (global.replay_time > 1 && global.vr_weared = 0)
	{
	charge_attack += 0.003
	}
	
	if charge_attack < 3
	{
		if place_meeting(x,y,mob_parents)
		{
		var _ef = instance_create_depth(x,y,depth+1,charging_attack)
		_ef.image_index = 3
		_ef.image_xscale = image_xscale
		_ef.image_alpha = 0.3
		global.hp -= 0.18
		if global.n_room = 0
		{
			if abs(movement_speed) > 2.6
			{
			movement_speed = image_xscale*2
			}
			else
			{
			movement_speed = -movement_speed*1.3
			}
		}
		global.movement_speed = 0
		y -= 1
		gravity = 0
		vspeed = -4
		attack_charge_sfx = 0
		sprite_index = move_sprite
		image_index = 0
		cannot_move = 0
		cooltime = 0
		charge_attack = 3
		charge_attack_effect = 0
		
		var sfx = audio_play_sound(sword_ready,0,0)
		audio_sound_gain(sfx,0.12*global.master_volume*2*global.sfx_volume,0)
		}
		
		if abs(movement_speed) > 3
		{
		var _ef = instance_create_depth(x,y,depth+1,charging_attack)
		_ef.image_index = 3
		_ef.image_xscale = image_xscale
		_ef.image_alpha = 0.3
		gravity = 0
		vspeed = 0
		}
	}


	if attack_charge_sfx = 0
	{
		repeat(choose(6,7,7,8,8,9,9,9,10,10,11,12))
		{
		randomize()
		var dust = instance_create_depth(x+irandom_range(-2,2),y+28+irandom_range(-2,2),depth+1,pepsi_effect)
		dust.image_xscale = 0.13
		dust.image_yscale = 0.13
		dust.vspeed = -irandom_range(100,200)/200
		dust.hspeed = (-global.movement_speed*irandom_range(10,50)/50)+irandom_range(-20,20)/5
		dust.image_alpha = 0.4
		}
				
	var sfx = audio_play_sound(charging_sfx,0,0)
	audio_sound_gain(sfx,0.3*global.master_volume*2*global.sfx_volume,0)
	attack_charge_sfx = 1
	}

	if charge_attack > 2.05 && charge_attack < 3
	{
	global.movement_speed = 0
	attack_charge_sfx = 0
	sprite_index = move_sprite
	image_index = 0
	cannot_move = 0
	cooltime = 0
	charge_attack = 0
	charge_attack_effect = 0
	}
	
	if charge_attack >= 4
	{
	global.movement_speed = 0
	attack_charge_sfx = 0
	sprite_index = move_sprite
	image_index = 0
	cannot_move = 0
	cooltime = 0
	charge_attack = 0
	charge_attack_effect = 0
	}
}


if attack_ > 0
{
attack_ += 0.16
if global.awakening > 1 || (global.replay_time > 1 && global.vr_weared = 0)
{
attack_ += 0.03
}
sprite_index = attack_sprite
image_index = attack_
cannot_move = 1
cooltime = 1

if dash_attack = 0
{
global.movement_speed += (0 - global.movement_speed)*0.1
}

if attack_sfx_on = 0 && (floor(image_index) = 2)
{
var sfx = audio_play_sound(swing_sfx1,0,0)
audio_sound_gain(sfx,0.4*global.master_volume*2*global.sfx_volume,0)

if global.vr_weared > 0 || global.replay_time > 1
{
var sfx = audio_play_sound(swing_lightsaber_sfx1,0,0)
audio_sound_gain(sfx,0.1*global.master_volume*2*global.sfx_volume,0)
}

if global.voice_option = 0
{
var sfx = audio_play_sound(ssip,0,0)
audio_sound_gain(sfx,0.3*global.master_volume*2*global.sfx_volume,0)
}

attack_sfx_on ++
	if !place_meeting(x-image_xscale*32,y,obj_floor)
	{
	global.movement_speed += (-image_xscale)*6.1
	}
	
	if hurt = 0 && global.playing_scene = 0
	{
	var _ef = instance_create_depth(x,y,depth-1,effect_attack1)
	_ef.image_index = global.vr_weared*3
	if global.replay_time > 1 && global.vr_weared = 0
	{
	_ef.image_index = 6
	}
	_ef.image_xscale = image_xscale
	_ef.image_alpha = 0.8
	}
}

if attack_sfx_on = 0 && (floor(image_index) = 6)
{
var sfx = audio_play_sound(swing_sfx2,0,0)
audio_sound_gain(sfx,0.4*global.master_volume*2*global.sfx_volume,0)

if global.vr_weared > 0 || global.replay_time > 1
{
var sfx = audio_play_sound(swing_lightsaber_sfx2,0,0)
audio_sound_gain(sfx,0.1*global.master_volume*2*global.sfx_volume,0)
}


	if global.voice_option = 0 && global.playing_scene = 0
	{
	var sfx = audio_play_sound(jjin,0,0)
	audio_sound_gain(sfx,0.28*global.master_volume*2*global.sfx_volume,0)
	}
attack_sfx_on ++
	if !place_meeting(x-image_xscale*32,y,obj_floor)
	{
	global.movement_speed += (-image_xscale)*4.2
	}
	
	if hurt = 0 && global.playing_scene = 0
	{
	var _ef = instance_create_depth(x,y,depth-1,effect_attack2)
	_ef.image_index = 1+global.vr_weared*3
	if global.replay_time > 1 && global.vr_weared = 0
	{
	_ef.image_index = 7
	}
	_ef.image_xscale = image_xscale
	_ef.image_alpha = 0.8
	}
}

if attack_sfx_on = 0 && (floor(image_index) = 11)
{
var sfx = audio_play_sound(swing_sfx3,0,0)
audio_sound_gain(sfx,0.4*global.master_volume*2*global.sfx_volume,0)

if global.vr_weared > 0 || global.replay_time > 1
{
var sfx = audio_play_sound(swing_lightsaber_sfx3,0,0)
audio_sound_gain(sfx,0.1*global.master_volume*2*global.sfx_volume,0)
}


	if global.voice_option = 0
	{
	var sfx = audio_play_sound(dda,0,0)
	audio_sound_gain(sfx,0.28*global.master_volume*2*global.sfx_volume,0)
	}
attack_sfx_on ++
	if !place_meeting(x-image_xscale*32,y,obj_floor)
	{
	global.movement_speed += (-image_xscale)*5.5
	}
	
	if hurt = 0
	{
	var _ef = instance_create_depth(x,y,depth-1,effect_attack3)
	_ef.image_index = 2+global.vr_weared*3
	if global.replay_time > 1 && global.vr_weared = 0
	{
	_ef.image_index = 8
	}
	_ef.image_xscale = image_xscale
	_ef.image_alpha = 0.8
	}
}

	if attack_ > 6.4 && attack_ < 7 && keep_attacking = 0
	{
		if keep_attack = 0
		{
		attack_ = 0
		keep_attack = 0
		keep_attacking = 0
		attack_sfx_on = 0
		sprite_index = move_sprite
		alarm[1] = 12
		alarm[3] = 13
		}
		else
		{
		keep_attacking ++
		attack_sfx_on = 0
		}
	}
	
	if attack_ > 9.4 && attack_ < 10 && keep_attacking = 1
	{
		if keep_attack = 0
		{
		attack_ = 0
		keep_attack = 0
		keep_attacking = 0
		attack_sfx_on = 0
		sprite_index = move_sprite
		alarm[1] = 12
		alarm[3] = 13
		}
		else
		{
		keep_attacking ++
		attack_sfx_on = 0
		}
	}
	
	if attack_ > 14.4 && keep_attacking = 2
	{
	attack_ = 0
	keep_attack = 0
	keep_attacking = 0
	attack_sfx_on = 0
	sprite_index = move_sprite
	alarm[1] = 12
	alarm[3] = 13
	}
}

if attack_last > 0
{
depth = gyu_seong.depth+1
sprite_index = pl_move_skeleton_sting_skill
attack_last += 0.4

if attack_last < 11
{
image_index = attack_last
}
else
{
image_index = 11
}

	if place_meeting(x,y+0.5,obj_floor) && attack_ <= 0
	{
	double_pressed_left = 0
	double_pressed_right = 0
	attack_last = 0
	cannot_move = 0
	image_index = 0
	
	spin = 1
	cannot_move = 1
	cooltime = 1
	global.stemina_cooltime = 0
		repeat(choose(6,7,7,8,8,9,9,9,10,10,11,12))
		{
		randomize()
		var dust = instance_create_depth(x+irandom_range(-2,2),y+28+irandom_range(-2,2),depth+1,pepsi_effect)
		dust.image_xscale = 0.13
		dust.image_yscale = 0.13
		dust.vspeed = -irandom_range(100,200)/200
		dust.hspeed = (-global.movement_speed*irandom_range(10,50)/50)+irandom_range(-20,20)/5
		dust.image_alpha = 0.4
		}
	}
}



if dash_attack > 0
{
sprite_index = rush_attack_sprite
dash_attack += 0.2


image_index = dash_attack

	if dash_attack < 2
	{
	global.movement_speed += (0 - global.movement_speed)*0.015
	}
	
	if dash_attack > 3
	{
	global.movement_speed += (0 - global.movement_speed)*0.15
	}
	
	if dash_attack >= 2.3 && dash_attack < 2.83
	{
	global.movement_speed = -image_xscale*48
	dash_attack = 2.83
	

	var sfx = audio_play_sound(dash_attack_sfx,0,0)
	audio_sound_gain(sfx,0.08*global.master_volume*2*global.sfx_volume,0)

	
		repeat(irandom_range(12,18))
		{
		randomize()
		var dust = instance_create_depth(x+irandom_range(-2,2),y+28+irandom_range(-2,2),depth+1,pepsi_effect)
		dust.image_xscale = 0.135
		dust.image_yscale = 0.135
		dust.vspeed = -irandom_range(100,200)/200
		dust.hspeed = (-global.movement_speed*irandom_range(10,50)/250)
		dust.image_alpha = 0.4
		}
		
		repeat(irandom_range(18,24))
		{
		randomize()
		var dust = instance_create_depth(x+irandom_range(-2,2),y+3+irandom_range(-5,5),depth+1,pepsi_effect)
		dust.image_xscale = 0.145
		dust.image_yscale = 0.145
		dust.vspeed = irandom_range(-220,100)/200
		dust.hspeed = (-global.movement_speed*irandom_range(10,50)/330)
		dust.image_alpha = 0.4
		}
	}
	
	if dash_attack >= 5 && dash_attack < 5.9
	{
	dash_attack = 5.9
	}
	
	if dash_attack >= 4 && dash_attack < 4.04
	{
	dash_attack = 4.04
	var __i = choose(-1,1)
	var bl_ef = instance_create_depth(x-global.movement_speed*7,y-8,depth-1,ef_blood_dash_attack)
	bl_ef.image_xscale = 2
	bl_ef.image_yscale = 0.42
	bl_ef.t_x = __i
	
	var __i = -global.movement_speed/25
	var bl_ef = instance_create_depth(x-global.movement_speed*7,y-8,depth-1,ef_blood)
	bl_ef.image_xscale = 2.3
	bl_ef.image_yscale = 0.42
	bl_ef.t_x = __i
	
	var effect_ = instance_create_depth(x-global.movement_speed*13,y-8,player.depth+1,down_effect)
	effect_.t_image_yscale = 0.3*3
	effect_.t_image_xscale = 0.05*3
	
	var effect_ = instance_create_depth(x-global.movement_speed*11,y-8,player.depth+1,down_effect)
	effect_.t_image_yscale = 0.15*3
	effect_.t_image_xscale = 0.025*3
	}

	if dash_attack > 10
	{
	double_pressed_left = 0
	double_pressed_right = 0
	dash_attack = 0
	cannot_move = 0
	sprite_index = move_sprite
	image_index = 0
	}
}



}