/// @description Insert description here
// You can write your code in this editor
t_hp_bar_alpha = -0.01

	if global.killed_wakchang = 0
	{
		if global.playing_scene = 0
		{
			if p_mes != -1 && can_message != 11
			{
			instance_destroy(p_mes)
			p_mes = -1
			}
		}
	can_message = 11
	}