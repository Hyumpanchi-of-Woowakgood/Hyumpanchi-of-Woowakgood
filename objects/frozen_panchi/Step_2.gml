/// @description Insert description here
// You can write your code in this editor
if ice_hp > 0
{
	if damage_dilay = 0 && place_meeting(x,y,effect)
	{
	ice_hp -= 27+global.skill_turning_attack*2
	dilay = 10
	damage_dilay = 1
	var sfx = audio_play_sound(guard,0,0)
	audio_sound_gain(sfx,0.1*global.master_volume*2*global.sfx_volume,0)

	var sfx = audio_play_sound(choose(global.hit_sfx_1,global.hit_sfx_2,global.hit_sfx_3),0,0)
	audio_sound_gain(sfx,0.1*global.master_volume*2*global.sfx_volume,0)
	
	if global.vr_weared > 0 || global.replay_time > 1
	{
	var sfx = audio_play_sound(sparking_sound,0,0)
	audio_sound_gain(sfx,0.2*global.master_volume*2*global.sfx_volume,0)
	}
	
	
	var sfx = audio_play_sound(footstep_sfx,0,0)
	audio_sound_gain(sfx,(1 - point_distance(x,y,player.x,player.y)/64)*0.2*global.master_volume*2*global.sfx_volume,0)
	
	var random_dir = sign(player.x - x)
	if random_dir = 0
	{
	random_dir = choose(-1,1)
	}
	repeat(8)
	{
	var _ef = instance_create_depth(player.x-image_xscale*4,player.y+irandom_range(-13,0),player.depth-1,effect_spark_ice)
	_ef.hspeed = irandom_range(5,20)*random_dir
	_ef.vspeed = irandom_range(-4,2)
	}
	
	alarm[1] = 10
	}

	if damage_dilay = 0 && place_meeting(x,y,effect_jump_attack)
	{
	ice_hp -= 21+global.skill_jump_attack*2
	dilay = 10
	damage_dilay = 1

	var sfx = audio_play_sound(guard,0,0)
	audio_sound_gain(sfx,0.1*global.master_volume*2*global.sfx_volume,0)

	var sfx = audio_play_sound(choose(global.hit_sfx_1,global.hit_sfx_2,global.hit_sfx_3),0,0)
	audio_sound_gain(sfx,0.1*global.master_volume*2*global.sfx_volume,0)
	
	if global.vr_weared > 0 || global.replay_time > 1
	{
	var sfx = audio_play_sound(sparking_sound,0,0)
	audio_sound_gain(sfx,0.2*global.master_volume*2*global.sfx_volume,0)
	}
	
	
	var sfx = audio_play_sound(footstep_sfx,0,0)
	audio_sound_gain(sfx,(1 - point_distance(x,y,player.x,player.y)/64)*0.2*global.master_volume*2*global.sfx_volume,0)
	
	var random_dir = sign(player.x - x)
	if random_dir = 0
	{
	random_dir = choose(-1,1)
	}
	repeat(8)
	{
	var _ef = instance_create_depth(player.x-image_xscale*4,player.y+irandom_range(-13,0),player.depth-1,effect_spark_ice)
	_ef.hspeed = irandom_range(5,20)*random_dir
	_ef.vspeed = irandom_range(-4,2)
	}
	
	alarm[1] = 6
	}

	if damage_dilay = 0 && place_meeting(x,y,effect_down_attack)
	{
	ice_hp -= 18+global.normal_attack_dmg*0.5
	dilay = 10
	damage_dilay = 1

	var sfx = audio_play_sound(guard,0,0)
	audio_sound_gain(sfx,0.1*global.master_volume*2*global.sfx_volume,0)

	var sfx = audio_play_sound(choose(global.hit_sfx_1,global.hit_sfx_2,global.hit_sfx_3),0,0)
	audio_sound_gain(sfx,0.1*global.master_volume*2*global.sfx_volume,0)
	
	if global.vr_weared > 0 || global.replay_time > 1
	{
	var sfx = audio_play_sound(sparking_sound,0,0)
	audio_sound_gain(sfx,0.2*global.master_volume*2*global.sfx_volume,0)
	}
	
	
	var sfx = audio_play_sound(footstep_sfx,0,0)
	audio_sound_gain(sfx,(1 - point_distance(x,y,player.x,player.y)/64)*0.2*global.master_volume*2*global.sfx_volume,0)
	
	var random_dir = sign(player.x - x)
	if random_dir = 0
	{
	random_dir = choose(-1,1)
	}
	repeat(8)
	{
	var _ef = instance_create_depth(player.x-image_xscale*4,player.y+irandom_range(-13,0),player.depth-1,effect_spark_ice)
	_ef.hspeed = irandom_range(5,20)*random_dir
	_ef.vspeed = irandom_range(-4,2)
	}
	
	alarm[1] = 6
	}

	if damage_dilay = 0 && place_meeting(x,y,effect_attack1)
	{
	ice_hp -= 16+global.normal_attack_dmg*0.6
	dilay = 10
	damage_dilay = 1

	var sfx = audio_play_sound(guard,0,0)
	audio_sound_gain(sfx,0.1*global.master_volume*2*global.sfx_volume,0)

	var sfx = audio_play_sound(choose(global.hit_sfx_1,global.hit_sfx_2,global.hit_sfx_3),0,0)
	audio_sound_gain(sfx,0.1*global.master_volume*2*global.sfx_volume,0)
	
	if global.vr_weared > 0 || global.replay_time > 1
	{
	var sfx = audio_play_sound(sparking_sound,0,0)
	audio_sound_gain(sfx,0.2*global.master_volume*2*global.sfx_volume,0)
	}
	
	
	var sfx = audio_play_sound(footstep_sfx,0,0)
	audio_sound_gain(sfx,(1 - point_distance(x,y,player.x,player.y)/64)*0.2*global.master_volume*2*global.sfx_volume,0)
	
	var random_dir = sign(player.x - x)
	if random_dir = 0
	{
	random_dir = choose(-1,1)
	}
	repeat(8)
	{
	var _ef = instance_create_depth(player.x-image_xscale*4,player.y+irandom_range(-13,0),player.depth-1,effect_spark_ice)
	_ef.hspeed = irandom_range(5,20)*random_dir
	_ef.vspeed = irandom_range(-4,2)
	}
	
	alarm[1] = 10
	}

	if damage_dilay = 0 && place_meeting(x,y,effect_attack2)
	{
	ice_hp -= 19+global.normal_attack_dmg*0.6
	dilay = 10
	damage_dilay = 1

	var sfx = audio_play_sound(guard,0,0)
	audio_sound_gain(sfx,0.1*global.master_volume*2*global.sfx_volume,0)

	var sfx = audio_play_sound(choose(global.hit_sfx_1,global.hit_sfx_2,global.hit_sfx_3),0,0)
	audio_sound_gain(sfx,0.1*global.master_volume*2*global.sfx_volume,0)
	
	if global.vr_weared > 0 || global.replay_time > 1
	{
	var sfx = audio_play_sound(sparking_sound,0,0)
	audio_sound_gain(sfx,0.2*global.master_volume*2*global.sfx_volume,0)
	}
	
	
	var sfx = audio_play_sound(footstep_sfx,0,0)
	audio_sound_gain(sfx,(1 - point_distance(x,y,player.x,player.y)/64)*0.2*global.master_volume*2*global.sfx_volume,0)
	
	var random_dir = sign(player.x - x)
	if random_dir = 0
	{
	random_dir = choose(-1,1)
	}
	repeat(8)
	{
	var _ef = instance_create_depth(player.x-image_xscale*4,player.y+irandom_range(-13,0),player.depth-1,effect_spark_ice)
	_ef.hspeed = irandom_range(5,20)*random_dir
	_ef.vspeed = irandom_range(-4,2)
	}
	
	alarm[1] = 10
	}

	if damage_dilay = 0 && place_meeting(x,y,effect_attack3)
	{
	ice_hp -= 26+global.normal_attack_dmg*0.6
	dilay = 10
	damage_dilay = 1

	var sfx = audio_play_sound(guard,0,0)
	audio_sound_gain(sfx,0.1*global.master_volume*2*global.sfx_volume,0)

	var sfx = audio_play_sound(choose(global.hit_sfx_1,global.hit_sfx_2,global.hit_sfx_3),0,0)
	audio_sound_gain(sfx,0.1*global.master_volume*2*global.sfx_volume,0)
	
	if global.vr_weared > 0 || global.replay_time > 1
	{
	var sfx = audio_play_sound(sparking_sound,0,0)
	audio_sound_gain(sfx,0.2*global.master_volume*2*global.sfx_volume,0)
	}
	
	
	var sfx = audio_play_sound(footstep_sfx,0,0)
	audio_sound_gain(sfx,(1 - point_distance(x,y,player.x,player.y)/64)*0.2*global.master_volume*2*global.sfx_volume,0)
	
	var random_dir = sign(player.x - x)
	if random_dir = 0
	{
	random_dir = choose(-1,1)
	}
	repeat(8)
	{
	var _ef = instance_create_depth(player.x-image_xscale*4,player.y+irandom_range(-13,0),player.depth-1,effect_spark_ice)
	_ef.hspeed = irandom_range(5,20)*random_dir
	_ef.vspeed = irandom_range(-4,2)
	}
	
	alarm[1] = 10
	}

	if damage_dilay = 0 && place_meeting(x,y,effect_attack_s)
	{
	ice_hp -= 32+global.normal_attack_dmg*6
	dilay = 10
	damage_dilay = 1

	var sfx = audio_play_sound(guard,0,0)
	audio_sound_gain(sfx,0.1*global.master_volume*2*global.sfx_volume,0)

	var sfx = audio_play_sound(choose(global.hit_sfx_1,global.hit_sfx_2,global.hit_sfx_3),0,0)
	audio_sound_gain(sfx,0.1*global.master_volume*2*global.sfx_volume,0)
	
	if global.vr_weared > 0 || global.replay_time > 1
	{
	var sfx = audio_play_sound(sparking_sound,0,0)
	audio_sound_gain(sfx,0.2*global.master_volume*2*global.sfx_volume,0)
	}
	
	
	var sfx = audio_play_sound(footstep_sfx,0,0)
	audio_sound_gain(sfx,(1 - point_distance(x,y,player.x,player.y)/64)*0.2*global.master_volume*2*global.sfx_volume,0)
	
	var random_dir = sign(player.x - x)
	if random_dir = 0
	{
	random_dir = choose(-1,1)
	}
	repeat(8)
	{
	var _ef = instance_create_depth(player.x-image_xscale*4,player.y+irandom_range(-13,0),player.depth-1,effect_spark_ice)
	_ef.hspeed = irandom_range(5,20)*random_dir
	_ef.vspeed = irandom_range(-4,2)
	}
	
	alarm[1] = 10
	}

	if damage_dilay = 0 && place_meeting(x,y,ef_blood_dash_attack)
	{
	ice_hp -= 92+global.normal_attack_dmg*21
	dilay = 10
	damage_dilay = 1

	var sfx = audio_play_sound(guard,0,0)
	audio_sound_gain(sfx,0.1*global.master_volume*2*global.sfx_volume,0)

	var sfx = audio_play_sound(choose(global.hit_sfx_1,global.hit_sfx_2,global.hit_sfx_3),0,0)
	audio_sound_gain(sfx,0.1*global.master_volume*2*global.sfx_volume,0)
	
	if global.vr_weared > 0 || global.replay_time > 1
	{
	var sfx = audio_play_sound(sparking_sound,0,0)
	audio_sound_gain(sfx,0.2*global.master_volume*2*global.sfx_volume,0)
	}
	
	
	var sfx = audio_play_sound(footstep_sfx,0,0)
	audio_sound_gain(sfx,(1 - point_distance(x,y,player.x,player.y)/64)*0.2*global.master_volume*2*global.sfx_volume,0)
	
	var random_dir = sign(player.x - x)
	if random_dir = 0
	{
	random_dir = choose(-1,1)
	}
	repeat(8)
	{
	var _ef = instance_create_depth(player.x-image_xscale*4,player.y+irandom_range(-13,0),player.depth-1,effect_spark_ice)
	_ef.hspeed = irandom_range(5,20)*random_dir
	_ef.vspeed = irandom_range(-4,2)
	}
	
	alarm[1] = 10
	}

	if damage_dilay = 0 && place_meeting(x,y,charging_attack)
	{
	ice_hp -= 64+global.normal_attack_dmg*2
	dilay = 10
	damage_dilay = 1

	var sfx = audio_play_sound(guard,0,0)
	audio_sound_gain(sfx,0.1*global.master_volume*2*global.sfx_volume,0)

	var sfx = audio_play_sound(choose(global.hit_sfx_1,global.hit_sfx_2,global.hit_sfx_3),0,0)
	audio_sound_gain(sfx,0.1*global.master_volume*2*global.sfx_volume,0)
	
	var sfx = audio_play_sound(footstep_sfx,0,0)
	audio_sound_gain(sfx,(1 - point_distance(x,y,player.x,player.y)/64)*0.2*global.master_volume*2*global.sfx_volume,0)
	
	var random_dir = sign(player.x - x)
	if random_dir = 0
	{
	random_dir = choose(-1,1)
	}
	repeat(8)
	{
	var _ef = instance_create_depth(player.x-image_xscale*4,player.y+irandom_range(-13,0),player.depth-1,effect_spark_ice)
	_ef.hspeed = irandom_range(5,20)*random_dir
	_ef.vspeed = irandom_range(-4,2)
	}
	
	alarm[1] = 3
	}
	

	if damage_dilay = 0 && place_meeting(x,y,effect_special_skill)
	{
	ice_hp -= 7+global.normal_attack_dmg*2
	dilay = 10
	damage_dilay = 1

	var sfx = audio_play_sound(guard,0,0)
	audio_sound_gain(sfx,0.1*global.master_volume*2*global.sfx_volume,0)

	var sfx = audio_play_sound(choose(global.hit_sfx_1,global.hit_sfx_2,global.hit_sfx_3),0,0)
	audio_sound_gain(sfx,0.1*global.master_volume*2*global.sfx_volume,0)
	
	if global.vr_weared > 0 || global.replay_time > 1
	{
	var sfx = audio_play_sound(sparking_sound,0,0)
	audio_sound_gain(sfx,0.2*global.master_volume*2*global.sfx_volume,0)
	}
	
	
	var sfx = audio_play_sound(footstep_sfx,0,0)
	audio_sound_gain(sfx,(1 - point_distance(x,y,player.x,player.y)/64)*0.2*global.master_volume*2*global.sfx_volume,0)
	
	var random_dir = sign(player.x - x)
	if random_dir = 0
	{
	random_dir = choose(-1,1)
	}
	repeat(8)
	{
	var _ef = instance_create_depth(player.x-image_xscale*4,player.y+irandom_range(-13,0),player.depth-1,effect_spark_ice)
	_ef.hspeed = irandom_range(5,20)*random_dir
	_ef.vspeed = irandom_range(-4,2)
	}
	
	alarm[1] = 3
	}
	
	if ice_hp <= 0 && global.boots_ = 0
	{
		repeat(choose(6,7,7,8,8,9,9,9,10,10,11,12))
		{
		randomize()
		var dust = instance_create_depth(x+irandom_range(-10,10),y+irandom_range(-10,10),depth-1,pepsi_effect)
		var scale = irandom_range(20,40)/50
		dust.image_xscale = scale
		dust.image_yscale = scale
		dust.vspeed = irandom_range(-50,50)/37
		dust.hspeed = irandom_range(-50,50)/37
		dust.image_alpha = 1
		}
	var sfx = audio_play_sound(mob_faint,0,0)
	audio_sound_gain(sfx,0.4*global.master_volume*2*global.sfx_volume,0)
	
	set_player_x = 1
	global.playing_scene = 1
	global.never_move = 1
	}
}