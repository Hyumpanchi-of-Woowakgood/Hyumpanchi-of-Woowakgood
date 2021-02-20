/// @description Insert description here


if damage_able = 1
{
depth = -(y2+10)
depth = player.depth-1
}
else
{
depth = obj_floor.depth+1
}

scaling_time ++

if scaling_time > 33
{
self_scaling += 0.004
}
else
{
self_scaling -= 0.004
}

if scaling_time >= 66
{
scaling_time = 0
}



image_xscale = width_*0.4
image_yscale = width_*0.55


var max_length = 3000
if damage_able = 1
{
	for(var i = 0; i < max_length; i ++)
	{
	x2 = x + lengthdir_x(i,direction)
	y2 = y + lengthdir_y(i,direction)

	length_laser = i

		if collision_point(x2,y2,obj_floor,true,0)
		{
		break;
		}

	
	
		if (instance_number(player) > 0 && collision_point(x2,y2,player,true,0)) && image_alpha > 0.77 && (player.dash_attack = 0 || player.dash_attack >= 8.3)
		{
		var _calcul_ = sign(player.x - x)
		var guarding_now = 0
			if (_calcul_ = sign(player.image_xscale) && player.guarding > 0 && global.stemina >= 2.5) || player.charge_attack > 0
			{
			guarding_now = 1
			}
		
			if guarding_now = 0
			{
				if player.hurt = 0 && player.spin = 0 && player.sprite_index != pl_hurt
				{
				player.hurt = 1
				player.cannot_move = 1
				global.movement_speed = -player.image_xscale*32

				var sfx = audio_play_sound(choose(global.hit_sfx_1,global.hit_sfx_2,global.hit_sfx_3),0,0)
				audio_sound_gain(sfx,0.2*global.master_volume*2*global.sfx_volume,0)
				
				if global.vr_weared > 0 || global.replay_time > 1
				{
				var sfx = audio_play_sound(sparking_sound,0,0)
				audio_sound_gain(sfx,0.2*global.master_volume*2*global.sfx_volume,0)
				}
	
	
				hp_minus_for_player(4)
				}
			}
			else
			{
				if player.guard_cool_time = 0
				{
				var sfx = audio_play_sound(guard,0,0)
				audio_sound_gain(sfx,0.1*global.master_volume*2*global.sfx_volume,0)
				
				if global.vr_weared > 0 || global.replay_time > 1
				{
				var random_dir = -player.image_xscale
					repeat(8)
					{
					var _ef = instance_create_depth(player.x-image_xscale*4,player.y+irandom_range(-13,0),player.depth-1,effect_spark)
					_ef.hspeed = irandom_range(5,20)*random_dir
					_ef.vspeed = irandom_range(-4,2)
					}
				}
				
				player.w_alpha = 1
				global.stemina -= 1.5
				global.rage_gauge += 1
				player.guarding = 2.5
				player.guard_cool_time = 1
				if player.charge_attack = 0
				{
				player.movement_speed = player.image_xscale*2
				}
				player.alarm[9] = 7
				
					if player.fast_guarding = 1
					{
						repeat(3)
						{
						var ef = instance_create_depth(player.x,player.y,player.depth+1,gyu_seong_red_ef)
						var sprite = asset_get_index(string(sprite_get_name(string(player.guard_sprite)))+"_white")
						if sprite_exists(sprite)
						{
						ef.sprite_index = sprite
						}
						else
						{
						ef.sprite_index = player.guard_sprite
						}
						ef.image_index = 2
						ef.image_xscale = player.image_xscale
						ef.image_yscale = player.image_yscale
						ef.image_alpha = 0.2*player.image_alpha
						ef.image_angle = player.image_angle
						}
					player.fast_guarding = 0
					}
				}
			break;
			}
		}
	}
}
else
{
x2 = x + lengthdir_x(3000,direction)
y2 = y + lengthdir_y(3000,direction)
}






