/// @description Insert description here
// You can write your code in this editor


if image_alpha < 1
{
image_alpha -= 0.1
}


if image_alpha <= 0
{
obj_camera.tv_x = 1280*0.8
obj_camera.tv_y = 720*0.8
instance_destroy()
	if global.vr_weared = 0
	{
	global.playing_scene = 0
	}
}

if global.gyu_seong_wave != 1
{
rage_dilay = 0
}


if rage_dilay > 220 && rage_mode <= 0
{
var sfx = audio_play_sound(sound5,0,0)
audio_sound_gain(sfx,0.13*global.master_volume*2*global.sfx_volume,0)

instance_create_depth(x,y,depth-1,rage_mode_knockback_for_mob)

var __i = choose(-1,1)
var bl_ef = instance_create_depth(x,y,depth-1,ef_blood)
var img_scale = -__i*irandom_range(8,15)/5
bl_ef.image_xscale = img_scale
bl_ef.image_yscale = abs(img_scale)
bl_ef.t_x = __i
bl_ef.image_angle = irandom_range(-90,90)
global.w_alpha = 1

var skill_red_ball_effect_rage = instance_create_depth(x,y,depth-1,red_circle_effect)
skill_red_ball_effect_rage.image_xscale = 0.8
skill_red_ball_effect_rage.image_yscale = 0.8
skill_red_ball_effect_rage.t_scale = 0.8
skill_red_ball_effect_rage.alarm[11] = 7
view_shake(1,0,1)

rage_mode = 1
rage_dilay = 0

if global.playing_scene <= 0
{
	if p_mes = -1
	{
	p_mes = instance_create_depth(x,y,player.depth-1,player_message)
	p_mes.text = "이런 야팔..."
	p_mes.target = id
	}
	else
	{
	instance_destroy(p_mes)
	p_mes = instance_create_depth(x,y,player.depth-1,player_message)
	p_mes.text = "이런 야팔..."
	p_mes.target = id
	}
}
	
alarm[8] = 180
}

if rage_mode > 0
{
rage_dilay = 0
rage_mode -= 0.002
red_effect_dilay ++

	if red_effect_dilay = 1
	{
	var ef = instance_create_depth(x,y,depth+1,gyu_seong_red_ef)
	var sprite = asset_get_index(string(sprite_get_name(string(sprite_index)))+"_white")
	if sprite_exists(sprite)
	{
	ef.sprite_index = sprite
	}
	else
	{
	ef.sprite_index = sprite_index
	}
	ef.image_index = image_index
	ef.image_xscale = image_xscale
	ef.image_yscale = image_yscale
	ef.image_alpha = 0.2*image_alpha
	}
	
	if red_effect_dilay > 1
	{
	red_effect_dilay = 0
	}
}

if rage_mode < 0 && rage_mode != -1
{
var __i = choose(-1,1)
var bl_ef = instance_create_depth(x,y,depth-1,ef_blood)
var img_scale = -__i*irandom_range(8,15)/5
bl_ef.image_xscale = img_scale
bl_ef.image_yscale = abs(img_scale)
bl_ef.t_x = __i
bl_ef.image_angle = irandom_range(-90,90)

var skill_red_ball_effect_rage = instance_create_depth(x,y,depth-1,red_circle_effect)
skill_red_ball_effect_rage.image_xscale = 0.8
skill_red_ball_effect_rage.image_yscale = 0.8
skill_red_ball_effect_rage.t_scale = 0.8
skill_red_ball_effect_rage.alarm[11] = 7
global.w_alpha = 1
		
rage_mode = -1
}


if global.playing_scene > 0
{
global.never_move = 1
instance_destroy(hyumpanchi_punch)
instance_destroy(hyumpanchi_minecraft)
instance_destroy(hyumpanchi_mad)
instance_destroy(hyumpanchi_banana)
instance_destroy(hyumpanchi_bomb_panchi)
}
else
{
global.never_move = 0
}

if hp <= 0 || (scene > 4 && global.playing_scene > 0 && global.vr_weared = 1)
{
obj_camera.t_x = x+(player.x - x)*0.5
obj_camera.t_y = y

	if global.gyu_seong_wave != 4.5 && global.gyu_seong_wave != 4.49
	{
	player.cannot_move = 1
	global.playing_scene = 1
	}

	if global.achievement_finish[10] = 0
	{
	global.achievement_finish[10] = 0.1
	}



	if global.gyu_seong_wave = 1
	{
	attack_paturn = 0
	stemina = 0
	instance_destroy(hyumpanchi_punch)
	instance_destroy(hyumpanchi_banana)
	
	if global.playing_scene = 1 && scene < 6
	{
	instance_destroy(minecraft_)
		if player.sprite_index = player.move_sprite
		{
		player.image_index = 0
		}
	}
	
		if global.achievement_finish[11] = 0
		{
		global.achievement_finish[11] = 0.1
		}
	
		if laser != -1
		{
		instance_destroy(laser)
		laser = -1
		}
	
		if scene = 4
		{
		scene = 5
		}
		
		if move_sprite = pl_move_mad_gyu_seong_spin_jump
		{
			if global.vr_weared = 0
			{
			global.movement_speed = 0
			gravity_ignore = 0
				if scene = 5
				{
					if p_mes_for_p = -1
					{
					p_mes_for_p = instance_create_depth(x,y,player.depth-1,player_message)
					p_mes_for_p.text = "다음에 부계로 다시 올거다 기다려라 "+string(global.nickname)
					p_mes_for_p.target = id
					}
				}
		
				if scene = 6
				{
					if p_mes_for_p = -1
					{
					p_mes_for_p = instance_create_depth(x,y,player.depth-1,player_message)
					p_mes_for_p.text = "규성아 아이디가 도대체 몇 개야"
					p_mes_for_p.target = player
					
						if global.voice_option = 0
						{
						var sfx = audio_play_sound(guseong_a,0,0)
						audio_sound_gain(sfx,0.73*global.master_volume*2*global.sfx_volume,0)
						}
					}
				}
		
				if scene = 7
				{
					if p_mes_for_p = -1
					{
					p_mes_for_p = instance_create_depth(x,y,player.depth-1,player_message)
					p_mes_for_p.text = "..."
					p_mes_for_p.target = player
					}
				}
		
				if scene = 8
				{
				global.gyu_seong_wave = 4.49
				player.cannot_move = 1
				scene = 9
				}
			
				if scene >= 9
				{
				global.gyu_seong_wave = 4.49
				player.cannot_move = 0
				
				hp = -1
				image_alpha -= 0.1
				move_sprite = pl_move_mad_gyu_seong_spin_jump
				}
			}
			else
			{
			attack_paturn = 0
			stemina = 0
				if scene < 8.6
				{
					if scene >= 5
					{
					global.hp = 10
					hp = 99
					player.cannot_move = 0
					attack_paturn = 0
					stemina = 0
					}
				}
			
				if scene = 5
				{
				instance_destroy(player_message)
				global.playing_scene = 1
				global.t_black_ = 2
			
					if global.black_ > 1.92
					{
					gravity_ignore = 0
					gravity = 0.1
					player.image_xscale = -abs(player.image_xscale)
					player.x = daepiso.x-216
					player.y = daepiso.y-64
					image_xscale = abs(image_xscale)
					x = daepiso.x+96
					y = daepiso.y-64
					gravity = 0.3
					vspeed = 0
					global.t_black_ = -0.01
					scene = 6
					gravity_ignore = 0
					attack_dilay2 = 0
					}
				}
			
				if scene >= 6
				{
					rage_mode = 0
					attack_paturn = 0
					stemina = 0
					
					if scene < 11
					{
					scene += 0.005
					}

				
					if scene = 6.1 && scene < 6.5
					{
					global.movement_speed = 3
					movement_speed = -3
					}
				
					if scene = 6.5 && scene < 6.6
					{
					global.movement_speed = 16
					movement_speed = -16
					}
				
					if scene = 6.55
					{
					player.dash_attack = 1
					player.cannot_move = 1
					global.stemina_cooltime = 0
				
					attack_ = 1
					hit_motion = 0
					hit_cooltime = 0
					}
					
					if scene > 6.55 && scene < 6.65
					{
						if player.dash_attack >= 5
						{
						player.dash_attack = 0
						player.double_pressed_left = 0
						player.double_pressed_right = 0
						player.cannot_move = 0
						player.sprite_index = move_sprite
						player.image_index = 0

						player.movement_speed = 9
						

						player.image_xscale = abs(player.image_xscale)

							repeat(3)
							{
							var ef = instance_create_depth(player.x,player.y,player.depth+1,gyu_seong_red_ef)
							var sprite = asset_get_index(string(sprite_get_name(string(player.rush_attack_sprite)))+"_white")
							if sprite_exists(sprite)
							{
							ef.sprite_index = sprite
							}
							else
							{
							ef.sprite_index = player.rush_attack_sprite
							}
							ef.image_index = 9
							ef.image_xscale = player.image_xscale*1.01
							ef.image_yscale = player.image_yscale*1.01
							ef.image_alpha = 0.2*player.image_alpha
							ef.image_angle = player.image_angle
							}
						}
						else
						{
							if player.movement_speed > 1
							{
							player.sprite_index = player.jump_attack_sprite
							player.image_index = 0
							}
							else
							{
							player.sprite_index = player.move_sprite
							}
						}
					}

				
					if scene = 6.85
					{
					player.depth = depth-1
					image_xscale = -abs(image_xscale)
					player.image_xscale = abs(player.image_xscale)
						repeat(3)
						{
						var ef = instance_create_depth(player.x,player.y,player.depth+1,gyu_seong_red_ef)
						var sprite = asset_get_index(string(sprite_get_name(string(pl_move_skeleton_jump_attack_beat_saber)))+"_white")
						if sprite_exists(sprite)
						{
						ef.sprite_index = sprite
						}
						else
						{
						ef.sprite_index = pl_move_skeleton_jump_attack_beat_saber
						}
						ef.image_index = 0
						ef.image_xscale = player.image_xscale*1.01
						ef.image_yscale = player.image_yscale*1.01
						ef.image_alpha = 0.2*player.image_alpha
						ef.image_angle = player.image_angle
						}
					}
					
					
					if scene = 7
					{
					player.movement_speed = -5
					player.sprite_index = player.move_sprite
					movement_speed = -6
					player.image_xscale = abs(player.image_xscale)
					player.turning_attack_used ++
					player.spin_attack = 1
					player.cannot_move = 1
					player.jump = 0
					player.jump_end_motion = 0
					player.b_movement_speed = 0
					player.jump_vsp_up = 1
					player.cooltime = 1
					player.gravity = 0.2
					player.vspeed = -5.1
				
					image_xscale = -abs(image_xscale)
					}
				
					if scene = 7.05 || scene = 7.1 || scene = 7.15
					{
					var bomb = instance_create_depth(x,y-49,player.depth-1,minecraft_)
					bomb.image_xscale = 0.75
					bomb.image_yscale = 0.75
					bomb.ignore_gravity = 0
					bomb.hspeed = 6.6
					bomb.vspeed = -3.5
					}
					
					if scene = 7.035
					{
					attack_dilay2 = 1
					random_attack_chance = 1
					
						if player.y >= y-16
						{
						var sfx = audio_play_sound(sound5,0,0)
						audio_sound_gain(sfx,0.13*global.master_volume*2*global.sfx_volume,0)
		
						var __i = choose(-1,1)
						var bl_ef = instance_create_depth(x,y,depth-1,ef_blood)
						var img_scale = -__i*irandom_range(8,15)/5
						bl_ef.image_xscale = img_scale*0.5
						bl_ef.image_yscale = abs(img_scale)*0.5
						bl_ef.t_x = __i
						bl_ef.image_angle = irandom_range(-90,90)
						}
					}
				
					if scene = 7.3
					{
					global.movement_speed = 25
					movement_speed = -25
					}
				
					if scene >= 8 && scene < 8.25
					{
					global.movement_speed = -5.6
					movement_speed = 5.6
					}
				
					if scene >= 8.25 && scene < 8.35
					{
					global.movement_speed = -18.3
					movement_speed = 16
					}
					
					if scene >= 8.25
					{
					global.terror -= 0.05
					}
					
					if scene >= 8.25 && scene <= 8.45
					{
					room_speed_set += (-20 - room_speed_set)*0.1
					room_speed = 30+room_speed_set
					}
					
					if scene > 8.45
					{
					room_speed_set += (30 - room_speed_set)*0.1
					room_speed = 30+room_speed_set
					}
					
				
					if scene = 8.15
					{
					var sfx = audio_play_sound(last_scene,0,0)
					audio_sound_gain(sfx,0.7*global.master_volume*2*global.sfx_volume,0)
					global.terror_zero = 0
					}
				
					if scene = 8.27
					{
					global.terror = 1.3
					attack_ = 1
					hit_motion = 0
					hit_cooltime = 0
				
					player.attack_ = 5.48
					player.cooltime = 1
					player.keep_attacking = 1
					player.cannot_move = 1
					}
					
					
					if scene >= 8.27
					{				
						if room_speed < 60
						{
						obj_camera.v_x = 1280*0.75
						obj_camera.v_y = 720*0.75
						}
					}
				
					if scene = 9.5
					{
					global.terror = 1.1
					global.terror_zero = 0
					lighting = audio_play_sound(electric,0,0)
						if global.terror >= 0.7
						{
						audio_sound_gain(lighting,global.master_volume*2*global.sfx_volume*(global.terror),0)
						}
						
						if global.terror < 0.7 && global.terror >= 0.3
						{
						audio_sound_gain(lighting,global.master_volume*2*global.sfx_volume*(global.terror+0.3),0)
						}
						
						if global.terror < 0.3 && global.terror >= 0.1
						{
						audio_sound_gain(lighting,global.master_volume*2*global.sfx_volume*(global.terror+0.5),0)
						}
						
						if global.terror < 0.1 && global.terror >= 0
						{
						audio_sound_gain(lighting,global.master_volume*2*global.sfx_volume*(global.terror+0.1),0)
						}
					}
				
					if audio_is_playing(electric)
					{
						if global.terror >= 0.7
						{
						audio_sound_gain(lighting,global.master_volume*2*global.sfx_volume*(global.terror),0)
						}
						
						if global.terror < 0.7 && global.terror >= 0.3
						{
						audio_sound_gain(lighting,global.master_volume*2*global.sfx_volume*(global.terror+0.3),0)
						}
						
						if global.terror < 0.3 && global.terror >= 0.1
						{
						audio_sound_gain(lighting,global.master_volume*2*global.sfx_volume*(global.terror+0.5),0)
						}
						
						if global.terror < 0.1 && global.terror >= 0
						{
						audio_sound_gain(lighting,global.master_volume*2*global.sfx_volume*(global.terror+0.1),0)
						}
					}
					
					if scene = 9 || scene = 9.02
					{
						randomize()
						repeat(irandom_range(1,3))
						{
						var _fl_blood = instance_create_depth(x,y,depth,blood_gravity)
						_fl_blood.hspeed = irandom_range(10,65)/10
						_fl_blood.vspeed = irandom_range(10,65)/10
						_fl_blood.sprite_index = sprite981
							if global.blood_effect > 0
							{
							_fl_blood.sprite_index = sprite98
							}
							
						var _fl_blood = instance_create_depth(x,y,depth-1,ef_blood_2)
						_fl_blood.image_xscale = 0.5
						_fl_blood.image_yscale = 0.5
							if global.blood_effect > 0
							{
							_fl_blood.sprite_index = sprite98
							}
						}
					}
					
					if scene >= 9.1 && scene < 9.2
					{
					movement_speed = 1.2
					}
					
					if scene = 9.1
					{
						randomize()
						repeat(irandom_range(1,3))
						{
						var _fl_blood = instance_create_depth(x,y,depth,blood_gravity)
						_fl_blood.hspeed = irandom_range(10,65)/10
						_fl_blood.vspeed = -irandom_range(10,65)/10
						_fl_blood.sprite_index = sprite981
							if global.blood_effect > 0
							{
							_fl_blood.sprite_index = sprite98
							}
						}
					}

					if scene = 9.3
					{
					hp = -1
					player.draw_x = player.x
					var sfx = audio_play_sound(down_attack_sfx,0,0)
					audio_sound_gain(sfx,0.45*global.master_volume*2*global.sfx_volume,0)
					}
				}
			
				if scene = 11
				{
					if global.gyu_seong_wave != 4.5
					{
						if p_mes_for_p = -1
						{
						p_mes_for_p = instance_create_depth(x,y,player.depth-1,player_message)
						p_mes_for_p.text = "..."
						p_mes_for_p.target = player
						scene_dilay = 1
						alarm[9] = 30
						}
					}
				player.cannot_move = 1
				}
				
				if scene = 12
				{
					if global.gyu_seong_wave != 4.5
					{
						if p_mes_for_p = -1
						{
						p_mes_for_p = instance_create_depth(x,y,player.depth-1,player_message)
						p_mes_for_p.text = "...쓰읍"
						p_mes_for_p.target = player
						scene_dilay = 1
						alarm[9] = 30
						}
					}
				player.cannot_move = 1
				}
			
				if scene = 13
				{
					if global.gyu_seong_wave != 4.5
					{
						if p_mes_for_p = -1
						{
						p_mes_for_p = instance_create_depth(x,y,player.depth-1,player_message)
						p_mes_for_p.text = "피곤한데 잠이나 자러 가야겠다"
						p_mes_for_p.target = player
						scene_dilay = 1
						alarm[9] = 30
						}
					}
				player.cannot_move = 1
				}
				
				if scene = 14
				{
					if global.gyu_seong_wave != 4.5
					{
						if p_mes_for_p = -1
						{
						p_mes_for_p = instance_create_depth(x,y,player.depth-1,player_message)
						p_mes_for_p.text = "유바"
						p_mes_for_p.target = player
						scene_dilay = 1
						
							if global.voice_option = 0
							{
							var sfx = audio_play_sound(youba,0,0)
							audio_sound_gain(sfx,0.45*global.master_volume*2*global.sfx_volume,0)
							alarm[9] = 30
							}
						}
					}
				player.cannot_move = 1
				}
			
				if scene_dilay = 0 && scene >= 15
				{
				image_alpha -= 0.1
				move_sprite = pl_move_mad_gyu_seong_spin_jump
				player.image_xscale = -abs(player.image_xscale)
					if global.gyu_seong_wave != 4.5
					{
					global.gyu_seong_wave = 4.5
					code.ending_act = 1
					code.alarm[9] = 30
					}
				}
			}
		}
	}

	

	
	if scene = 0 && scene_a = 0
	{
	
	if p_mes_for_p = -1
	{
	global.playing_scene = 1
	global.movement_speed = 0
	p_mes_for_p = instance_create_depth(x,y,player.depth-1,player_message)
	p_mes_for_p.text = "규성아. 조용히 해"
	if global.vr_weared = 1
	{
	p_mes_for_p.text = "규성아. 또 찾아왔냐? 너 또 밴이야 규성아ㅋㅋㅋ"
	}
	p_mes_for_p.target = player
	
		if global.voice_option = 0
		{
		var sfx = audio_play_sound(shut_up,0,0)
		audio_sound_gain(sfx,0.5*global.master_volume*2*global.sfx_volume,0)
		}
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
		if p_mes_for_p = -1
		{
		p_mes_for_p = instance_create_depth(x,y,player.depth-1,player_message)
		p_mes_for_p.text = "너 밴이야 규성아."
		p_mes_for_p.target = player
		if global.vr_weared = 1
		{
		p_mes_for_p.text = "..."
		p_mes_for_p.target = id
		}
		}
	}
	
	if scene = 2
	{
		if global.vr_weared = 0
		{
			if p_mes = -1
			{
			p_mes = instance_create_depth(x,y,player.depth-1,player_message)
			p_mes.text = "내가 밴 한다고 해서 가만히 있을거 같아?"
			p_mes.target = id
			}
		}
		else
		{
			if p_mes = -1
			{
			p_mes = instance_create_depth(x,y,player.depth-1,player_message)
			p_mes.text = "...ㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋ"
			p_mes.target = id
			}
		}
	}
	
	if scene = 3
	{
		if global.vr_weared = 0
		{
			if p_mes = -1
			{
			p_mes = instance_create_depth(x,y,player.depth-1,player_message)
			p_mes.text = "어림도 없지"
			p_mes.target = id
			}
		}
		else
		{
			if p_mes = -1
			{
			p_mes = instance_create_depth(x,y,player.depth-1,player_message)
			p_mes.text = "마지막이다 "+string(global.nickname)+". 이제부터가 진짜다"
			p_mes.target = id
			}
		}
	obj_camera.v_x = 1280*0.6
	obj_camera.v_y = 720*0.6
	obj_camera.t_x = x
	obj_camera.t_y = y
	alarm[0] = 70
	alarm[10] = 200
	scene ++
	}
	
	if scene >= 4 && ss = 0
	{
	obj_camera.v_x = 1280*0.6
	obj_camera.v_y = 720*0.6
	obj_camera.t_x = x
	obj_camera.t_y = y
	}
}








if place_meeting(x,y,mob_parents) && player.charge_attack = 0
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