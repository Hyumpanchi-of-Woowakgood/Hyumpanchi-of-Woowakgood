/// @description Insert description here
// You can write your code in this editor
//var skill_red_ball_effect_rage = instance_create_depth(mouse_x,mouse_y,player.depth-1,red_circle_effect)
//	skill_red_ball_effect_rage.image_xscale = 0.8
//	skill_red_ball_effect_rage.image_yscale = 0.8
//	skill_red_ball_effect_rage.t_scale = 0.8
//	skill_red_ball_effect_rage.alarm[11] = 300



if global.dev_mode > 0
{
var random_val = choose(1,0)
	if random_val = 0
	{
	var bomb = instance_create_depth(mouse_x,mouse_y,player.depth-1,minecraft_)
	bomb.image_xscale = 0.75
	bomb.image_yscale = 0.75
	bomb.ignore_gravity = 0
	bomb.hspeed = 0
	bomb.vspeed = -3.5
	bomb.image_index = 3
	}

	if random_val = 1
	{
	instance_create_depth(mouse_x,mouse_y,player.depth-1,hyumpanchi_bomb_panchi)
	}

	if random_val = 2
	{
	var _cre_ef = instance_create_depth(mouse_x,mouse_y,depth-1,rage_mode_knockback_for_mob_bomb)
	_cre_ef.image_xscale = irandom_range(1,10)
	_cre_ef.image_yscale = irandom_range(1,10)

	
	var sfx = audio_play_sound(bomb_sfx,false,0)
	audio_sound_gain(sfx,0.1*global.master_volume*2*global.sfx_volume,0)

	var dust = instance_create_depth(mouse_x,mouse_y,depth-1,pepsi_effect)
	
	var scale = irandom_range(20,40)/50
	dust.image_xscale = scale
	dust.image_yscale = scale
	dust.vspeed = irandom_range(-50,50)/37
	dust.hspeed = irandom_range(-50,50)/37
	dust.image_alpha = 1
	}
}