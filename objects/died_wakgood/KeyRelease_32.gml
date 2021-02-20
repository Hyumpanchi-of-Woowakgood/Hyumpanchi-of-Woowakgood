/// @description Insert description here
// You can write your code in this editor
if can_shake = 1 && total_shaked < 4
{
total_shaked ++
shaking = 1
can_shake = 0

var sfx = audio_play_sound(jump_sfx,0,0)
audio_sound_gain(sfx,0.3*global.master_volume*2*global.sfx_volume,0)
alarm[1] = 8
}