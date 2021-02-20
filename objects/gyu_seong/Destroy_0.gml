/// @description Insert description here
// You can write your code in this editor
if global.vr_weared = 0
{
obj_camera.t_x = -4
obj_camera.t_y = -4

	if global.gyu_seong_wave != 4.49
	{
	global.gyu_seong_wave = 4.49
	}

	if (global.nickname != "하드코어" && global.nickname != "하이퍼코어" && global.nickname != "썩은물")
	{
	var _done = instance_create_depth(-100,-100,-100,donation)
	_done.donated_cost = choose(2000,2500,3000,3500,4000,5000)
	}
}