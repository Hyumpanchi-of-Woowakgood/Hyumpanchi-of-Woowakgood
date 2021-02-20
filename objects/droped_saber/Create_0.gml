/// @description Insert description here
// You can write your code in this editor
hspeed = -irandom_range(400,500)/50
random_angle_p = irandom_range(400,500)
already_droped = 0
gravity = 0.3
image_angle = -90
image_index = 0
image_speed = 0
vspeed = -4

var sfx = audio_play_sound(choose(swing_lightsaber_sfx2),0,0)
audio_sound_gain(sfx,0.1*global.master_volume*2*global.sfx_volume,0)