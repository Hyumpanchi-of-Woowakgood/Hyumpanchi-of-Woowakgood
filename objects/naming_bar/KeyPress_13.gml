/// @description Insert description here
// You can write your code in this editor

if nickname_cool = 0
{
	if (global.nickname != "" && global.nickname != "여기를 클릭해서 이름 입력" && (!(string_pos("띵",global.nickname) != 0))) || keep_nickname > 10
	{
		if image_alpha > 0.96 && des = 0
		{
		des = 1
		var sfx = audio_play_sound(message_sfx,0,0)
		audio_sound_gain(sfx,0.2*global.master_volume*2*global.sfx_volume,0)
		}
	}
	else
	{
		if !(string_pos("띵",global.nickname) != 0)
		{
		keyboard_string = ""
		global.nickname = ""
		}
	var sfx = audio_play_sound(cannot_buy,0,0)
	audio_sound_gain(sfx,0.25*global.master_volume*2*global.sfx_volume,0)
	keep_nickname ++
	alpha2 = 20
	}
alarm[1] = 30
nickname_cool = 1
}