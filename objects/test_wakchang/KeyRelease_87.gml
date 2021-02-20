/// @description Insert description here
// You can write your code in this editor
if story_talk = 0
{
	if scene__ = 13
	{
		if skiping_dilay = 0
		{
		message_dilay = 1
		player.cannot_move = 1
		player.image_xscale = 1
		player.image_index = 0
		skiping_dilay = 1
		scene__ = 15
		tip_alpha = -10
			if p_mes != -1
			{
			instance_destroy(p_mes)
			p_mes = -1
			}
		tip_alpha = -10
		alarm[6] = 5
		}
	}
}