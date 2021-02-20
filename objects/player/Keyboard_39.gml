/// @description Insert description here
// You can write your code in this editor
if global.never_move = 0 && sprite_index != spin_sprite && cannot_move = 0
{
	if pressed_d_key != 1 && attack_ = 0
	{
	global.movement_speed = global.movement_speed/4
	}
pressed_d_key = 1

if place_meeting(x,y+1,obj_floor)
{
	if pressed_d_key+pressed_a_key != 0 && cannot_move = 0
	{
		if double_pressed_right < 2
		{
			if global.movement_speed < (5+sign(floor(global.awakening))*0.5)
			{
			global.movement_speed += 0.12
				if global.movement_speed > 0
				{
				global.movement_speed += global.movement_speed*0.05
				}
			}
			else
			{
			global.movement_speed = (5+sign(floor(global.awakening))*0.5)
			}
		}
		else
		{
			if global.achievement_finish[44] = 0
			{
			var _message = instance_create_depth(-100,-100,-9999999999,achievement)
			_message.title = "째끼춘"
			_message.text = "달리기를 시전했다 [달리기 키 변경 가능]"
			global.achievement_finish[44] = 1
			}
			
			
			if global.boots_ = 0
			{
			global.stemina -= 0.02
			}

		
			if global.movement_speed < (8+sign(floor(global.awakening))*0.5)
			{
			global.movement_speed += 0.2
				if global.movement_speed > 0
				{
				global.movement_speed += global.movement_speed*0.1
				}
			}
			else
			{
			global.movement_speed = (8+sign(floor(global.awakening))*0.5)
			}
		}
	}
}
}


if global.never_move = 0 && (sprite_index = spin_attack_sprite)
{
pressed_d_key = 1
	if global.movement_speed < (5+sign(floor(global.awakening))*0.5)
	{
	global.movement_speed += 0.12
		if global.movement_speed > 0
		{
		global.movement_speed += global.movement_speed*0.05
		}
		else
		{
		global.movement_speed += 1
		}
	}
	else
	{
	global.movement_speed = (5+sign(floor(global.awakening))*0.5)
	}
	
	if sprite_index = spin_jump_sprite
	{
	image_xscale = -abs(image_xscale)
	}
}