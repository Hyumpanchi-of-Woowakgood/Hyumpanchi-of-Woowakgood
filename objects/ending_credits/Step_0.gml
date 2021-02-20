/// @description Insert description here
// You can write your code in this editor
depth = -9999999
global.ending = 0
global.playing_scene_black_bg = 0
global.playing_scene = 0
audio_stop_sound(it_s_over)
audio_stop_sound(nomal_ending)
audio_stop_sound(sound0)
audio_stop_sound(sound01)
audio_stop_sound(mad_wakchang)

audio_sound_gain(ending_bgm,0.15*global.master_volume*global.tuto_volume,0)


if scene > 0
{
scene ++
}

if scene < 660
{
	if global.tuto_volume < 1
	{
	global.tuto_volume += 0.01
	}
}

if scene > 60 && scene <= 120
{
	if scene = 61
	{
	var sfx = audio_play_sound(message_sfx,0,0)
	audio_sound_gain(sfx,0.1*global.master_volume*2*global.sfx_volume,0)
	
		if global.voice_option = 0
		{
		var sfx = audio_play_sound(aaang_,0,0)
		audio_sound_gain(sfx,0.1*global.master_volume*2*global.sfx_volume,0)
		}
	}
	
	if scene_1_alpha < 1
	{
	scene_1_alpha += 0.1
	}
}

if scene > 690
{
scene_1_alpha -= 0.1

	if scene_2_alpha > 4700
	{
		if scene_2_alpha < 8000
		{
		scene_2_alpha += 0.9
		}
		else
		{
			if scene_4_alpha < 3.5
			{
			scene_4_alpha += 0.01
			}
			else
			{
			scene_3_alpha -= 0.005
		
		
			if global.achievement_finish[25] = 0
			{
			global.replay_time ++
			var _message = instance_create_depth(-100,-100,-9999999999,achievement)
			_message.title = "Thanks for playing"
			_message.text = string(global.replay_time)+"회차 도전 각? (도전과제/아이템만 초기화)"
			global.achievement_finish[25] = 1
			save_game()
			}
		
		
		
				if scene_3_alpha <= -0.5
				{
				global.tuto_volume -= 0.005
				}
			
				if global.tuto_volume <= -0.5
				{
				game_restart()
				}
			}
		}
	}
	else
	{
	scene_2_alpha += 1
	}
}


if scene = 340
{
text = "....."
var sfx = audio_play_sound(message_sfx,0,0)
audio_sound_gain(sfx,0.1*global.master_volume*2*global.sfx_volume,0)
}

if scene = 560
{
text = "엔딩 크레딧도 보고 가ㅋㅋㅋㅋ"
var sfx = audio_play_sound(message_sfx,0,0)
audio_sound_gain(sfx,0.1*global.master_volume*2*global.sfx_volume,0)

	if global.voice_option = 0
	{
	var sfx = audio_play_sound(gibungoa,0,0)
	audio_sound_gain(sfx,0.15*global.master_volume*2*global.sfx_volume,0)
	}
}