/// @description Insert description here
// You can write your code in this editor
pressed ++
if pressed > 1
{
pressed = 0
}

if global.voice_option = 0
{
var sfx = audio_play_sound(dasi_suru,0,0)
audio_sound_gain(sfx,0.2*global.master_volume*2*global.sfx_volume,0)
}

if pressed = 1
{
	if file_exists("Hyumpanchi_of_Wakgood_save_patched.ini")
	{
	file_delete("Hyumpanchi_of_Wakgood_save_patched.ini")
	}

game_restart()
}
