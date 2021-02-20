/// @description Insert description here
// You can write your code in this editor
if scene >= 0 && scene_dilay = 0 && scene < 3
{
scene ++
scene_dilay = 1
	
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

alarm[9] = 30
}


if scene >= 5 && scene_dilay = 0
{
scene ++
scene_dilay = 1
	
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

alarm[9] = 30
}