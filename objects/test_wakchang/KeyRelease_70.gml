/// @description Insert description here
// You can write your code in this editor
if story_talk = 1
{
	if skiping_dilay = 0 && tuto_scene != -1
	{
		if tuto_scene = 5
		{
		instance_destroy(p_mes_tuto)
		p_mes_tuto = -1
		skiping_dilay = 1
		tuto_scene += 0.5
		alarm[6] = 60
		}
	}
}
else
{
	if scene__ = 3
	{
		if skiping_dilay = 0
		{
		message_dilay = 1
		player.cannot_move = 1
		player.image_xscale = 1
		player.image_index = 0
		skiping_dilay = 1
		scene__ += 2
		tip_alpha = -10
			if p_mes != -1
			{
			instance_destroy(p_mes)
			p_mes = -1
			}
		tip_alpha = -10
		alarm[6] = 60
		}
	}
	
	if scene__ = 392 || scene__ = 402
	{
		if skiping_dilay = 0
		{
			if p_mes != -1
			{
			instance_destroy(p_mes)
			p_mes = -1
			}
		alarm[11] = 2
		alarm[6] = 2
		skiping_dilay = 1
		}
	}
	
	if scene__ = 18 || scene__ = 25 || scene__ = 31 || scene__ = 36 || scene__ = 109
	{
		if skiping_dilay = 0
		{
		message_dilay = 1
		player.cannot_move = 1
		player.image_xscale = 1
		player.image_index = 0
		skiping_dilay = 1
		scene__ ++
		tip_alpha = -10
			if p_mes != -1
			{
			instance_destroy(p_mes)
			p_mes = -1
			}
		tip_alpha = -10
		alarm[6] = 2
		}
	}
}