/// @description Insert description here
// You can write your code in this editor
time ++

if des_timer > 0
{
des_timer ++
	if des_timer > 2
	{
	instance_destroy()
	}
}

if global.vr_weared = 1
{
	if image_index = 0
	{
	image_index = choose(1,2)
	}
}

alpha_ += (-0.01 - alpha_)*0.1

if instance_number(message_) > 0 && ignore_gravity = 1
{
instance_destroy()
}


if ignore_gravity = 0
{
gravity = 0.18
hspeed += (0 - hspeed)*0.01
	if y > 903
	{
	instance_create_depth(x,y,depth-1,effect_bomb)
	instance_destroy()
	}
}
else
{
dis_ += (hspeed*1500 - dis_)*0.01
}

image_angle += angle_plus*2


if place_meeting(x,y,player) && gravity <= 0
{
	if image_index = 1 || image_index = 2 || image_index = 3
	{
	instance_create_depth(x,y,depth-1,effect_bomb)
	des_timer = 1
	}
}



if global.vr_weared = 1 && (image_index = 1 || image_index = 2)
{
	if place_meeting(x,y,effect) || (gravity = 0 && (place_meeting(x,y,effect_attack1) || place_meeting(x,y,effect_attack2) || place_meeting(x,y,effect_attack3))) || place_meeting(x,y,effect_jump_attack) || place_meeting(x,y,effect_down_attack) || place_meeting(x,y,rage_mode_knockback) || place_meeting(x,y,ef_blood_dash_attack) || place_meeting(x,y,effect_attack_s) || place_meeting(x,y,effect_special_skill)
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



	var effect__ = instance_create_depth(x,y,depth+2,beat_saber_flake)
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

	view_shake(3,3,3)
	instance_destroy()
	}
}
else
{
	if place_meeting(x,y,effect) || place_meeting(x,y,effect_jump_attack) || place_meeting(x,y,rage_mode_knockback) || place_meeting(x,y,ef_blood_dash_attack) || place_meeting(x,y,effect_attack_s)
	{
		if sfx_played = 0
		{
		var sfx = audio_play_sound(guard,0,0)
		audio_sound_gain(sfx,0.03*global.master_volume*2*global.sfx_volume,0)
		sfx_played = 1
		}

	vspeed = irandom_range(-20,-10)/5
	hspeed = sign(player.x-x)*choose(-3,-4,-5)
	}
	
	if place_meeting(x,y,effect_attack1) || place_meeting(x,y,effect_attack2) || place_meeting(x,y,effect_attack3) || place_meeting(x,y,effect_down_attack) || place_meeting(x,y,rage_mode_knockback) || place_meeting(x,y,effect_attack_s)
	{
		if sfx_played = 0
		{
		var sfx = audio_play_sound(guard,0,0)
		audio_sound_gain(sfx,0.03*global.master_volume*2*global.sfx_volume,0)
		sfx_played = 1
		}

	vspeed = irandom_range(20,10)/5
	hspeed = sign(player.x-x)*choose(-3,-4,-5)
	}
}



ef++
if ef > 1
{
var effect__ = instance_create_depth(x,y,depth+1,minecraft_effect)
effect__.image_index = image_index
effect__.image_angle = image_angle
effect__.image_xscale = image_xscale
effect__.image_yscale = image_yscale
ef = 0
}