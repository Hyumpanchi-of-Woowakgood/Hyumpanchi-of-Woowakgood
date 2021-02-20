/// @description Insert description here
// You can write your code in this editor

if hp <= 0
{
player.cannot_move = 1
global.playing_scene = 1

	if global.achievement_finish[17] = 0
	{
	global.achievement_finish[17] = 0.1
	}


if player.sprite_index = pl_move_skeleton
{
player.image_index = 0
}



if global.gyu_seong_wave = 5
{
attack_paturn = 0
stemina = 0
instance_destroy(hyumpanchi_punch)
instance_destroy(hyumpanchi_banana)
instance_destroy(minecraft_)
	
	if global.achievement_finish[18] = 0
	{
	global.achievement_finish[18] = 0.1
	}
	
	

	
	if scene = 0 && scene_a = 0
	{
	
	if p_mes = -1
	{
	global.movement_speed = 0
	p_mes = instance_create_depth(x,y,player.depth-1,player_message)
	p_mes.text = "우.왁.굳.처.리.한.다"
	p_mes.target = id
	
	var sfx = audio_play_sound(aaang_,0,0)
	audio_sound_gain(sfx,0.2*global.master_volume*2*global.sfx_volume,0)
	audio_sound_pitch(sfx,0.9)
	}
	
	if p_mes != -1
	{
	instance_destroy(p_mes)
	p_mes = -1
	}
	
	scene_dilay = 1
	alarm[9] = 30
	scene_a = 1
	}
	
	if scene = 1
	{
		if p_mes = -1
		{
		p_mes = instance_create_depth(x,y,player.depth-1,player_message)
		p_mes.text = "우.왁.굳.처...."
		p_mes.target = id
		
		var sfx = audio_play_sound(aaang_,0,0)
		audio_sound_gain(sfx,0.2*global.master_volume*2*global.sfx_volume,0)
		audio_sound_pitch(sfx,0.8)
		}
	}
	
	if scene = 2
	{
		if p_mes_for_p = -1
		{
		p_mes_for_p = instance_create_depth(x,y,player.depth-1,player_message)
		p_mes_for_p.text = "..."
		p_mes_for_p.target = player
		}
	}
	
	if scene = 3
	{
		if p_mes_for_p = -1
		{
		p_mes_for_p = instance_create_depth(x,y,player.depth-1,player_message)
		p_mes_for_p.text = "피곤한데 자러가야겠다"
		p_mes_for_p.target = player
		}
	scene ++
	alarm[10] = 200
	}
}
}








if place_meeting(x,y,mob_parents)
{
var p_m_ins = instance_place(x,y,mob_parents)
	if (p_m_ins.object_index) = player
	{
	var __i = sign(p_m_ins.x - x)

		if __i = 0
		{
		__i = choose(-0.2,0.2)
		}
	t_x = player.x
	movement_speed = 0
	movement_speed -= __i*2
		if cannot_move = 0
		{
		cannot_move = 1
		alarm[2] = 14
		}
	}
	else
	{
		if p_m_ins.sprite_index != p_m_ins.hurt_sprite
		{
		var __i = sign(p_m_ins.x - x)

			if __i = 0
			{
			__i = choose(-0.2,0.2)
			}
		t_x = player.x
		movement_speed = 0
		movement_speed -= __i*2
			if cannot_move = 0
			{
			cannot_move = 1
			alarm[2] = 14
			}
		}
	}
}
