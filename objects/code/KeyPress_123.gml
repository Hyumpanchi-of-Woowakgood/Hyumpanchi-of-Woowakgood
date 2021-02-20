/// @description Insert description here
// You can write your code in this editor
var sfx = audio_play_sound(screen_shot_sfx,0,0)
audio_sound_gain(sfx,0.1*global.master_volume*2*global.sfx_volume,0)


if instance_number(captured) = 0
{
instance_create_depth(x,y,-99999999,captured)
}
else
{
instance_destroy(captured)
instance_create_depth(x,y,-99999999,captured)
}