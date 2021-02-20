/// @description Insert description here
// You can write your code in this editor
if skiped = 0
{
a = 3
t_alpha = 1
if global.voice_option = 0
{
var sfx = audio_play_sound(gibungoa,0,0)
audio_sound_gain(sfx,0.2*global.master_volume*2*global.sfx_volume,0)
}

var sfx = audio_play_sound(message_sfx,0,0)
audio_sound_gain(sfx,0.2*global.master_volume*2*global.sfx_volume,0)

alarm[7] = 520
}