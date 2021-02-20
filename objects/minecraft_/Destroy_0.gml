/// @description Insert description here
// You can write your code in this editor
var can_real_des = 1
if instance_number(gyu_seong) > 0 && instance_number(hyumpanchi_bomb_panchi) > 0
{
can_real_des = 0
}

if (image_index = 3 && can_real_des = 1 && global.playing_scene = 0) || (image_index = 3 && instance_number(gyu_seong) > 0 && gyu_seong.scene >= 5)
{
	if !place_meeting(x,y,effect)
	{
	var _cre_ef = instance_create_depth(x,y,depth-1,rage_mode_knockback_for_mob_bomb)
	_cre_ef.image_xscale = 1.3
	_cre_ef.image_yscale = 1.3
	}

var sfx = audio_play_sound(bomb_sfx,false,0)
audio_sound_gain(sfx,0.1*global.master_volume*2*global.sfx_volume*image_xscale,0)
	
	view_shake(4,32*image_xscale,4)
	
	repeat(irandom_range(32,42))
	{
	var xx = x+irandom_range(-40*image_xscale,40*image_xscale)
	var yy = y+irandom_range(-40*image_xscale,40*image_xscale)
	randomize()
	
	repeat(999)
	{
		if point_distance(xx,y,x,y) > 40*image_xscale
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
		if point_distance(x,yy,x,y) > 40*image_xscale
		{
		var yy = y+irandom_range(-40*image_xscale,40*image_xscale)
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