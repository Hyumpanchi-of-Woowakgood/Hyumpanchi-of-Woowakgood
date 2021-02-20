/// @description Insert description here
// You can write your code in this editor
var effect__ = instance_create_depth(x,y,depth+1,minecraft_effect)
effect__.image_index = image_index
effect__.image_angle = image_angle
effect__.image_xscale = image_xscale
effect__.image_yscale = image_yscale

if place_meeting(x,y,effect) || place_meeting(x,y,rage_mode_knockback) || place_meeting(x,y,ef_blood_dash_attack) || place_meeting(x,y,effect_attack_s) || place_meeting(x,y,effect_special_skill)
{
var sfx = audio_play_sound(guard,0,0)
audio_sound_gain(sfx,0.03*global.master_volume*2*global.sfx_volume,0)
	
instance_create_depth(x,y,depth-1,effect_bomb)
instance_destroy()

	if image_index = 3
	{
		if place_meeting(x,y,rage_mode_knockback) || place_meeting(x,y,effect_attack_s)
		{
		var _cre_ef = instance_create_depth(x,y,depth-1,rage_mode_knockback_for_mob_bomb)
		_cre_ef.image_xscale = 1.3
		_cre_ef.image_yscale = 1.3
		}
	}
}

if place_meeting(x,y,player)
{
	if image_index = 3
	{
	var _cre_ef = instance_create_depth(x,y,depth-1,rage_mode_knockback_for_mob_bomb)
	_cre_ef.image_xscale = 1.3
	_cre_ef.image_yscale = 1.3
	}
instance_create_depth(x,y,depth-1,effect_bomb)
instance_destroy()
}

if y > 903
{
	if image_index = 3
	{
	var _cre_ef = instance_create_depth(x,y,depth-1,rage_mode_knockback_for_mob_bomb)
	_cre_ef.image_xscale = 1.3
	_cre_ef.image_yscale = 1.3
	}
instance_create_depth(x,y,depth-1,effect_bomb)
instance_destroy()
}



//var bomb = instance_create_depth(x,y,depth+1,pepsi_effect)
//bomb.image_xscale = image_xscale*0.3
//bomb.image_yscale = image_yscale*0.3
//bomb.direction = direction
//bomb.speed = -speed


if follow > 0
{
a ++
	if a < 40
	{
		if follow = 1
		{
		image_angle += (point_direction(x,y,player.x,player.y-2)+90 - image_angle)*0.08
		direction += (point_direction(x,y,player.x,player.y-2) - direction)*0.08
		}
		else
		{
		image_angle += (point_direction(x,y,player.x,player.y-2)+90-360 - image_angle)*0.08
		direction += (point_direction(x,y,player.x,player.y-2)-360 - direction)*0.08
		}
	}
}