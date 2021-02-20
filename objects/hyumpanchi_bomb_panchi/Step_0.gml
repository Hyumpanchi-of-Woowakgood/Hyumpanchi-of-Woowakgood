/// @description Insert description here
// You can write your code in this editor
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


if hit_motion = -1
{
sprite_index = hurt_sprite
image_index = 1
}
else if hit_motion > 0
{
sprite_index = hurt_sprite
image_index = 0
}

if y > room_width
{
hp = -1
}



if point_distance(x,y,player.x,player.y) <= 42 && hp > 0 && cannot_move = 0 && hit_motion = 0 && hit_cooltime = 0 && player.spin = 0 && gravity = 0 && global.hp > 1 && (player.dash_attack = 0 || player.dash_attack >= 8.3)
{
	if attack_dilay = 0 && attack_ = 0
	{
	attack_dilay = 1
		if player.sprite_index != pl_hurt
		{
		random_attack_chance = choose(1,1,1,0)
		}
		else
		{
		random_attack_chance = 0
		}
	alarm[6] = irandom_range(130,190)
	}
	
	if attack_ = 0 && random_attack_chance = 1
	{
	attack_ = 1
	random_attack_chance = 0
	}
}


w_alpha += (-0.01 - w_alpha)*0.1

if max_bomb_on > 25
{
bomb_on = 1
max_bomb_on = 30
}


if (attack_ > 0 && hp > 0 && hit_motion = 0 && hit_cooltime = 0) || bomb_on > 0 || max_bomb_on != 15
{
	if grabed != 1
	{
		with(hyumpanchi_bomb_panchi)
		{
			if other.id != id
			{
				if grabed = 1 && hp > 0
				{
				bomb_on = 1
				max_bomb_on = 15
				}
			
				if grabed = 1 && hp <= 0
				{
				bomb_on = 1
				max_bomb_on += 5
				}
			}
		}
	grabed = 1
	global.grabed = 7
	sprite_index = pl_move_hyumpanchi_hug
	image_angle = irandom_range(-30,30)
	depth = player.depth-1
	}
	
	if grabed = 1 && hp > 0
	{
	x = player.x+image_xscale*16
	y = player.y
	}
	
	if global.grabed <= 0
	{
	hp = -1
	image_angle = 0
	sprite_index = pl_move_hyumpanchi
	}
	
image_index += (0 - image_index)*0.1
cannot_move = 1
movement_speed += (0 - movement_speed)*0.08
t_x = x


	if attack_sound_effect = 0
	{
	attack_sound_effect = 1
	movement_speed = -image_xscale*5
	
		if p_mes = -1
		{
		p_mes = instance_create_depth(x,y,player.depth-1,player_message)
		p_mes.text = "애기 뺑띠 안아줘여"
		p_mes.target = self.id
		alarm[0] = 180
		}
	}
	
bomb_on++
	
	if bomb_on > max_bomb_on
	{
	var sfx = audio_play_sound(bomb_beep,0,0)
	audio_sound_gain(sfx,0.15*global.master_volume*2*global.sfx_volume,0)
	
	w_alpha = 1
	if max_bomb_on > 1
	{
	max_bomb_on --
	}
	bomb_on = 0
	}
	
	if max_bomb_on < 3
	{
	
	var sfx = audio_play_sound(bomb_sfx,false,0)
	audio_sound_gain(sfx,0.1*global.master_volume*2*global.sfx_volume,0)
	
	var _cre_ef = instance_create_depth(x,y,depth-1,rage_mode_knockback_for_mob_bomb)
	_cre_ef.image_xscale = 2.2
	_cre_ef.image_yscale = 2.2
	
	global.w_alpha = 1
	hp = -1
	
	view_shake(4,32,4)
	instance_destroy()
	
	repeat(irandom_range(50,64))
	{
	var xx = x+irandom_range(-64,64)
	var yy = y+irandom_range(-64,64)
	randomize()
	
	repeat(999)
	{
		if point_distance(xx,y,x,y) > 64
		{
		var xx = x+irandom_range(-64,64)
		}
		else
		{
		break;
		}
	}
	
	
	repeat(999)
	{
		if point_distance(x,yy,x,y) > 64
		{
		var yy = y+irandom_range(-64,64)
		}
		else
		{
		break;
		}
	}
	
	var dust = instance_create_depth(xx,yy,depth-1,pepsi_effect)
	
	var scale = irandom_range(20,40)/50
	dust.image_xscale = scale
	dust.image_yscale = scale
	dust.vspeed = irandom_range(-50,50)/37
	dust.hspeed = irandom_range(-50,50)/37
	dust.image_alpha = 1
	}
	
	var sfx = audio_play_sound(mob_faint,0,0)
	audio_sound_gain(sfx,0.4*global.master_volume*2*global.sfx_volume,0)

	
		if p_mes != -1
		{
		instance_destroy(p_mes)
		p_mes = -1
		}
	}
}




if sprite_index = move_sprite
{
	if hit_cooltime = 0 && cannot_move = 0 && hit_motion = 0 && knocked_down_ef = 0
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

		movement_speed += (__i*8 - movement_speed)*0.05
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

if hit_cooltime = 0 && gravity_ignore = 0
{
	if place_meeting(x,y+1,obj_floor) || place_meeting(x,y+vspeed,obj_floor)
	{
	gravity = 0
	vspeed = 0
	y = y+vspeed
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