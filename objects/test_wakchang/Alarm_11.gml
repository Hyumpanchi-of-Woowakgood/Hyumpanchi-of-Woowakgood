/// @description Insert description here
// You can write your code in this editor
if p_mes != -1
{
instance_destroy(p_mes)
p_mes = -1
}


if (scene__ != 25 && scene__ != 31 && scene__ != 36 && scene__ != 100 && scene__ != 21 && scene__ != 27 && scene__ != 33 && scene__ != 38)
{
global.playing_scene = 0
scene = 0
scene__ = 0
message_dilay = 0
can_message = 0
player.cannot_move = 0
skiping_dilay = 0
}


if (scene__ = 25 || scene__ = 31 || scene__ = 36 || scene__ = 100)
{
global.playing_scene = 1
message_dilay = 1
player.cannot_move = 1
player.image_xscale = 1
player.image_index = 0
skiping_dilay = 1
scene__ = 1
tip_alpha = -10
	if p_mes != -1
	{
	instance_destroy(p_mes)
	p_mes = -1
	}
alarm[6] = 2
}

if (scene__ = 33)
{
global.playing_scene = 1
message_dilay = 1
player.cannot_move = 1
player.image_xscale = 1
player.image_index = 0
skiping_dilay = 1
scene__ = 28
tip_alpha = -10
	if p_mes != -1
	{
	instance_destroy(p_mes)
	p_mes = -1
	}
alarm[6] = 2
}


if (scene__ = 21)
{
global.playing_scene = 1
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
alarm[6] = 2
}


if (scene__ = 27)
{
global.playing_scene = 1
message_dilay = 1
player.cannot_move = 1
player.image_xscale = 1
player.image_index = 0
skiping_dilay = 1
scene__ = 22
tip_alpha = -10
	if p_mes != -1
	{
	instance_destroy(p_mes)
	p_mes = -1
	}
alarm[6] = 2
}


if (scene__ = 38)
{
global.playing_scene = 1
message_dilay = 1
player.cannot_move = 1
player.image_xscale = 1
player.image_index = 0
skiping_dilay = 1
scene__ = 34
tip_alpha = -10
	if p_mes != -1
	{
	instance_destroy(p_mes)
	p_mes = -1
	}
alarm[6] = 2
}
