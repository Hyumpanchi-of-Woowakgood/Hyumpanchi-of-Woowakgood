/// @description Insert description here
// You can write your code in this editor
if next_scene = 2 && global.t_in_building = 3 && global.boots_ = 0
{
	if global.in_building > 2.95
	{
	next_scene = 3
	global.t_in_building = -1
	player.x = x - 100
	alarm[5] = 120
	}
}



if p_mes != -1 && global.black_ <= 0.1 && next_scene <= 10 && global.playing_scene > 0 && next_scene >= 3
{
	if keyboard_check_pressed(ord("D")) && next_scene != 8 && next_scene != 13
	{
	next_scene ++
	instance_destroy(p_mes)
	p_mes = -1
	}
}

if global.playing_scene > 0 && next_scene != 13
{
	if next_scene = 4 && p_mes = -1
	{
	p_mes = instance_create_depth(x,y,player.depth-1,player_message)
	p_mes.text = string(global.wave)+"일 전에... 강풍 때문에 여기까지 날아 왔는데"
	p_mes.target = id
	}

	if next_scene = 5 && p_mes = -1
	{
	p_mes = instance_create_depth(x,y,player.depth-1,player_message)
	p_mes.text = "어차피 저쪽으론 다시 못 넘어갈 거 같아서 포기하고 자고 있었어"
	p_mes.target = id
	}

	if next_scene = 6 && p_mes = -1
	{
	p_mes = instance_create_depth(x,y,player.depth-1,player_message)
	p_mes.text = "근데 나도 모르는 사이에 얼어 붙어있었나봐"
	p_mes.target = id
	}

	if next_scene = 7 && p_mes = -1
	{
	p_mes = instance_create_depth(x,y,player.depth-1,player_message)
	p_mes.text = "구해준 답례로 이걸 줄께 형!"
	p_mes.target = id
	}

	if next_scene = 8 && p_mes = -1
	{
	p_mes = instance_create_depth(x,y,-999,message_)
	p_mes.t_image_alpha = 1
	p_mes.text = "헤르메스 부츠"
	p_mes.sub_text = "를 획득했다!"
	p_mes.auto_destroy = 0
	p_mes.alarm[1] = 200
	}

	if next_scene = 9 && p_mes = -1
	{
	global.playing_scene = 1
	global.never_move = 1
	set_player_x = 0
	p_mes = instance_create_depth(x,y,player.depth-1,player_message)
	p_mes.text = "이제 달리기를 할 때 스테미나가 소모되지 않을 거야 형!"
	p_mes.target = id
	}

	if next_scene = 10 && p_mes = -1
	{
	global.playing_scene = 1
	global.never_move = 1
	set_player_x = 0
	p_mes = instance_create_depth(x,y,player.depth-1,player_message)
	p_mes.text = "그나저나 여길 어케 빠져나가지..."
	p_mes.target = id
	}

	if next_scene > 10 && next_scene != 13
	{
	global.playing_scene = 0
	global.never_move = 0
	set_player_x = 0
	next_scene = 13
	}
}



if next_scene = 8
{
	if instance_number(p_mes) <= 0
	{
	p_mes = -1
	next_scene ++
	}
}
