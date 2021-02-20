/// @description Insert description here
// You can write your code in this editor
scene_dilay = 0
ss = 1
obj_camera.t_x = -4
obj_camera.t_y = -4

	if p_mes_for_p != -1
	{
	instance_destroy(p_mes_for_p)
	p_mes_for_p = -1
	}
	
	if p_mes != -1
	{
	instance_destroy(p_mes)
	p_mes = -1
	}
	

	var _mes = instance_create_depth(x,y,-999,message_)
	_mes.t_image_alpha = 1
	_mes.text = "Dol-a-on  Gyu-seong-E"
	_mes.sub_text = "밴 당했다가 부계로 돌아온 규성이"
	_mes.auto_destroy = 0
	_mes.alarm[1] = 180
	armored_level = 4
	
	var sg = sign(x - player.x)
	if sg = 0
	{
	sg = choose(-1,1)
	}
	
	movement_speed += sg*32
	
		if (global.nickname != "하드코어" && global.nickname != "하이퍼코어" && global.nickname != "썩은물")
		{
		var _done = instance_create_depth(-100,-100,-100,donation)
		_done.donated_cost = 1000
		}



if global.vr_weared = 0
{
	if global.nickname = "우왁굳" || global.nickname = "왁굳" || global.nickname = "오영택"
	{
	hp = 400+(global.replay_time - 1)*180
	max_hp = 400+(global.replay_time - 1)*180
	}
	else
	{
	hp = 630+(global.replay_time - 1)*180
	max_hp = 630+(global.replay_time - 1)*180
	}
}
else
{
hp = 1110+(global.replay_time - 1)*180
max_hp = 1110+(global.replay_time - 1)*180
}

if global.trailer_mode = 1
{
hp = 1
max_hp = 1
}



knocked_down_ef = 0
cannot_move = 0
move_sprite = pl_move_mad_gyu_seong_spin_jump
hurt_sprite = pl_hurt_gyu_seong_mad
attack_sprite = pl_move_gyu_seong_attack_mad
obj_camera.t_x = -4
obj_camera.t_y = -4



audio_stop_sound(sound0)
player.cannot_move = 0
global.playing_scene = 0
global.gyu_seong_wave = 1