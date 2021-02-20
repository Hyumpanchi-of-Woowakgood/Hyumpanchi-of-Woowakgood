/// @description Insert description here
// You can write your code in this editor
if room != room0
{
room_speed = 60
}

if !keyboard_check(vk_tab)
{
global.draw_my_stat += (-0.01 - global.draw_my_stat)*0.1
}


if global.high_gravity > 0
{
global.high_gravity --
}

if global.flip_movement > 0
{
global.flip_movement --
}

if global.cannot_use_stemina > 0
{
global.cannot_use_stemina --
}

if global.nickname = "우왁굳" || global.nickname = "왁굳" || global.nickname = "오영택"
{
	if global.total_died >= 15 && global.canuse_cheat = 0
	{
	var _message = instance_create_depth(-100,-100,-9999999999,achievement)
	_message.title = "얘! 뭐가 좀 잘 안되니?"
	_message.text = "F10을 눌러 치트 사용 가능 (대피소 안에서만)"
	global.canuse_cheat = 1
	}
}


//global.time ++
//if global.time > 36000
//{
//global.night ++
//	if global.night > 1
//	{
//	global.night = 0
//	}
//global.time = 0
//}

if global.hp < 1
{
	if global.grabed > 0
	{
	global.grabed = 0
	global.never_move = 0
	grab_press = 0
	}
}

if global.grabed > 0
{
global.stemina -= 0.04
global.stemina_cooltime = 0
	if global.never_move != 1
	{
	var key_guide = instance_create_depth(-100,-100,-999994,draw_key_)
	key_guide.location = -1
	key_guide.image_index = 8

	var key_guide = instance_create_depth(-100,-100,-999994,draw_key_)
	key_guide.location = 1
	key_guide.image_index = 9
	
	global.never_move = 1
	}
	
	
	if keyboard_check_pressed(vk_left) && grab_press = 0
	{
		if instance_number(player) > 0
		{
		player.x -= 2
		}
	global.grabed --
	grab_press = 1
		if global.grabed <= 0
		{
		global.grabed = 0
		global.never_move = 0
		grab_press = 0
		
			if instance_number(player) > 0
			{
				if player.attack_ > 0
				{
				player.attack_ = 0
				player.keep_attack = 0
				player.keep_attacking = 0
				player.attack_sfx_on = 0
				player.sprite_index = player.move_sprite
				player.alarm[1] = 12
				player.alarm[3] = 13
				}
	
				if player.down_attack > 0
				{
				player.down_attack = 9999
				}
	
				if player.spin_attack > 0
				{
				player.spin_attack = 9999
				}
	
				if player.jump_attack > 0
				{
				player.jump_attack = 9999
				}
			}
		}
	}
	
	if keyboard_check_pressed(vk_right) && grab_press = 1
	{
		if instance_number(player) > 0
		{
		player.x += 2
		}
		
	global.grabed --
	grab_press = 0
		if global.grabed <= 0
		{
		global.grabed = 0
		global.never_move = 0
		grab_press = 0
		
			if instance_number(player) > 0
			{
				if player.attack_ > 0
				{
				player.attack_ = 9999
				}
	
				if player.down_attack > 0
				{
				player.down_attack = 9999
				}
	
				if player.spin_attack > 0
				{
				player.spin_attack = 9999
				}
	
				if player.jump_attack > 0
				{
				player.jump_attack = 9999
				}
			}
		}
	}
}


if global.nickname = "분조장"
{
global.rage_gauge += 0.01
}

if global.nickname = "하이퍼코어" || global.nickname = "썩은물"
{
global.max_hp = 2
global.least_hp = 2
}

if global.nickname = "예수"
{
global.rage_gauge = 0
}

if global.rage_gauge < 0
{
global.rage_gauge = 0
}

if global.nickname = "신세계의신"
{
global.max_hp = 31
global.least_hp = 31
}



if global.n_room = 0 && room = room0
{
	if instance_number(game_start) = 0
	{
		if global.tuto_volume < 1
		{
		global.tuto_volume += 0.01
		}
	}
}

if in_building_sound_down > 0.1
{
	if global._bgm_play[0] = 1
	{
		if !audio_is_playing(sound0)
		{
		stop_all_bgm()
		global._bgm = audio_play_sound(sound0,1,false)
		}
	}

	if global._bgm_play[4] = 1
	{
		if !audio_is_playing(mad_wakchang)
		{
		stop_all_bgm()
		global._bgm = audio_play_sound(mad_wakchang,1,false)
		}
	}


	if global._bgm_play[5] = 1
	{
		if !audio_is_playing(gyu_seong_bu_whal)
		{
		stop_all_bgm()
		global._bgm = audio_play_sound(gyu_seong_bu_whal,1,false)
		}
	}

	if global._bgm_play[6] = 1
	{
		if !audio_is_playing(sound01)
		{
		stop_all_bgm()
		global._bgm = audio_play_sound(sound01,1,false)
		}
	}
}





if audio_is_playing(it_s_over) || audio_is_playing(credit_bgm) || global._bgm_play[8] = 1 || room != room0
{
stop_all_bgm()
global._bgm_play[8] = 0
}

for(var i = 0; i < 8; i ++)
{
	if i <= 7 && global._bgm_play[i] >= 1
	{
		if audio_is_playing(gyu_seong_bu_whal)
		{
		audio_sound_gain(global._bgm,global.bgm_volume*global.master_volume*global.tuto_volume*0.62*in_building_sound_down*0.2,0)
		}
		else
		{
			if !audio_is_playing(it_s_over) && !audio_is_playing(nomal_ending)
			{
				if audio_is_playing(sound01)
				{
				audio_sound_gain(global._bgm,global.bgm_volume*global.master_volume*global.tuto_volume*0.18*in_building_sound_down,0)
				}
				else
				{
				audio_sound_gain(global._bgm,global.bgm_volume*global.master_volume*global.tuto_volume*0.62*in_building_sound_down,0)
				}
			}
			else
			{
				if room != room3
				{
				var _aaa = global.ending
				
					if _aaa >= 0.8
					{
					_aaa = 0.8
					}
					
					if global.gyu_seong_wave = 4.5
					{
					audio_sound_gain(global._bgm,global.bgm_volume*global.master_volume*0.62*_aaa*global.tuto_volume,0)
					}
					else
					{
					audio_sound_gain(global._bgm,global.bgm_volume*global.master_volume*0.62*global.tuto_volume,0)
					}
				}
				else
				{
					if room = room0
					{
					audio_sound_gain(global._bgm,global.bgm_volume*global.master_volume*0.62*_aaa,0)
					}
					else
					{
					audio_sound_gain(nomal_ending,global.bgm_volume*global.master_volume*0.62*global.tuto_volume*2.2,0)
					}
				}
			}
		}
	}
}






if global.n_room = 0
{
	if instance_number(gyu_seong) = 0
	{
		if global.killed_wakchang = 0
		{
		bgm_start(0)
		}
		else
		{
		bgm_start(4)
		}
	}
	else
	{
		if global.gyu_seong_wave >= 1
		{
			if global.vr_weared = 0
			{
			bgm_start(5)
			}
			else
			{
				if global.gyu_seong_wave = 4.49
				{
				bgm_start(4)
				}
				else
				{
				bgm_start(6)
				}
			}
		}
		else
		{
		bgm_start(4)
		}
	}
}
else
{
	if global.killed_wakchang > 0
	{
	bgm_start(8)
	}
}




















if global.rage_gauge >= 100
{
global.rage_gauge = 100
	if global.mental_fulled <= 0.02
	{
	global.mental_fulled = 1
	}
}

if global.stemina <= 1
{
	if global.achievement_finish[50] = 0
	{
	var _message = instance_create_depth(-100,-100,-9999999999,achievement)
	_message.title = "스테미나 없다"
	_message.text = "점프, 구르기, 달리기를 하면 스테미나가 안차요"
	global.achievement_finish[50] = 1
	}
}

if global.money >= 7000
{
	if global.achievement_finish[60] = 0
	{
	var _message = instance_create_depth(-100,-100,-9999999999,achievement)
	_message.title = "새로운 스킬 구매 가능!"
	_message.text = "내려찍기 스킬 구매 가능"
	global.achievement_finish[60] = 1
	}
}

if global.money >= 10000
{
	if global.achievement_finish[61] = 0
	{
	var _message = instance_create_depth(-100,-100,-9999999999,achievement)
	_message.title = "새로운 스킬 구매 가능!"
	_message.text = "올려치기 스킬 구매 가능"
	global.achievement_finish[61] = 1
	}
}

if global.money >= 13000
{
	if global.achievement_finish[61] = 0
	{
	var _message = instance_create_depth(-100,-100,-9999999999,achievement)
	_message.title = "새로운 스킬 구매 가능!"
	_message.text = "회전베기 스킬 구매 가능"
	global.achievement_finish[61] = 1
	}
}


if global.normal_attack_dmg > 4
{
	if global.achievement_finish[26] = 0
	{
	var _message = instance_create_depth(-100,-100,-9999999999,achievement)
	_message.title = "헬창"
	_message.text = "근력 강화을 너무 해버린 탓에 헬창이 되버렸다"
	global.achievement_finish[26] = 1
	}
}

if global.achievement_finish[28] = 0 && global.skill_jump_attack > 4
{
var _message = instance_create_depth(-100,-100,-9999999999,achievement)
_message.title = "I believe I can fly"
_message.text = "잘하면 하늘을 날 수 있을 지도?"
global.achievement_finish[28] = 1
}

if global.achievement_finish[29] = 0 && instance_number(player) > 0 && instance_number(obj_floor12) > 0 && point_distance(player.x,player.y,obj_floor12.x,obj_floor12.y) < 128 && global.n_room = 0
{
var _message = instance_create_depth(-100,-100,-9999999999,achievement)
_message.title = "원래 여기 못올텐데?"
_message.text = "맵의 비밀을 알아 버렸다"
global.achievement_finish[29] = 1
}

if global.achievement_finish[30] = 0 && global.hp > 11
{
var _message = instance_create_depth(-100,-100,-9999999999,achievement)
_message.title = "체력 적당히 사요"
_message.text = "게임 너무 쉬워져요"
global.achievement_finish[30] = 1
}

if global.achievement_finish[31] = 0 && global.hp > 21
{
var _message = instance_create_depth(-100,-100,-9999999999,achievement)
_message.title = "아 적당히 사라니까 ㅋㅋ"
_message.text = "게임 너무 쉬워진다구요 ㅠ"
global.achievement_finish[31] = 1
}

if global.achievement_finish[32] = 0 && global.hp > 31
{
var _message = instance_create_depth(-100,-100,-9999999999,achievement)
_message.title = "응 최대 체력 30이야 더 못사 ㅋㅋ"
_message.text = "그만 사라"
global.achievement_finish[32] = 1
}



if global.achievement_finish[34] = 0 && instance_number(vote_draw) > 0
{
var _message = instance_create_depth(-100,-100,-9999999999,achievement)
_message.title = "다수결 투표"
_message.text = "투표는 다수결로 결정!"
global.achievement_finish[34] = 1
}




global.mental_fulled += (0 - global.mental_fulled)*0.05



if os_is_paused()
{
	if global.achievement_finish[51] = 0
	{
	var _message = instance_create_depth(-100,-100,-9999999999,achievement)
	_message.title = "화면이 버벅거린다면..."
	_message.text = "창모드로 바꿨다가 다시 전체화면 해보세요"
	global.achievement_finish[51] = 1
	}
alarm[3] = 600
}

if global.hp > global.max_hp
{
global.hp --
}

if instance_number(object57) = 0
{
global.playtime ++
}

if global.stemina < 1
{
global.stemina = 1
}


if global.playing_scene > 0 || global.t_in_building >= 1
{
	if option != 0
	{
	option = 0
	instance_destroy(master_volume_setting)
	instance_destroy(bgm_volume_setting)
	instance_destroy(sfx_volume_setting)
	instance_destroy(full_screen_option)
	instance_destroy(delete_save_file)
	instance_destroy(change_a_key_to_other)
	instance_destroy(change_w_key_to_other)
	instance_destroy(change_s_key_to_other)
	instance_destroy(change_q_key_to_other)
	instance_destroy(change_running_key_to_other)
	instance_destroy(change_e_key_to_other)
	instance_destroy(blood_effect_option)
	instance_destroy(fast_message_load_option)
	instance_destroy(voice_off_option)
	instance_destroy(fps_draw_option)
	instance_destroy(screen_shot)
	instance_destroy(t_c_disconnect)
	instance_destroy(shine_effect_option)
	instance_destroy(low_quality_graphics)
	
	if instance_number(master_volume_setting) <= 0
	{
	
	
	}
	
	obj_camera.v_x = global.saved_view_xscale
	obj_camera.v_y = global.saved_view_yscale
	obj_camera.tv_x = global.saved_view_t_xscale
	obj_camera.tv_y = global.saved_view_t_yscale
	}
}

if instance_number(obj_camera) > 0
{
depth = obj_camera.depth-1
}

global.wind_dir += (global.t_wind_dir - global.wind_dir)*0.01;



if global.wave = 5
{
	if global.achievement_finish[18] = 0
	{
	var _message = instance_create_depth(-100,-100,-9999999999,achievement)
	_message.title = "보스전까지 앞으로 5일!"
	_message.text = "힘내 왁굳형"
	global.achievement_finish[18] = 1
	}
}

if global.wave = 11
{
	if global.achievement_finish[19] = 0
	{
	var _message = instance_create_depth(-100,-100,-9999999999,achievement)
	_message.title = "보스전이당"
	_message.text = "곧 끝이 코앞으로..."
	global.achievement_finish[19] = 1
	}
}

if global.money >= 18000
{
	if global.achievement_finish[20] = 0
	{
	var _message = instance_create_depth(-100,-100,-9999999999,achievement)
	_message.title = "형 돈좀 써봐"
	_message.text = "왁창한테 말 걸어서 돈 쓸수 있어"
	global.achievement_finish[20] = 1
	}
}

if global.vr_weared = 1
{
	if global.achievement_finish[21] = 0
	{
	var _message = instance_create_depth(-100,-100,-9999999999,achievement)
	_message.title = "Beat saber"
	_message.text = "VR을 얻었다"
	global.achievement_finish[21] = 1
	}
}

if global.wave = 15
{
	if global.achievement_finish[22] = 0
	{
	var _message = instance_create_depth(-100,-100,-9999999999,achievement)
	_message.title = "규성이의 마지막 계정"
	_message.text = "끝이 다가온다"
	global.achievement_finish[22] = 1
	}
}



if global.vr_weared = 1 && global.playing_scene = 0 && instance_number(message_) = 0 && room = room0
{
global.wave_time++
	if global.hp <= 1
	{
	randomize()
	global.wave_time = irandom_range(0,600)
	}
	
	if global.n_room >= 1
	{
	randomize()
	global.wave_time = irandom_range(0,600)
	}
	
	var can_cre = 1
	if instance_number(gyu_seong) > 0
	{
		if gyu_seong.attack_paturn != 0
		{
		can_cre = 0
		}
	}

	if global.wave_time > 1200 && global.playing_scene = 0 && can_cre = 1
	{
	randomize()
	var a = choose(-1,1)
	var bomb = instance_create_depth(obj_floor.x-1100*a,player.y,player.depth-1,minecraft_)
	bomb.ignore_gravity = 1
	bomb.hspeed = a*5.6
	global.wave_time = irandom_range(0,600)
	}
}


if instance_number(full_screen_option) = 0 && instance_number(naming_bar) = 0
{
window_set_cursor(cr_none)
}
else
{
window_set_cursor(cr_default)
}


if global.n_room = 1
{
	if global.hp < global.least_hp
	{
	global.hp = global.least_hp
	}
}


if global.rainy = 1
{
	if global.achievement_finish[14] = 0
	{
	var _message = instance_create_depth(-100,-100,-9999999999,achievement)
	_message.title = "밖에 비 온다"
	_message.text = "밖에 비가 오기 시작했다"
	global.achievement_finish[14] = 1
	}
}

if global.rainy = 2
{
	if global.achievement_finish[15] = 0
	{
	var _message = instance_create_depth(-100,-100,-9999999999,achievement)
	_message.title = "밖에 눈 온다"
	_message.text = "밖에 눈이 오기 시작했다"
	global.achievement_finish[15] = 1
	}
}


if global.achievement_finish[10] = 0.1 && instance_number(achievement) = 0
{
gyu_seong_achievement_cooltime ++
	if gyu_seong_achievement_cooltime > 10
	{
	var _message = instance_create_depth(-100,-100,-9999999999,achievement)
	_message.title = "규성이"
	_message.text = "규성이를 쓰러뜨렸다"
	global.achievement_finish[10] = 1
	gyu_seong_achievement_cooltime = 0
	}
}

if global.achievement_finish[11] = 0.1 && instance_number(achievement) = 0
{
gyu_seong_achievement_cooltime ++
	if gyu_seong_achievement_cooltime > 10
	{
	var _message = instance_create_depth(-100,-100,-9999999999,achievement)
	_message.title = "부계로 돌아온 규성이"
	_message.text = "부계로 돌아온 규성이를 쓰러뜨렸다"
	global.achievement_finish[11] = 1
	}
}

if global.achievement_finish[17] = 0.1 && instance_number(achievement) = 0
{
gyu_seong_achievement_cooltime ++
	if gyu_seong_achievement_cooltime > 10
	{
	var _message = instance_create_depth(-100,-100,-9999999999,achievement)
	_message.title = "왁르곳"
	_message.text = "왁르곳을 쓰러뜨렸다"
	global.achievement_finish[17] = 1
	}
}



if global.in_building <= 0.1
{
	if (instance_number(obj_andience1) > 0 || instance_number(obj_andience11) > 0) && global.achievement_finish[13] = 0 && instance_number(achievement) = 0
	{
	var _message = instance_create_depth(-100,-100,-9999999999,achievement)
	_message.title = "밖에 쌈났다"
	_message.text = "응원단 팬치들이 찾아왔다"
	global.achievement_finish[13] = 1
	}
}

if global.in_building <= 0.1
{
	if (instance_number(obj_andience) > 0) && global.achievement_finish[12] = 0 && instance_number(achievement) = 0
	{
	var _message = instance_create_depth(-100,-100,-9999999999,achievement)
	_message.title = "구경"
	_message.text = "엔젤님 쌈구경 나왔다"
	global.achievement_finish[12] = 1
	}
}

if global.total_died > 9
{
	if global.achievement_finish[70] = 0
	{
	var _message = instance_create_depth(-100,-100,-9999999999,achievement)
	_message.title = "무능택"
	_message.text = "형 도대체 몇 번을 뒤지는 거야"
	global.achievement_finish[70] = 1
	}
}

if global.total_died >= 10
{
	if global.achievement_finish[72] = 0
	{
	var _message = instance_create_depth(-100,-100,-9999999999,achievement)
	_message.title = "얘! 뭐가 좀 잘 안되니?"
	_message.text = "최소 체력 증가 (자동 벨런스 패치)"
	global.achievement_finish[72] = 1
	}
}

if global.total_died > 4
{
	if global.achievement_finish[74] = 0
	{
	var _message = instance_create_depth(-100,-100,-9999999999,achievement)
	_message.title = "쓰읍..."
	_message.text = "5번째 뒤지는 중"
	global.achievement_finish[74] = 1
	}
}


if !keyboard_check(ord("D"))
{
	if keep_skiping > 0
	{
	keep_skiping -= 0.01
	}
}

if keep_skiping > 8
{
	if global.achievement_finish[71] = 0
	{
	var _message = instance_create_depth(-100,-100,-9999999999,achievement)
	_message.title = "빅스킵맨"
	_message.text = "형 너무 스킵하지 마ㅋㅋㅋ"
	global.achievement_finish[71] = 1
	}
keep_skiping = 0
}



light_scaling_time++

if light_scaling_time > 80
{
light_scaling_++
light_scaling_time = 0
}

if light_scaling_ > 1
{
light_scaling_ = 0
}

if light_scaling_ = 0
{
global.light_scaling += 0.001
}
else
{
global.light_scaling -= 0.001
}



if room = room1
{
	if option = 1
	{
	instance_destroy(master_volume_setting)
	instance_destroy(bgm_volume_setting)
	instance_destroy(sfx_volume_setting)
	instance_destroy(full_screen_option)
	instance_destroy(delete_save_file)
	instance_destroy(change_a_key_to_other)
	instance_destroy(change_w_key_to_other)
	instance_destroy(change_s_key_to_other)
	instance_destroy(change_q_key_to_other)
	instance_destroy(change_running_key_to_other)
	instance_destroy(change_e_key_to_other)
	instance_destroy(blood_effect_option)
	instance_destroy(fast_message_load_option)
	instance_destroy(voice_off_option)
	instance_destroy(fps_draw_option)
	instance_destroy(screen_shot)
	instance_destroy(t_c_disconnect)
	instance_destroy(shine_effect_option)
	instance_destroy(low_quality_graphics)
	
	if instance_number(master_volume_setting) <= 0
	{
	
	
	}
	
	obj_camera.v_x = global.saved_view_xscale
	obj_camera.v_y = global.saved_view_yscale
	obj_camera.tv_x = global.saved_view_t_xscale
	obj_camera.tv_y = global.saved_view_t_yscale
	}
}




if global.n_room = 0
{
	if global.playing_scene > 0 || audio_is_playing(wak_rio) || instance_number(revive_with_rage_scene) > 0
	{
	in_building_sound_down += (-0.1 - in_building_sound_down)*0.02
	}
	else
	{
	in_building_sound_down += (1 - in_building_sound_down)*0.02
	}
}
else
{
	if global.playing_scene > 0
	{
	in_building_sound_down += (0.1 - in_building_sound_down)*0.02
	}
	else
	{
	in_building_sound_down += (0.25 - in_building_sound_down)*0.02
	}
}



if room = room1
{
audio_stop_sound(sound0)
audio_stop_sound(mad_wakchang)
audio_stop_sound(sound01)
audio_stop_sound(night_)
audio_stop_sound(snowy)
audio_stop_sound(gyu_seong_bu_whal)
audio_stop_sound(dae_pi_so_bgm)
}

if global.cannot_use_stemina = 0
{
	if instance_number(player) > 0 && (player.sprite_index = player.move_sprite || player.sprite_index = player.attack_sprite)
	{
	global.stemina_cooltime += 5
	}

	if global.stemina_cooltime > 70
	{
	global.stemina += 0.04
	}

	if global.stemina > 11
	{
	global.stemina = 11
	}
}
else
{
global.stemina = 0
}




if global.revived > 0 && (room != room1 && room != room3)
{
global.revived -= 0.01

	if global.revived >= 1
	{
		if revive_c = 0
		{
		player.x = 4520
		player.y = 373
		global.p_floor = 366
		global.n_room = 1
	
		obj_BG.image_index = 1
	
		obj_camera.tv_x = 128*6.5
		obj_camera.tv_y = 72*6.5
		obj_camera.t_x = -4
		obj_camera.t_y = 300
	
		anime = 0
		player.cannot_move = 0
		player.sprite_index = player.move_sprite
		player.gravity_ignore = 0
		player.entering_daepiso = 0
		global.t_in_building = 0.15
		
		vspeed = 0
		global.hp = 4
		revive_c = 1
		player.w_alpha = 2
		global.killed_wakchang = 0
		global.wave_start = 0
		global.left_enemy = 0
		global.rage_gauge = 0
		global.awakening = 0
		global.total_died ++

		if global.gyu_seong_wave != 4.49
		{
		global.gyu_seong_wave = 0
		}
		
		if global.rain_event = 4
		{
		global.rain_event = 3
		}
		audio_stop_sound(sound01)
		audio_stop_sound(night_)
		audio_stop_sound(snowy)
		audio_stop_sound(gyu_seong_bu_whal)
		audio_stop_sound(dae_pi_so_bgm)
		
			if global.wave > 0
			{
			global.wave --
			}
		}
	}

	
	if global.revived <= 0
	{
	global.revived = 0
	revive_c = 0
	}
}

if global.revived = 0 && (room != room1 && room != room3)
{
global.bgm_volume += (global.origin_bgm_volume - global.bgm_volume*global.tuto_volume)*0.2
}

if injured_effect > 0
{
injured_effect++
	if injured_effect > 13
	{
	injured_effect = 0
	}
}

if room = room1
{
instance_destroy(message_)
}


if global.n_room = 0
{
	if global.got_wakchori = 0
	{
	global.wave_start = 0
	}
}




if global.gyu_seong_wave = 4.5
{
global.playing_scene = 1
	if !audio_is_playing(it_s_over) && !audio_is_playing(nomal_ending)
	{
	global.ending = 0
	global._bgm = audio_play_sound(nomal_ending,1,true)
	alarm[10] = 100
		if global.achievement_finish[57] = 0
		{
		var _message = instance_create_depth(-100,-100,-9999999999,achievement)
		_message.title = "참교육"
		_message.text = "규성이 밴"
		global.achievement_finish[57] = 1
		}
	}

	if instance_number(player) > 0
	{
	player.cannot_move = 1
	player.sprite_index = player.move_sprite
	player.image_index += abs(global.movement_speed)*0.12
	
		if ending_act = 0
		{
			if player.x > daepiso.x && abs(player.x - daepiso.x) > 4
			{
			global.movement_speed = -1
			player.image_xscale = 1
			}
	
			if abs(player.x - daepiso.x) <= 4
			{
			global.movement_speed = 0
			player.image_index = 0
			player.image_alpha -= 0.01
			}
	
			if player.x < daepiso.x && abs(player.x - daepiso.x) > 4
			{
			global.movement_speed = 1
			player.image_xscale = -1
			}
		}
		else
		{
		global.movement_speed = 0
		player.image_index = 0
		}
	}
	
	
	if global.ending <= 1.1
	{
	obj_camera.t_y -= 0.1
	
		if can_end = 1
		{
			if global.ending < 0.1
			{
			global.ending += 0.001
			}
		global.ending += 0.001
		obj_camera.t_y -= global.ending*2.4
		}
	}

	if global.ending >= 1.1 && room != room3
	{
	global.playing_scene = 0
	room_goto(room3)
	}
	
	if room = room3
	{
		if object57.b = 0 && global.ending > 0
		{
		global.ending -= 0.01
		option = 0
		instance_destroy(master_volume_setting)
		instance_destroy(bgm_volume_setting)
		instance_destroy(sfx_volume_setting)
		instance_destroy(full_screen_option)
		instance_destroy(delete_save_file)
		instance_destroy(change_a_key_to_other)
		instance_destroy(change_w_key_to_other)
		instance_destroy(change_s_key_to_other)
		instance_destroy(change_q_key_to_other)
		instance_destroy(change_running_key_to_other)
		instance_destroy(change_e_key_to_other)
		instance_destroy(blood_effect_option)
		instance_destroy(fast_message_load_option)
		instance_destroy(voice_off_option)
		instance_destroy(fps_draw_option)
		instance_destroy(screen_shot)
		instance_destroy(t_c_disconnect)
		instance_destroy(shine_effect_option)
		instance_destroy(low_quality_graphics)
		
		if instance_number(master_volume_setting) <= 0
		{
		
		
		}
		
		obj_camera.v_x = global.saved_view_xscale
		obj_camera.v_y = global.saved_view_yscale
		obj_camera.tv_x = global.saved_view_t_xscale
		obj_camera.tv_y = global.saved_view_t_yscale
		}
	}
}


if instance_number(game_start) > 0
{
option = 0
instance_destroy(master_volume_setting)
instance_destroy(bgm_volume_setting)
instance_destroy(sfx_volume_setting)
instance_destroy(full_screen_option)
instance_destroy(delete_save_file)
instance_destroy(change_a_key_to_other)
instance_destroy(change_w_key_to_other)
instance_destroy(change_s_key_to_other)
instance_destroy(change_q_key_to_other)
instance_destroy(change_running_key_to_other)
instance_destroy(change_e_key_to_other)
instance_destroy(blood_effect_option)
instance_destroy(fast_message_load_option)
instance_destroy(voice_off_option)
instance_destroy(fps_draw_option)
instance_destroy(screen_shot)
instance_destroy(t_c_disconnect)
instance_destroy(shine_effect_option)
instance_destroy(low_quality_graphics)

	if instance_number(master_volume_setting) <= 0
	{
	
	
	}
}


if global.wave >= 4 && global.wave < 6 && global.wave_start = 1 && global.n_room = 0
{
global.rainy = 1
global.t_wind_dir = irandom_range(-100,100)/10
}


if global.wave >= 6 && global.wave <= 8 && global.wave_start = 1 && global.n_room = 0
{
global.rainy = 2
global.t_wind_dir = irandom_range(-100,100)/10
}


if global.wave >= 10 && global.wave <= 11 && global.wave_start = 1 && global.n_room = 0
{
global.rainy = 1
global.t_wind_dir = irandom_range(-100,100)/10
}

if global.wave >= 12 && global.wave <= 13 && global.wave_start = 1 && global.n_room = 0
{
global.rainy = 0
global.t_wind_dir = irandom_range(-100,100)/10
}

if global.wave >= 14 && global.wave <= 19 && global.wave_start = 1 && global.n_room = 0
{
global.rainy = 1
global.t_wind_dir = irandom_range(-100,100)/10
}


if (global.wave_start > 0)
{
global.t_in_building = -0.01
}

if instance_number(daepiso) > 0
{
	if (global.n_room != 1 && global.wave = 0 && daepiso.anime = 0 && out_daepiso.anime = 0 && global.hp > 1)
	{
	global.t_in_building = -0.01
	}
}

if global.wave_start > 0 && room != room1
{
already_used_skill = 0
	if global.n_room = 0 && (instance_number(obj_andience1)+instance_number(obj_andience11)) > 0 && p_mes_guide = -1
	{
	p_mes_guide = instance_create_depth(x,y,0,guide_message)
	p_mes_guide.title = "트위치 채팅 연동 on!"
	p_mes_guide.file_name = "채팅에 '!say'를 입력해 응원 가능!"
	p_mes_guide.sub_file_name = "[예 : !say 왁굳형 사랑해!]"
	
		if global.rainy = 1 && global.vr_weared = 0 && global.t_in_building < 1
		{
		p_mes_guide.file_name = "오늘은 비오는 날"
		p_mes_guide.sub_file_name = "(비오는 날이라 응원단 팬치들 다 퇴근함)"
		}
	}



	if global.wave != 10 && global.wave != 14
	{
		if global.killed_wakchang = 0
		{
		global.wave_start = 0
		global.wave ++
		if global.wave > 4
		{
		global.left_enemy = 2+global.wave
		}
		else
		{
			if global.wave < 12
			{
			global.left_enemy = global.wave
			}
			else
			{
			global.left_enemy = 12
			}
		}

		max_mob_create_cooltime = 60

		var _mes = instance_create_depth(x,y,-999,message_)
		_mes.t_image_alpha = 1
		_mes.text = "Day "+string(global.wave)
		_mes.sub_text = "조심하세요! 곧 혐팬치들이 몰려옵니다!"
		_mes.auto_destroy = 0
		_mes.alarm[1] = 155
		}
		else
		{
		global.wave_start = 0
		global.wave ++
		global.left_enemy = 50

		max_mob_create_cooltime = 60

		var _mes = instance_create_depth(x,y,-999,message_)
		_mes.t_image_alpha = 1
		_mes.text = "Gop-Chang-nan-minsim"
		_mes.sub_text = "분노한 왁창들과 함께 혐팬치들이 들이 몰려옵니다"
		_mes.auto_destroy = 0
		_mes.alarm[1] = 180
		}
	}
	else if (global.wave = 10 || global.wave = 14)
	{
	global.wave_start = 0
	global.wave ++
	global.left_enemy = 1
		
	max_mob_create_cooltime = 60
	
	var _mes = instance_create_depth(x,y,-999,message_)
	_mes.t_image_alpha = 1
	_mes.text = "Gyu-Seong-E"
	_mes.sub_text = "규성이"
	_mes.auto_destroy = 0
	_mes.alarm[1] = 180
	}
}


if global.left_enemy < 0
{
global.left_enemy = 0
}


mob_create_cooltime += 1

if global.left_enemy > 0 && mob_create_cooltime > max_mob_create_cooltime && room != room1 && instance_number(mob_parents) < 6
{
	if global.wave != 11 && global.wave != 15
	{
		if global.killed_wakchang = 0
		{
			if global.wave <= 2 && instance_number(player) > 0
			{
			instance_create_depth(irandom_range(704,2464),0,player.depth+choose(-1,1),hyumpanchi_punch)
			}
			
			if global.wave = 3 && instance_number(player) > 0
			{
			instance_create_depth(irandom_range(704,2464),0,player.depth+choose(-1,1),choose(hyumpanchi_punch,hyumpanchi_punch,hyumpanchi_banana))
			}
			
			if global.wave = 4 && instance_number(player) > 0
			{
			instance_create_depth(irandom_range(704,2464),0,player.depth+choose(-1,1),choose(hyumpanchi_punch,hyumpanchi_punch,hyumpanchi_banana,hyumpanchi_banana))
			}
			
			if global.wave = 5 && instance_number(player) > 0
			{
			instance_create_depth(irandom_range(704,2464),0,player.depth+choose(-1,1),choose(hyumpanchi_punch,hyumpanchi_banana,hyumpanchi_banana))
			}
			
			if global.wave = 6 && instance_number(player) > 0
			{
			instance_create_depth(irandom_range(704,2464),0,player.depth+choose(-1,1),choose(hyumpanchi_punch,hyumpanchi_banana,hyumpanchi_banana,hyumpanchi_minecraft))
			}
			
			if global.wave = 7 && instance_number(player) > 0
			{
			instance_create_depth(irandom_range(704,2464),0,player.depth+choose(-1,1),choose(hyumpanchi_punch,hyumpanchi_banana,hyumpanchi_banana,hyumpanchi_minecraft,hyumpanchi_minecraft))
			}
			
			if global.wave = 8 && instance_number(player) > 0
			{
			instance_create_depth(irandom_range(704,2464),0,player.depth+choose(-1,1),choose(hyumpanchi_punch,hyumpanchi_banana,hyumpanchi_banana,hyumpanchi_minecraft,hyumpanchi_bomb_panchi))
			}
			
			if global.wave = 9 && instance_number(player) > 0
			{
			instance_create_depth(irandom_range(704,2464),0,player.depth+choose(-1,1),choose(hyumpanchi_punch,hyumpanchi_banana,hyumpanchi_banana,hyumpanchi_minecraft,hyumpanchi_minecraft,hyumpanchi_bomb_panchi))
			}
			
			if global.wave >= 10 && global.wave != 11 && global.wave != 15 && instance_number(player) > 0
			{
			instance_create_depth(irandom_range(704,2464),0,player.depth+choose(-1,1),choose(hyumpanchi_punch,hyumpanchi_banana,hyumpanchi_banana,hyumpanchi_minecraft,hyumpanchi_minecraft,hyumpanchi_bomb_panchi,hyumpanchi_bomb_panchi))
			}
		}
		else
		{
			if instance_number(player) > 0
			{
			instance_create_depth(irandom_range(704,2464),0,player.depth+choose(-1,1),choose(hyumpanchi_punch,hyumpanchi_bomb_panchi,hyumpanchi_mad,hyumpanchi_mad,hyumpanchi_mad,hyumpanchi_minecraft))
			}
		}
	}

	if global.wave = 11 && instance_number(player) > 0 && instance_number(gyu_seong) = 0
	{
	instance_create_depth(irandom_range(704,2464),0,player.depth+choose(-1,1),gyu_seong)
	global.left_enemy --
	}
		
	if global.wave = 15 && instance_number(player) > 0 && instance_number(gyu_seong) = 0
	{
	instance_create_depth(irandom_range(704,2464),0,player.depth+choose(-1,1),gyu_seong)
	global.left_enemy --
	}
	

	if instance_number(player) > 0
	{
	global.left_enemy --
	mob_create_cooltime = 0
	max_mob_create_cooltime = irandom_range(60,120)
	}
}



if global.playing_scene > 0
{
	if tip_alpha < 1
	{
	tip_alpha += 0.057
	}
}

if global.playing_scene = 0 || instance_number(player_message) = 0
{
tip_alpha = -10
}




global.in_building += (global.t_in_building - global.in_building)*0.03

if global.left_enemy <= 0 && global.n_room = 0 && instance_number(mob_parents) = 3 && room != room1 && instance_number(master_volume_setting) = 0
{
	if player.entering_daepiso = 0
	{
			if instance_number(message_) = 0
			{
			global.ready_for_the_next_wave = 1
			var _mes = instance_create_depth(x,y,-999,message_)
			_mes.t_image_alpha = 1
			_mes.text = "대피소로 들어가세요!"
			_mes.sub_text = "대피소로 들어가 이후 몰려올 혐팬치들을 조질 준비를 하세요"
			_mes.auto_destroy = 1
			}
	}
}






if instance_number(master_volume_setting) > 0
{
obj_camera.v_x = 1280
obj_camera.v_y = 720
}