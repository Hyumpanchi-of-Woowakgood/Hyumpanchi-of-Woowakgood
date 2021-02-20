/// @description Insert description here
// You can write your code in this editor
depth = obj_camera.depth+10

if room != room0 || global.hp <= 1
{
global.vote_agree = 0
global.vote_disagree = 0
global.voting_now = -1
instance_destroy()
}


if global.playing_scene = 0 && instance_number(master_volume_setting) = 0 && global.in_building <= 0.2
{
time ++
}


	if time = 0
	{
	var sfx = audio_play_sound(message_sfx,0,0)
	audio_sound_gain(sfx,0.12*global.master_volume*2*global.sfx_volume,0)
	}



if time > 600
{
	if global.voting_now != -1
	{
	alpha_min = 1
	w_alpha = 1
	global.voting_now = -1
		if global.vote_agree <= global.vote_disagree
		{
			if global.achievement_finish[48] = 0
			{
			var _message = instance_create_depth(-100,-100,-9999999999,achievement)
			_message.title = "아ㅋㅋㅋㅋㅋㅋㅋ"
			_message.text = "이걸 디버프 걸어버리네 ㅋㅋㅋㅋㅋ"
			global.achievement_finish[48] = 1
			}
		}
	}
}


	if alpha_min = 0
	{
		if image_alpha < 1
		{
		image_alpha += 0.0225
		}
	}

	if alpha_min = 1
	{
	image_alpha -= 0.02225
		if image_alpha <= 0
		{
		instance_destroy()
		}
	}

