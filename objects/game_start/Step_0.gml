/// @description Insert description here
// You can write your code in this editor
alpha += (t_alpha - alpha)*0.05


if global.tutorial = 0
{
	if instance_number(naming_bar) = 0 && start_ = 0
	{
	var sfx = audio_play_sound(message_sfx,0,0)
	audio_sound_gain(sfx,0.2*global.master_volume*2*global.sfx_volume,0)
	
	instance_create_depth(0,0,-99999999,naming_bar)
	}
	
	if start_ = 1
	{
	start_ = 2
	t_alpha = 1
	var sfx = audio_play_sound(message_sfx,0,0)
	audio_sound_gain(sfx,0.2*global.master_volume*2*global.sfx_volume,0)

	alarm[1] = 400
	}
}
else
{
	if start_ = 0
	{
	start_ = 1
	t_alpha = 1
	var sfx = audio_play_sound(message_sfx,0,0)
	audio_sound_gain(sfx,0.2*global.master_volume*2*global.sfx_volume,0)

	alarm[1] = 400
	}
}

if keyboard_check(vk_anykey) && black_alpha > 0.9
{
	if global.tutorial > 0 && skiped = 0
	{
	t_alpha = -1
	alarm[8] = 80
	skiped = 1
	}
}


if instance_number(obj_camera) > 0
{
obj_camera.v_x = 1280
obj_camera.v_y = 720
}

if go_next = 0
{
audio_stop_sound(sound0)
audio_stop_sound(sound01)
audio_stop_sound(mad_wakchang)
global.tuto_volume = 0
}
else
{
black_alpha -= 0.01
	if global.tuto_volume < 1
	{
	global.tuto_volume += 0.08
	}
	
	if black_alpha <= 0 && global.tuto_volume > 0.9
	{
	instance_destroy()
	}
}

if instance_number(naming_bar) = 0
{
	if global.achievement_finish[80] = 0
	{
		if global.nickname = "마조히스트"
		{
		var _message = instance_create_depth(-100,-100,-9999999999,achievement)
		_message.title = string(global.nickname)
		_message.text = "처맞을 때 오르는 멘탈량 200% 증가"
		}
		
		if global.nickname = "사디스트"
		{
		var _message = instance_create_depth(-100,-100,-9999999999,achievement)
		_message.title = string(global.nickname)
		_message.text = "때릴 때 오르는 멘탈량 200% 증가"
		}
		
		if global.nickname = "아버"
		{
		var _message = instance_create_depth(-100,-100,-9999999999,achievement)
		_message.title = string(global.nickname)
		_message.text = "돈이 쥰내 많아졌다"
		global.money = 99999999
		}
		
		if global.nickname = "하드코어"
		{
		var _message = instance_create_depth(-100,-100,-9999999999,achievement)
		_message.title = string(global.nickname)
		_message.text = "팬치가 도네를 쏘지 않는다"
		}
		
		if global.nickname = "하이퍼코어"
		{
		var _message = instance_create_depth(-100,-100,-9999999999,achievement)
		_message.title = string(global.nickname)
		_message.text = "팬치가 도네를 주지 않음 + 최대 체력이 1하트"
		}
		
		if global.nickname = "분조장"
		{
		var _message = instance_create_depth(-100,-100,-9999999999,achievement)
		_message.title = string(global.nickname)
		_message.text = "가만히 있어도 멘탈 게이지가 오른다"
		}
		
		if global.nickname = "예수"
		{
		var _message = instance_create_depth(-100,-100,-9999999999,achievement)
		_message.title = string(global.nickname)
		_message.text = "멘탈 게이지가 절대 안참"
		}
		
		if global.nickname = "썩은물"
		{
		var _message = instance_create_depth(-100,-100,-9999999999,achievement)
		_message.title = string(global.nickname)
		_message.text = "팬치 도네 없음 + 최대 체력 1하트 + 점프 봉인"
		}
		
		if global.nickname = "무중력"
		{
		var _message = instance_create_depth(-100,-100,-9999999999,achievement)
		_message.title = string(global.nickname)
		_message.text = "중력의 힘이 약해짐"
		}
		
		if global.nickname = "씹찐따"
		{
		var _message = instance_create_depth(-100,-100,-9999999999,achievement)
		_message.title = string(global.nickname)
		_message.text = "달리기 봉인 + 점프 봉인"
		}
		
		if global.nickname = "중력"
		{
		var _message = instance_create_depth(-100,-100,-9999999999,achievement)
		_message.title = string(global.nickname)
		_message.text = "중력의 힘이 세짐"
		}
		
		if global.nickname = "870724"
		{
		var _message = instance_create_depth(-100,-100,-9999999999,achievement)
		_message.title = string(global.nickname)
		_message.text = "870724원 지급"
		global.money = 870724
		}
		
		if global.nickname = "5영택"
		{
		var _message = instance_create_depth(-100,-100,-9999999999,achievement)
		_message.title = string(global.nickname)
		_message.text = "5원 지급"
		global.money = 5
		}
		
		if global.nickname = "신세계의신"
		{
		var _message = instance_create_depth(-100,-100,-9999999999,achievement)
		_message.title = string(global.nickname)
		_message.text = "기본 체력 30하트"
		}
		
		if global.nickname = "늒네"
		{
		var _message = instance_create_depth(-100,-100,-9999999999,achievement)
		_message.title = string(global.nickname)
		_message.text = "5000원 지급"
		global.money = 5000
		}
		
		if global.nickname = "빚쟁이"
		{
		var _message = instance_create_depth(-100,-100,-9999999999,achievement)
		_message.title = string(global.nickname)
		_message.text = "빚이 생겼다"
		global.money = -12345
		}
		
		if global.nickname = "헤드샷"
		{
		var _message = instance_create_depth(-100,-100,-9999999999,achievement)
		_message.title = string(global.nickname)
		_message.text = "데미지 크리티컬 확률 증가"
		}
		
		if global.nickname = "멀미"
		{
		var _message = instance_create_depth(-100,-100,-9999999999,achievement)
		_message.title = string(global.nickname)
		_message.text = "화면 흔들림 효과 대폭 증가"
		}
		
		if global.nickname = "왁기"
		{
		var _message = instance_create_depth(-100,-100,-9999999999,achievement)
		_message.title = string(global.nickname)
		_message.text = "적을 때릴 때 마다 일정 체력 회복"
		}
		
		if global.nickname = "빡빡이아조씨"
		{
		var _message = instance_create_depth(-100,-100,-9999999999,achievement)
		_message.title = string(global.nickname)
		_message.text = "근력 단련 100 레벨"
		global.normal_attack_dmg = 100
		}
		
		if global.nickname = "냉-장go" || global.nickname = "파키스탄아저씨" || global.nickname = "빈센트반고흐" || global.nickname = "린가두" || global.nickname = "내일만삽니다" || global.nickname = "이칠삼오" || global.nickname = "연세221.150" || global.nickname = "creamvi" || global.nickname = "주느" || global.nickname = "인천영택맘" || global.nickname = "다Ag" || global.nickname = "LGY" || global.nickname = "권잼민"
		{
		var _message = instance_create_depth(-100,-100,-9999999999,achievement)
		_message.title = string(global.nickname)
		_message.text = "1차 베타테스터/피드백 감사합니다!"
		}
		
		if global.nickname = "홀애비" || global.nickname = "김전사" || global.nickname = "약중독고양이" || global.nickname = "실명전사박해성" || global.nickname = "별나무" || global.nickname = "샛별" || global.nickname = "응당수"
		{
		var _message = instance_create_depth(-100,-100,-9999999999,achievement)
		_message.title = string(global.nickname)
		_message.text = "2차 베타테스터/피드백 감사합니다!"
		}
	global.achievement_finish[80] = 1
	}
}

audio_sound_gain(cre_bgm,global.bgm_volume*global.master_volume*0.009*des_bgm,0)