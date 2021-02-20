/// @description Insert description here
// You can write your code in this editor
var can_real_des = 1
if instance_number(gyu_seong) > 0 && instance_number(hyumpanchi_bomb_panchi) > 0
{
can_real_des = 0
}

if global.vr_weared = 1 && can_real_des = 1
{
var sfx = audio_play_sound(choose(hit_sfx1_beat_saber,hit_sfx2_beat_saber,hit_sfx3_beat_saber),0,0)
audio_sound_gain(sfx,0.2*global.master_volume*2*global.sfx_volume,0)



	var effect__ = instance_create_depth(x,y,depth+1,beat_saber_flake)
	if image_index = 1
	{
	effect__.image_index = 0
	}
	if image_index = 2
	{
	effect__.image_index = 2
	}
	effect__.image_angle = image_angle
	effect__.image_xscale = image_xscale
	effect__.image_yscale = image_yscale
	effect__.vspeed = irandom_range(-20,-5)/9
	effect__.hspeed = sign(player.image_xscale)*irandom_range(-20,-5)/6



	var effect__ = instance_create_depth(x,y,depth+1,beat_saber_flake)
	if image_index = 1
	{
	effect__.image_index = 1
	}
	if image_index = 2
	{
	effect__.image_index = 3
	}
	effect__.image_angle = image_angle
	effect__.image_xscale = image_xscale
	effect__.image_yscale = image_yscale
	effect__.vspeed = irandom_range(-20,-5)/9
	effect__.hspeed = sign(player.image_xscale)*irandom_range(-20,-5)/6
}








if image_index = 3
{

var sfx = audio_play_sound(bomb_sfx,false,0)
audio_sound_gain(sfx,0.1*global.master_volume*2*global.sfx_volume,0)

var _cre_ef = instance_create_depth(x,y,depth-1,rage_mode_knockback_for_mob_bomb)
_cre_ef.image_xscale = 1.3
_cre_ef.image_yscale = 1.3
	
	view_shake(4,32,4)
	
	repeat(irandom_range(32,42))
	{
	var xx = x+irandom_range(-40,40)
	var yy = y+irandom_range(-40,40)
	randomize()
	
	repeat(999)
	{
		if point_distance(xx,y,x,y) > 40
		{
		var xx = x+irandom_range(-40,40)
		}
		else
		{
		break;
		}
	}
	
	
	repeat(999)
	{
		if point_distance(x,yy,x,y) > 40
		{
		var yy = y+irandom_range(-40,40)
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
}