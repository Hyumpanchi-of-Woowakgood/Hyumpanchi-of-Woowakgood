/// @description Insert description here
// You can write your code in this editor
if random_angle_p > 0
{
random_angle_p --
}



image_angle -= random_angle_p/40

hspeed += (hspeed*0.9 - hspeed)*0.01

if y >= 923 && already_droped = 0
{
hspeed = 0
gravity = 0
vspeed = 0
already_droped = 1
random_angle_p = 0
image_angle = -120
y = 923
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																												
repeat(6)
{
var _ef = instance_create_depth(x,y+23,player.depth-1,effect_spark)
_ef.hspeed = irandom_range(-10,10)
_ef.vspeed = irandom_range(-2,2)
}

image_index = 1

var sfx = audio_play_sound(guard,0,0)
audio_sound_gain(sfx,0.04*global.master_volume*2*global.sfx_volume,0)

var sfx = audio_play_sound(sword_ready,0,0)
audio_sound_gain(sfx,0.05*global.master_volume*2*global.sfx_volume,0)
}