/// @description Insert description here
// You can write your code in this editor
image_speed = 0
time = 0
scene_alpha = 0
scene_x = 1000
alabong_angle = 360
alabong_alpha = 0
x = 1568+choose(2000,-2000)
y = 4000




if global.vr_weared > 0 || global.replay_time > 1
{
image_index = 0
	if global.voice_option = 0
	{
	var sfx = audio_play_sound(dasi_suru,0,0)
	audio_sound_gain(sfx,0.3*global.master_volume*2*global.sfx_volume,0)
	}
	
	if global.achievement_finish[43] = 0
	{
	var _message = instance_create_depth(-100,-100,-9999999999,achievement)
	_message.title = "VR 덮밥집"
	_message.text = "야, 다시 할거니까 꺼져"
	global.achievement_finish[43] = 1
	}
}
else
{
image_index = 1
instance_create_depth(x,y,depth-1,gan)
	if global.achievement_finish[83] = 0
	{
	var _message = instance_create_depth(-100,-100,-9999999999,achievement)
	_message.title = "관"
	_message.text = "혐팬치들을 관으로"
	global.achievement_finish[83] = 1
	}
}