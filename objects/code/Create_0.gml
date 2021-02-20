/// @description Insert description here
// You can write your code in this editor
p_mes_guide = -1
alarm[5] = 600
global.can_chat = 0
global.draw_my_stat = 0
global.guide_stat_key = 1


if file_exists("debug_log.ini")
{
file_delete("debug_log.ini")
}

for(var i = 1; i < 9999; i ++)
{
	if file_exists("debug_log_"+string(i)+".ini")
	{
	file_delete("debug_log_"+string(i)+".ini")
	}
	else
	{
	break;
	}
}

if instance_number(code) > 1
{
instance_destroy()
}


keep_skiping = 0
tip_alpha = -10
ending_act = 0
global.vote_agree = 0
global.dev_mode = 0
global.total_vote = 0
global.vote_disagree = 0
global.voting_now = 0
global.grabed = 0
global.l_q_grap = 0
global.shine_ef = 0
global.copyright_warning = 0
global.find_special_skill = 0
global.boots_ = 0
global.canuse_cheat = 0
global.revive_with_rage = 0
global.wakrio_played = 0
grab_press = 0




global.hit_sfx_1 = hit_sfx1
global.hit_sfx_2 = hit_sfx2
global.hit_sfx_3 = hit_sfx3
global.playtime = 0
global.least_hp = 4
global.max_hp = 31


global.total_died = 0
global.daepiso_story = 0




alarm[0] = 600
alarm[2] = 300
global.rainy = 0
global.nickname = "우왁굳"
global.master_volume = 1
global.bgm_volume = 1
global.wind_dir = 0
global.flip_movement = 0
global.high_gravity = 0
global.cannot_use_stemina = 0
global.blur = 0
global.t_wind_dir = 0
global.snowflake_amount = 0
global.can_use_quake_skill = 0
global.snow_effect_distance = 0
global.given_vr = 0
global.giving_vr = 0
revive_c = 0
global.w_alpha = 0
global.revived = 0
global.rain_event = 0
global.origin_bgm_volume = 1
global.sfx_volume = 1
global.hp = 4
global.fps_draw = 0
global.vr_camera_zoom = 0
global.tuto_volume = 0
global.awakening = 0
global.stop_awakening = 0
global.replay_time = 1
before_hp = global.hp
injured_effect = 0
can_end = 0
global.ready_for_the_next_wave = 1
global.killed_wakchang = 0
global.in_building = 0
global.t_in_building = 0
global.p_floor = 903
global.light_scaling = 1
global.full_screen = 1
global.never_move = 0
global.rage_gauge = 0
global.mental_fulled = 0
global.normal_attack_dmg = 0
global.rank = ""
global.t_c_discon = 0
global.t_last_scene_black = 0
global.last_scene_black = 0



for(var i = 0; i < 10; i ++)
{
global._bgm_play[i] = noone
}
global._bgm = noone

global.time = 0

global.goyoo_number = 1000021 //14번째 까지 공유해줬음

alarm[3] = 1000

light_scaling_ = 0
light_scaling_time = 0
global.money = 0

global.stemina = 11
global.stemina_cooltime = 0
global.killed_wakchang_before = 0


in_building_sound_down = 0
already_used_skill = 0
global.wave_time = 0

global.wave = 0/////////////////////////////////
global.got_wakchori = 0////////////////////////
global.vr_weared = 0/////////////////////////////////
global.skill_jump_attack = 0
global.skill_turning_attack = 0
global.skill_down_attack = 0
global.normal_attack_dmg = 0
global.gyu_seong_wave = 0///////////////////////
global.tutorial = 0
global.messi = 0
global.pants = 0
////////////////////////////////////////////////////////////////////////////////////
global.trailer_mode = 0
////////////////////////////////////////////////////////////////////////////////////
show_debug_overlay(global.trailer_mode)



global.left_enemy = 0
global.n_room = 0
global.wave_start = 0
global.playing_scene = 0
global.playing_scene_black_bg = 0
global.ending = 0
global.jang_sa_x__ = 0
global.a_key = "A"
global.q_key = "Q"
global.s_key = "S"
global.w_key = "W"
global.run_key = "Non"
global.e_key = "E"
global.down_key = vk_down
global.up_key = vk_up
global.space_key = vk_space
global.blood_effect = 1
global.fast_message_load = 0
global.voice_option = 0
global.screen_shine_effect = 0

gyu_seong_achievement_cooltime = 0


for(var i = 0; i < 99; i ++)
{
global.achievement_finish[i] = 0
}

mob_create_cooltime = 0
max_mob_create_cooltime = 0
option = 0



if global.trailer_mode != 1 && global.trailer_mode != 3
{
ini_open_protect("Hyumpanchi_of_Wakgood_save_patched.ini")
//라운드
global.wave = ini_read_real("wave","a",0)

//클리어 후 다시 플레이 횟수
global.replay_time = ini_read_real("replay_time","a",1);

//닉네임
global.nickname = ini_read_string("nickname","a","우왁굳");

for(var i = 0; i < 99; i ++)
{
//도전과제
global.achievement_finish[i] = ini_read_real("achievement_finish","a"+string(i),0)
}

//왁초리
global.got_wakchori = ini_read_real("got_wakchori","a",0)

//VR 장착중
global.vr_weared = ini_read_real("vr_weared","a",0)
global.given_vr = ini_read_real("given_vr","a",0)
global.giving_vr = ini_read_real("giving_vr","a",0)

//메시
global.messi = ini_read_real("messi","a",0)

//승부 빤스
global.pants = ini_read_real("pants","a",0)

//스킬 올려치기
global.skill_jump_attack = ini_read_real("skill_jump_attack","a",0)

//스킬 회전 베기
global.skill_turning_attack = ini_read_real("skill_turning_attack","a",0)

//스킬 내려찍기
global.skill_down_attack = ini_read_real("skill_down_attack","a",0)

//근력 강화
global.normal_attack_dmg = ini_read_real("normal_attack_dmg","a",0)

//규성이
global.gyu_seong_wave = ini_read_real("gyu_seong_wave","a",0)

//돈
global.money = ini_read_real("money","a",0)

//풀스크린
global.full_screen = ini_read_real("full_screen","a",1)

//비오는거
global.rainy = ini_read_real("rainy","a",0)
global.rain_event = ini_read_real("rain_event","a",0)

//마스터 볼륨
global.master_volume = ini_read_real("master_volume","a",1)

//BGM 볼륨
global.bgm_volume = ini_read_real("master_volume","a",1)

//왁창 죽임
global.killed_wakchang = ini_read_real("killed_wakchang","a",0)
global.killed_wakchang_before = ini_read_real("killed_wakchang_before","a",0)

//배경 음악
global.origin_bgm_volume = ini_read_real("origin_bgm_volume","a",1)

//효과음
global.sfx_volume = ini_read_real("sfx_volume","a",1)

//체력
global.hp = ini_read_real("hp","a",4)

//왁창 장사
global.jang_sa_x__ = ini_read_real("jang_sa_x__","a",0)

//키세팅
global.a_key = ini_read_string("a_key","a","A")
global.q_key = ini_read_string("q_key","a","Q")
global.s_key = ini_read_string("s_key","a","S")
global.w_key = ini_read_string("w_key","a","W")
global.run_key = ini_read_string("run_key","a","Non")
global.e_key = ini_read_string("e_key","a","E")

//플탐
global.playtime = ini_read_real("playtime","a",0)

//레이지 모드
global.rage_gauge = ini_read_real("rage_gauge","a",0)

//자동 달리기
global.blood_effect = ini_read_real("auto_run","a",1)

//키 가이드
global.tutorial = ini_read_real("tutorial","a",0)

//빠르게 대사 로드
global.fast_message_load = ini_read_real("fast_message_load","a",0)

//보이스 끄기
global.voice_option = ini_read_real("voice_option","a",0)

//총 죽은 횟수
global.total_died = ini_read_real("total_died","a",0)

//지진파 스킬
global.can_use_quake_skill = ini_read_real("can_use_quake_skill","a",0)

//광 이펙트
global.screen_shine_effect = ini_read_real("screen_shine_effect","a",0)

//대피소 소문 이펙트
global.daepiso_story = ini_read_real("daepiso_story","a",0)

//숨겨진 스킬
global.find_special_skill = ini_read_real("find_special_skill","a",0)

//헤르메스 부츠
global.boots_ = ini_read_real("boots_","a",0)

ini_close_protect();


if global.wave >= 15
{
global.wave = 13

//규성이
global.gyu_seong_wave = 4.49

//VR 장착중
global.vr_weared = 0
global.given_vr = 0
global.giving_vr = 0

//체력
global.hp = 4
}



alarm[3] = 1
}




















if global.achievement_finish[25] = 1 && global.wave != 0
{
	for(var i = 0; i < 99; i ++)
	{
		if i != 33
		{
		global.achievement_finish[i] = 0
		}
	}


	if global.achievement_finish[33] = 0
	{
	var _message = instance_create_depth(-100,-100,-9999999999,achievement)
	_message.title = "인생 "+string(global.replay_time)+"회차"
	_message.text = string(global.replay_time)+"회차 플레이 했당"
	global.achievement_finish[33] = 1
	}

global.money = 0
global.gyu_seong_wave = 0
global.wave = 0
global.vr_weared = 0
global.got_wakchori = 0
global.given_vr = 0
global.giving_vr = 0
global.playtime = 0
global.rainy = 0
global.killed_wakchang_before = 0
global.tutorial = 0
global.boots_ = 0
global.nickname = "우왁굳"
global.find_special_skill = 0
global.daepiso_story = 0
save_game()
}