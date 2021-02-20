/// @description Insert description here
// You can write your code in this editor

if instance_number(achievement) = 1 || time > 1 || alpha_min = 1
{
	if time = 0
	{
	var sfx = audio_play_sound(message_sfx,0,0)
	audio_sound_gain(sfx,0.12*global.master_volume*2*global.sfx_volume,0)

		if global.voice_option = 0
		{
		var sfx = audio_play_sound(gibungoa,0,0)
		audio_sound_gain(sfx,0.3*global.master_volume*2*global.sfx_volume,0)
		}
	}


time ++
if time > 300
{
alpha_min = 1
}

if instance_number(achievement) > 1
{
time += 10
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
}