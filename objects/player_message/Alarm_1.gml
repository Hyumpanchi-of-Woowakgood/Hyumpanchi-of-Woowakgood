/// @description Insert description here
// You can write your code in this editor
if global.in_building < 0.7
{
if text != "상호작용 (D)" && text != "들어가기 (D)" && text != "나가기 (D)"
{
	if !audio_is_playing(message_sfx)
	{
		if target = obj_andience1 || target = obj_andience11 || target = obj_andience111
		{
		}
		else
		{
		var sfx = audio_play_sound(message_sfx,0,0)
		audio_sound_gain(sfx,0.12*global.master_volume*2*global.sfx_volume,0)
		}
	}
}
}