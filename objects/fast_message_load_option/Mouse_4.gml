/// @description Insert description here
// You can write your code in this editor
global.fast_message_load ++
if global.fast_message_load > 1
{
global.fast_message_load = 0
}

var sfx = audio_play_sound(message_sfx,0,0)
audio_sound_gain(sfx,0.1*global.master_volume*2*global.sfx_volume,0)