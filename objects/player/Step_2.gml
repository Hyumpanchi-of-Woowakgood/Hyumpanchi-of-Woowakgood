/// @description Insert description here
// You can write your code in this editor

if y > room_height
{
movement_speed += (0 - movement_speed)*0.1
}


if gravity = 0
{
	if global.playing_scene = 0
	{
	movement_speed += (0 - movement_speed)*0.1
	}
	else
	{
	movement_speed += (0 - movement_speed)*0.03
	
		if abs(movement_speed) > 2
		{
		movement_speed += (0 - movement_speed)*0.02
		}
		
			if gravity = 0
			{
				repeat(floor(movement_speed))
				{ 
				randomize()
				var dust = instance_create_depth(x+irandom_range(-8,8)-movement_speed*0.5,y+28+irandom_range(-2,2),depth+1,pepsi_effect)
				dust.image_xscale = 0.13
				dust.image_yscale = 0.13
				dust.vspeed = -irandom_range(100,200)/200
				dust.hspeed = (-global.movement_speed*irandom_range(10,50)/50)+irandom_range(-20,20)/5
				dust.image_alpha = 0.4
				}
			}
		
		
		if abs(movement_speed) <= 0.5
		{
		movement_speed = 0
		}
	}
attack_in_air_cool = 0
}
else
{
movement_speed += (0 - movement_speed)*0.01
}
x += movement_speed

if abs(movement_speed) < 0.1
{
movement_speed = 0
}

if y > room_height+100
{
hp_minus_for_player(global.hp+1)
}





if global.n_room = 0 && p_mes_guide_vote = -1 && global.hp <= 2 && global.hp > 1 && !audio_is_playing(wak_rio) && instance_number(revive_with_rage_scene) = 0
{
	if global.voting_now = 0 && global.playing_scene = 0
	{
	p_mes_guide_vote = instance_create_depth(x,y,player.depth-1,player_message)
	p_mes_guide_vote.text = "얘들아 도와줘"
	p_mes_guide_vote.target = self.id
	
	var sfx = audio_play_sound(help_me,0,0)
	audio_sound_gain(sfx,0.4*global.master_volume*2*global.sfx_volume,0)
	
	
	var random_val = choose(0,1,2,3,4)
	var _vote_code = instance_create_depth(0,0,-9999999,vote_draw)
	if random_val = 0
	{
	_vote_code.sub_file_name = "체력 +1 (!투표1) / 체력 = 1 (!투표2)"
	}
	if random_val = 1
	{
	_vote_code.sub_file_name = "도네 지급 (!투표1) / 방향키 좌우 반전[60s] (!투표2)"
	}
	if random_val = 2
	{
	_vote_code.sub_file_name = "지원 요청 (!투표1) / 강한 중력 효과[60s] (!투표2)"
	}
	if random_val = 3
	{
	_vote_code.sub_file_name = "멘탈게이지 풀 회복 (!투표1) / 멘탈게이지 = 0 (!투표2)"
	}
	if random_val = 4
	{
	_vote_code.sub_file_name = "레이지 모드 적용 (!투표1) / 스테미나 = 0[60s] (!투표2)"
	}
	

	var v_guide = instance_create_depth(x,y,0,guide_message)
	v_guide.title = "채팅 연동 투표 on!"
	v_guide.file_name = "채팅에 아래 명령어를 이용해 투표를 해주세요! (중복 가능)"
	if random_val = 0
	{
	v_guide.sub_file_name = "체력 +1 (!투표1) / 체력 = 1 (!투표2)"
	}
	if random_val = 1
	{
	v_guide.sub_file_name = "도네 지급 (!투표1) / 방향키 좌우 반전[60s] (!투표2)"
	}
	if random_val = 2
	{
	v_guide.sub_file_name = "지원 요청 (!투표1) / 강한 중력 효과[60s] (!투표2)"
	}
	if random_val = 3
	{
	v_guide.sub_file_name = "멘탈게이지 풀 회복 (!투표1) / 멘탈게이지 = 0 (!투표2)"
	}
	if random_val = 4
	{
	v_guide.sub_file_name = "레이지 모드 적용 (!투표1) / 스테미나 = 0[60s] (!투표2)"
	}

	
	global.voting_now = 1
	alarm[5] = 200
	}
}



if place_meeting(x,y-20,obj_upth_floor)
{
vspeed += 2
if global.nickname = "무중력"
{
gravity = 0.2
}
else if global.nickname = "중력" || global.high_gravity > 0
{
gravity = 0.8
}
else
{
gravity = 0.45
}
y += 5
hurt = 1
}

if entering_daepiso = 0
{
if hurt > 0
{
image_angle = 0
cannot_move = 1
sprite_index = hurt_sprite

if dash_attack = 0
{
global.movement_speed += (0 - global.movement_speed)*0.1
}




	if place_meeting(x,y+1,obj_floor)
	{
	image_index = 1
	
		if hurt = 1
		{
		var sfx = audio_play_sound(down_attack_sfx,0,0)
		audio_sound_gain(sfx,0.15*global.master_volume*2*global.sfx_volume,0)
		
		var random_val = choose(0,1)
			if random_val = 1
			{
				if global.voice_option = 0 && global.playing_scene = 0
				{
				var a_s = choose(2,1,0)
					if a_s = 1
					{
					var sfx = audio_play_sound(choose(jyunne_a_i_upne,i_am_sorry,wait_plz),0,0)
					audio_sound_gain(sfx,0.25*global.master_volume*2*global.sfx_volume,0)
					}
				}
			}
		}
	
	hurt++
	}
	else
	{
	image_index = 0
	hurt = 1
	}
	
	if hurt > 45
	{
	hurt = 0
	cannot_move = 0
	w_alpha = 2
	sprite_index = move_sprite
	}
}



if w_alpha < 0.51 && (dash_attack = 0 || dash_attack >= 8.3) && attack_laser < 12.6 && down_attack_plusing = 0 && global.revived_once != 1
{
	if place_meeting(x,y,effect_punch_attack) && spin = 0
	{
		var _place_ins = instance_place(x,y,effect_punch_attack)
		if instance_exists(_place_ins)
		{
		var _calcul_ = sign(x - _place_ins.x)
		}
		else
		{
		var _calcul_ = choose(-1,1)
		}
		var guarding_now = 0
		if _calcul_ = sign(image_xscale) && guarding > 0 && global.stemina >= 1.5
		{
		guarding_now = 1
		}
		
		if guarding_now = 0 || charge_attack > 0
		{
			if hurt = 0
			{
			hurt = 1
			cannot_move = 1
			movement_speed = image_xscale*3
			vspeed -= 2

			var sfx = audio_play_sound(choose(global.hit_sfx_1,global.hit_sfx_2,global.hit_sfx_3),0,0)
			audio_sound_gain(sfx,0.2*global.master_volume*2*global.sfx_volume,0)
	
			hp_minus_for_player(0.5)
			}
		}
		else
		{
			if guard_cool_time = 0
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
			
			w_alpha = 1
			global.stemina -= 1.5
			global.rage_gauge += 1
			guarding = 2.5
			guard_cool_time = 1
			movement_speed = image_xscale*3
			alarm[9] = 7
				if fast_guarding = 1
				{
					repeat(3)
					{
					var ef = instance_create_depth(x,y,depth+1,gyu_seong_red_ef)
					var sprite = asset_get_index(string(sprite_get_name(string(guard_sprite)))+"_white")
					if sprite_exists(sprite)
					{
					ef.sprite_index = sprite
					}
					else
					{
					ef.sprite_index = guard_sprite
					}
					ef.image_index = 2
					ef.image_xscale = image_xscale
					ef.image_yscale = image_yscale
					ef.image_alpha = 0.2*image_alpha
					ef.image_angle = image_angle
					}
				}
			}
		}
	}


	if place_meeting(x,y,effect_banana_attack) && spin = 0
	{
		var _place_ins = instance_place(x,y,effect_banana_attack)
		if instance_exists(_place_ins)
		{
		var _calcul_ = sign(x - _place_ins.x)
		}
		else
		{
		var _calcul_ = choose(-1,1)
		}
		var guarding_now = 0
		if _calcul_ = sign(image_xscale) && guarding > 0 && global.stemina >= 2
		{
		guarding_now = 1
		}
		
		if guarding_now = 0 || charge_attack > 0
		{
			if hurt = 0
			{
			hurt = 1
			cannot_move = 1
			movement_speed = image_xscale*3
			vspeed -= 2

			var sfx = audio_play_sound(choose(global.hit_sfx_1,global.hit_sfx_2,global.hit_sfx_3),0,0)
			audio_sound_gain(sfx,0.2*global.master_volume*2*global.sfx_volume,0)
	
			hp_minus_for_player(1)
			}
		}
		else
		{
			if guard_cool_time = 0
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
			
			w_alpha = 1
			global.stemina -= 2
			guarding = 2.5
			guard_cool_time = 1
			global.rage_gauge += 1
			movement_speed = image_xscale*3
			alarm[9] = 7
				if fast_guarding = 1
				{
					repeat(3)
					{
					var ef = instance_create_depth(x,y,depth+1,gyu_seong_red_ef)
					var sprite = asset_get_index(string(sprite_get_name(string(guard_sprite)))+"_white")
					if sprite_exists(sprite)
					{
					ef.sprite_index = sprite
					}
					else
					{
					ef.sprite_index = guard_sprite
					}
					ef.image_index = 2
					ef.image_xscale = image_xscale
					ef.image_yscale = image_yscale
					ef.image_alpha = 0.2*image_alpha
					ef.image_angle = image_angle
					}
				}
			}
		}
	}



	if place_meeting(x,y,effect_punch_attack_mad) && spin = 0
	{
		var _place_ins = instance_place(x,y,effect_punch_attack_mad)
		if instance_exists(_place_ins)
		{
		var _calcul_ = sign(x - _place_ins.x)
		}
		else
		{
		var _calcul_ = choose(-1,1)
		}
		var guarding_now = 0
		if _calcul_ = sign(image_xscale) && guarding > 0 && global.stemina >= 3
		{
		guarding_now = 1
		}
		
		if guarding_now = 0 || charge_attack > 0
		{
			if hurt = 0
			{
			hurt = 1
			cannot_move = 1
			movement_speed = image_xscale*3
			vspeed -= 2

			var sfx = audio_play_sound(choose(global.hit_sfx_1,global.hit_sfx_2,global.hit_sfx_3),0,0)
			audio_sound_gain(sfx,0.2*global.master_volume*2*global.sfx_volume,0)
	
			hp_minus_for_player(2)
			}
		}
		else
		{
			if guard_cool_time = 0
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
			
			w_alpha = 1
			global.stemina -= 3
			guarding = 2.5
			guard_cool_time = 1
			global.rage_gauge += 1
			movement_speed = image_xscale*3
			alarm[9] = 7
				if fast_guarding = 1
				{
					repeat(3)
					{
					var ef = instance_create_depth(x,y,depth+1,gyu_seong_red_ef)
					var sprite = asset_get_index(string(sprite_get_name(string(guard_sprite)))+"_white")
					if sprite_exists(sprite)
					{
					ef.sprite_index = sprite
					}
					else
					{
					ef.sprite_index = guard_sprite
					}
					ef.image_index = 2
					ef.image_xscale = image_xscale
					ef.image_yscale = image_yscale
					ef.image_alpha = 0.2*image_alpha
					ef.image_angle = image_angle
					}
				}
			}
		}
	}


	if place_meeting(x,y,effect_gyu_seong_attack) && spin = 0
	{
		var _place_ins = instance_place(x,y,effect_gyu_seong_attack)
		if instance_exists(_place_ins)
		{
		var _calcul_ = sign(x - _place_ins.x)
		}
		else
		{
		var _calcul_ = choose(-1,1)
		}
		var guarding_now = 0
		if _calcul_ = sign(image_xscale) && guarding > 0 && global.stemina >= 2.8
		{
		guarding_now = 1
		}
		
		if guarding_now = 0 || charge_attack > 0
		{
			if hurt = 0
			{
			hurt = 1
			cannot_move = 1
			movement_speed = image_xscale*3
			vspeed -= 2

			var sfx = audio_play_sound(choose(global.hit_sfx_1,global.hit_sfx_2,global.hit_sfx_3),0,0)
			audio_sound_gain(sfx,0.2*global.master_volume*2*global.sfx_volume,0)
	
			hp_minus_for_player(1.8)
			}
		}
		else
		{
			if guard_cool_time = 0
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
			
			w_alpha = 1
			global.stemina -= 2.8
			global.rage_gauge += 1
			guarding = 2.5
			guard_cool_time = 1
			movement_speed = image_xscale*3
			alarm[9] = 7
				if fast_guarding = 1
				{
					repeat(3)
					{
					var ef = instance_create_depth(x,y,depth+1,gyu_seong_red_ef)
					var sprite = asset_get_index(string(sprite_get_name(string(guard_sprite)))+"_white")
					if sprite_exists(sprite)
					{
					ef.sprite_index = sprite
					}
					else
					{
					ef.sprite_index = guard_sprite
					}
					ef.image_index = 2
					ef.image_xscale = image_xscale
					ef.image_yscale = image_yscale
					ef.image_alpha = 0.2*image_alpha
					ef.image_angle = image_angle
					}
				}
			}
		}
	}
	
	
	if place_meeting(x,y,rage_mode_knockback_for_mob)
	{
		if hurt = 0
		{
		hp_minus_for_player(0)
		hurt = 1
		cannot_move = 1
		var _place_ins = instance_place(x,y,rage_mode_knockback_for_mob)
		if instance_exists(_place_ins)
		{
		var _calcul_ = sign(x - _place_ins.x)*8.8
			if _calcul_ = 0
			{
			_calcul_ = choose(-1,1)*(x - _place_ins.x)*8.8
			}
		}
		else
		{
		_calcul_ = image_xscale*8.8
		}
		
		movement_speed = _calcul_
		vspeed -= 2
		}
	}
	
	if place_meeting(x,y,rage_mode_knockback_for_mob_bomb)
	{
		var _place_ins = instance_place(x,y,rage_mode_knockback_for_mob_bomb)
		if instance_exists(_place_ins)
		{
		var _calcul_ = sign(x - _place_ins.x)
		}
		else
		{
		var _calcul_ = choose(-1,1)
		}
		
		var guarding_now = 0
		if _calcul_ = sign(image_xscale) && guarding > 0 && global.stemina >= 3
		{
		guarding_now = 1
		}
		
		if guarding_now = 0 || charge_attack > 0
		{
			if hurt = 0
			{
			hurt = 1
			cannot_move = 1
			var _place_ins = instance_place(x,y,rage_mode_knockback_for_mob)
			if instance_exists(_place_ins)
			{
			var _calcul_ = sign(x - _place_ins.x)*8.8
				if _calcul_ = 0
				{
				_calcul_ = choose(-1,1)*(x - _place_ins.x)*8.8
				}
			}
			else
			{
			var _calcul_ = image_xscale*8.8
			}
		
			movement_speed = _calcul_
			vspeed -= 2
		
			var sfx = audio_play_sound(choose(global.hit_sfx_1,global.hit_sfx_2,global.hit_sfx_3),0,0)
			audio_sound_gain(sfx,0.2*global.master_volume*2*global.sfx_volume,0)
	
			hp_minus_for_player(2)
			}
		}
		else
		{
			if guard_cool_time = 0
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
			
			w_alpha = 1
			global.stemina -= 2
			global.rage_gauge += 1
			guarding = 2.5
			guard_cool_time = 1
			movement_speed = image_xscale*8.8
			alarm[9] = 7
				if fast_guarding = 1
				{
					repeat(3)
					{
					var ef = instance_create_depth(x,y,depth+1,gyu_seong_red_ef)
					var sprite = asset_get_index(string(sprite_get_name(string(guard_sprite)))+"_white")
					if sprite_exists(sprite)
					{
					ef.sprite_index = sprite
					}
					else
					{
					ef.sprite_index = guard_sprite
					}
					ef.image_index = 2
					ef.image_xscale = image_xscale
					ef.image_yscale = image_yscale
					ef.image_alpha = 0.2*image_alpha
					ef.image_angle = image_angle
					}
				fast_guarding = 0
				}
			}
		}
	}


	if place_meeting(x,y,minecraft_)
	{
		var _place_ins = instance_place(x,y,minecraft_)
		if instance_exists(_place_ins)
		{
		var _calcul_ = sign(x - _place_ins.x)
		}
		else
		{
		var _calcul_ = choose(-1,1)
		}
		var guarding_now = 0
		if _calcul_ = sign(image_xscale) && guarding > 0 && global.stemina >= 3
		{
		guarding_now = 1
		}
		
		if guarding_now = 0 || charge_attack > 0
		{
			if hurt = 0
			{
				if global.playing_scene > 0 && instance_number(gyu_seong) > 0
				{
				instance_create_depth(player.x,player.y,player.depth-1,droped_saber)
				bloody(gyu_seong)
				}
			hurt = 1
			cannot_move = 1
			
			if charge_attack = 0
			{
			movement_speed = image_xscale*4
			}
			vspeed -= 2

			var sfx = audio_play_sound(choose(global.hit_sfx_1,global.hit_sfx_2,global.hit_sfx_3),0,0)
			audio_sound_gain(sfx,0.2*global.master_volume*2*global.sfx_volume,0)
				if global.vr_weared = 0
				{
				hp_minus_for_player(2)
				}
				else
				{
				hp_minus_for_player(3.2)
				}
			}
		}
		else
		{
			if guard_cool_time = 0
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
			
			global.stemina -= 3
			global.rage_gauge += 1
			w_alpha = 1
			guarding = 2.5
			guard_cool_time = 1
			movement_speed = image_xscale*3
			alarm[9] = 7
				if fast_guarding = 1
				{
					repeat(3)
					{
					var ef = instance_create_depth(x,y,depth+1,gyu_seong_red_ef)
					var sprite = asset_get_index(string(sprite_get_name(string(guard_sprite)))+"_white")
					if sprite_exists(sprite)
					{
					ef.sprite_index = sprite
					}
					else
					{
					ef.sprite_index = guard_sprite
					}
					ef.image_index = 2
					ef.image_xscale = image_xscale
					ef.image_yscale = image_yscale
					ef.image_alpha = 0.2*image_alpha
					ef.image_angle = image_angle
					}
				fast_guarding = 0
				}
			}
		}
	}
	
	
	if place_meeting(x,y,pepsi)
	{
		var _place_ins = instance_place(x,y,pepsi)
		if instance_exists(_place_ins)
		{
		var _calcul_ = sign(x - _place_ins.x)
		}
		else
		{
		var _calcul_ = choose(-1,1)
		}
		var guarding_now = 0
		if _calcul_ = sign(image_xscale) && guarding > 0 && global.stemina >= 3
		{
		guarding_now = 1
		}
		
		if guarding_now = 0 || charge_attack > 0
		{
			if hurt = 0
			{
				if global.playing_scene > 0 && instance_number(gyu_seong) > 0
				{
				instance_create_depth(player.x,player.y,player.depth-1,droped_saber)
				bloody(gyu_seong)
				}
			hurt = 1
			cannot_move = 1
			if charge_attack = 0
			{
			movement_speed = image_xscale*3
			}
			vspeed -= 2

			var sfx = audio_play_sound(choose(global.hit_sfx_1,global.hit_sfx_2,global.hit_sfx_3),0,0)
			audio_sound_gain(sfx,0.2*global.master_volume*2*global.sfx_volume,0)
				if global.vr_weared = 0
				{
				hp_minus_for_player(2)
				}
				else
				{
				hp_minus_for_player(3.2)
				}
			}
		}
		else
		{
			if guard_cool_time = 0
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
			
			global.stemina -= 3
			global.rage_gauge += 1
			w_alpha = 1
			guarding = 2.5
			guard_cool_time = 1
			movement_speed = image_xscale*3
			alarm[9] = 7
				if fast_guarding = 1
				{
					repeat(3)
					{
					var ef = instance_create_depth(x,y,depth+1,gyu_seong_red_ef)
					var sprite = asset_get_index(string(sprite_get_name(string(guard_sprite)))+"_white")
					if sprite_exists(sprite)
					{
					ef.sprite_index = sprite
					}
					else
					{
					ef.sprite_index = guard_sprite
					}
					ef.image_index = 2
					ef.image_xscale = image_xscale
					ef.image_yscale = image_yscale
					ef.image_alpha = 0.2*image_alpha
					ef.image_angle = image_angle
					}
				fast_guarding = 0
				}
			}
		}
	}
}

/////////////////////////////////////////////////////////////////////////////////
}