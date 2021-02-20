/// @description Insert description here
// You can write your code in this editor
if global.vote_agree > global.vote_disagree
{
	if sub_file_name = "체력 +1 (!투표1) / 체력 = 1 (!투표2)" && instance_number(player) > 0
	{
	var food = instance_create_depth(player.x,player.y-32,player.depth-2,biyott)
	food.image_index = 1
	}
	
	if sub_file_name = "도네 지급 (!투표1) / 방향키 좌우 반전[60s] (!투표2)"
	{
		if (global.nickname != "하드코어" && global.nickname != "하이퍼코어" && global.nickname != "썩은물")
		{
		var _done = instance_create_depth(-100,-100,-100,donation)
		_done.donated_cost = irandom_range(8,15)*1000
		}
	}
	
	if sub_file_name = "지원 요청 (!투표1) / 강한 중력 효과[60s] (!투표2)" && instance_number(goarosa) = 0 && instance_number(pianocat) = 0 && instance_number(wakgood_) = 0 && global.n_room = 0 && room = room0
	{
		if global.vr_weared = 0
		{
		instance_create_depth(-100,-100,-1,wakgood_)
		}
		else
		{
		instance_create_depth(-100,-100,-1,choose(wakgood_))
		}
	code.already_used_skill = 1
	}
	
	if sub_file_name = "멘탈게이지 풀 회복 (!투표1) / 멘탈게이지 = 0 (!투표2)"
	{
	global.rage_gauge = 100
	}
	
	if sub_file_name = "레이지 모드 (!투표1) / 스테미나 = 0[60s] (!투표2)"
	{
	global.rage_gauge = 100
	global.awakening = 1
	w_alpha = 0.5
	global.stop_awakening = 0
	}
}

if global.vote_agree < global.vote_disagree
{
	if sub_file_name = "체력 +1 (!투표1) / 체력 = 1 (!투표2)"
	{
	global.hp = 2
	}
	
	if sub_file_name = "도네 지급 (!투표1) / 방향키 좌우 반전[60s] (!투표2)"
	{
	global.flip_movement = 3600
	}
	
	if sub_file_name = "지원 요청 (!투표1) / 강한 중력 효과[60s] (!투표2)"
	{
	global.high_gravity = 3600
	}
	
	if sub_file_name = "멘탈게이지 풀 회복 (!투표1) / 멘탈게이지 = 0 (!투표2)"
	{
	global.rage_gauge = 0
	}
	
	if sub_file_name = "레이지 모드 적용 (!투표1) / 스테미나 = 0[60s] (!투표2)"
	{
	global.cannot_use_stemina = 3600
	}
	
	var sfx = audio_play_sound(cannot_buy,0,0)
	audio_sound_gain(sfx,0.1*global.master_volume*2*global.sfx_volume,0)
}

code.alarm[11] = irandom_range(2000,3000)