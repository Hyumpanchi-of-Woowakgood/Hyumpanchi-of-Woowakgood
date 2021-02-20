/// @description Insert description here
// You can write your code in this editor
if global.nickname != "썩은물" && global.nickname != "씹찐따"
{
if global.never_move = 0
{
if place_meeting(x,y+1,obj_floor)
{
	if jump = 0 && cannot_move = 0 && cooltime = 0
	{
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
}
}