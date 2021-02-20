/// @description Insert description here
// You can write your code in this editor
if waiting_revive = 0
{
	if down_attack = 0 && global.vr_weared > 0 && down_to_floor = 0
	{
		if place_meeting(player.x,905,obj_floor)
		{
		x = player.x
		}
		else
		{
		x = obj_floor.x
		}
	y = -256
	gravity = 0.455
	vspeed = 1
	down_attack = 1
	rage_dilay -= 80
	global.w_alpha = 1
	
	var p_mes_guide_vote = instance_create_depth(x,y,player.depth-1,player_message)
	p_mes_guide_vote.text = "내려찍기가 온닷!!!!"
	p_mes_guide_vote.target = player.id
	p_mes_guide_vote.alarm[2] = 120
	}

	if down_attack = 0 && global.vr_weared <= 0 && down_to_floor = 0
	{
		if place_meeting(player.x,905,obj_floor)
		{
		x = player.x
		}
		else
		{
		x = obj_floor.x
		}
	y = -256
	gravity = 0.455
	vspeed = 10
	down_to_floor = 1
	global.w_alpha = 1
	}
}

if global.hp <= 0
{
down_attack = 0
down_to_floor = 0
waiting_revive = 1
}