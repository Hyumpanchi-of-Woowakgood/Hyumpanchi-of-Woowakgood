/// @description Insert description here
// You can write your code in this editor
can_message = 0
if global.playing_scene = 0
{
	if p_mes != -1
	{
	instance_destroy(p_mes)
	p_mes = -1
	}
}