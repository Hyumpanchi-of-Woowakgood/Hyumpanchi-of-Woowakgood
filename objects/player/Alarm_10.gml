/// @description Insert description here
// You can write your code in this editor
if global.vr_weared > 0 || global.replay_time > 1
{
var sfx = audio_play_sound(choose(swing_lightsaber_sfx2),0,0)
audio_sound_gain(sfx,0.1*global.master_volume*2*global.sfx_volume,0)
}


if repeat_sfx = 0
{
repeat_sfx = 1
alarm[10] = 8
}
else
{
repeat_sfx = 0
}