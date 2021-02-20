/// @description Insert description here
// You can write your code in this editor
if global.n_room = 0
{
image_alpha = 0
y = 356
gravity = 0
vspeed = 0
}
else
{
image_alpha = 1
}


if image_alpha > 0
{
if place_meeting(x,y,player)
{
var __i = sign(player.x - x)

	if __i = 0
	{
	__i = choose(-0.2,0.2)
	}
t_x = x
movement_speed = 0
movement_speed -= __i*2
	if cannot_move = 0
	{
	cannot_move = 1
	alarm[2] = 14
	}
}


if p_mes_sang = -1 && player.entering_daepiso = 0 && hp > 0
{
	if point_distance(x,y,player.x,player.y) <= 32 && global.in_building <= 0.16 && player.x <= x+10 && player.sprite_index = player.move_sprite
	{
	can_message = 0
	p_mes_sang = instance_create_depth(x,y,player.depth-2,player_message)
	p_mes_sang.text = "상호작용 (D)"
	p_mes_sang.target = player
	}
}

if point_distance(x,y,player.x,player.y) > 32 || player.x > x+10 || global.playing_scene = 1
{
	if p_mes_sang != -1
	{
	instance_destroy(p_mes_sang)
	p_mes_sang = -1
	}
}



if scene = 1
{
player.cannot_move = 1
player.image_index = 0
player.x += (x-140 - player.x)*0.1

	if global.killed_wakchang > 0
	{
		if global.jang_sa_x__ = 3
		{
			if p_mes = -1
			{
			p_mes = instance_create_depth(x,y,player.depth-1,player_message)
			p_mes.text = "형.... 인성문제 있어?"
			p_mes.target = id
			scene = -4
			alarm[9] = 200
			}
		}
		else
		{
			if p_mes = -1
			{
			p_mes = instance_create_depth(x,y,player.depth-1,player_message)
			p_mes.text = "형.... 수듄..."
			p_mes.target = id
			scene = -4
			alarm[9] = 200
			}
		}
	}
	else
	{
		if hong_zo = 0
		{
			if p_mes = -1
			{
			p_mes = instance_create_depth(x,y,player.depth-1,player_message)
			p_mes.text = "혹시 공격 테스트를 하고 싶다면 날 때려줘 형"
			p_mes.target = id
			scene = -4
			alarm[9] = 140
			}
		}
		else
		{
			if p_mes = -1
			{
			p_mes = instance_create_depth(x,y,player.depth-1,player_message)
			p_mes.text = "사실은 오래 전부터 당신 같은 공격을 기다려 왔다우"
			p_mes.target = id
			scene = -4
			alarm[9] = 140
			}
		}
	}
}




if global.playing_scene = 0
{
	if global.killed_wakchang > 0
	{
		if p_mes = -1
		{
		p_mes = instance_create_depth(x,y,player.depth-1,player_message)
		p_mes.text = "형?????"
		p_mes.target = id
		movement_speed -= 7
		}
	}
	else
	{
		if can_message > 0 && can_message < 10 && global.got_wakchori = 1
		{
			if can_message = 1
			{
				if p_mes = -1
				{
				p_mes = instance_create_depth(x,y,player.depth-1,player_message)
				p_mes.text = choose("나를 매도해줘 형","일반공격은 최대 3연속으로 쓸 수 있어 형","일반공격은 최대 3연속으로 쓸 수 있어 형")
				p_mes.target = id
				alarm[7] = 180
				can_message = 2
				}
			}
		}
	
		if can_message > 10 && can_message < 20 && global.got_wakchori = 1
		{
			if can_message = 11
			{
				if p_mes = -1
				{
				p_mes = instance_create_depth(x,y,player.depth-1,player_message)
				p_mes.text = choose("형 사랑해","형 사랑해","형 사랑해","아악")
				p_mes.target = id
				alarm[7] = 180
				can_message = 12
				}
			}
		}
	
		if can_message = 0
		{
			if p_mes != -1
			{
			instance_destroy(p_mes)
			p_mes = -1
			}
		}
	}
}
}
else
{
	if p_mes != -1
	{
	instance_destroy(p_mes)
	p_mes = -1
	}
}