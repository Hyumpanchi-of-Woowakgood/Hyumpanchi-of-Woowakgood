/// @description Insert description here
// You can write your code in this editor
if global.playing_scene = 0
{
	if p_mes = -1
	{
	p_mes = instance_create_depth(x,y,player.depth-1,player_message)
	p_mes.text = "우.왁.굳.처.리.한.다"
	p_mes.target = id
	
		if global.voice_option = 0
		{
		var sfx = audio_play_sound(aaang_,0,0)
		audio_sound_gain(sfx,0.2*global.master_volume*2*global.sfx_volume,0)
		audio_sound_pitch(sfx,0.9)
		}
	}
}
alarm[8] = 180