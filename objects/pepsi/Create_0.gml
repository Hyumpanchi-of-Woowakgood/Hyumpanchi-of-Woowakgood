/// @description Insert description here
// You can write your code in this editor
image_speed = 0
image_index = 3

if global.vr_weared = 1
{
image_index = choose(1,2)
}

a = 0

var sfx = audio_play_sound(choose(hit_sfx1_beat_saber,hit_sfx2_beat_saber,hit_sfx3_beat_saber),0,0)
audio_sound_gain(sfx,0.1*global.master_volume*2*global.sfx_volume,0)