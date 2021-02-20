/// @description Insert description here
// You can write your code in this editor
if image_alpha > 0
{
if player.cannot_move = 0 || p_mes != -1
{
if message_dilay = 0
{
	if global.playing_scene = 1
	{
		if scene > 0
		{
		can_message = 1
			if p_mes != -1
			{
			instance_destroy(p_mes)
			p_mes = -1
			}
		scene++
		message_dilay = 1
		player.image_index = 0
		test_wakchang.tip_alpha = -10
		alarm[8] = 60
		}
	}
	
	if global.playing_scene = 0
	{
		if point_distance(x,y,player.x,player.y) <= 32 && global.in_building <= 0.16 && player.x <= x+10
		{
		can_message = 1
			if p_mes != -1
			{
			instance_destroy(p_mes)
			p_mes = -1
			}
		global.playing_scene = 1
		scene = 1
		message_dilay = 1
		global.movement_speed = -16
		player.cannot_move = 1
		player.image_xscale = -1
		player.image_index = 0
		test_wakchang.tip_alpha = -10
		alarm[8] = 60
		}
	}
}
}
}