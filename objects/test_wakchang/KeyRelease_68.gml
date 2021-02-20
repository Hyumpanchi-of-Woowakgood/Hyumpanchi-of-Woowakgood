/// @description Insert description here
// You can write your code in this editor

if image_alpha > 0
{
if player.cannot_move = 0 || p_mes != -1 || p_mes_tuto != -1
{
if global.wave = 10
{
hp = max_hp
}


if story_talk != 1
{
	if scene__ = 18
	{
		if skiping_dilay = 0
		{
		message_dilay = 1
		player.cannot_move = 1
		player.image_xscale = 1
		player.image_index = 0
		skiping_dilay = 1
		if global.money >= string(10000+global.skill_jump_attack*3000)
		{
		scene__ = 21
		global.money -= string(10000+global.skill_jump_attack*3000)
		global.skill_jump_attack ++
		}
		else
		{
		scene__ = 20
		}
		tip_alpha = -10
			if p_mes != -1
			{
			instance_destroy(p_mes)
			p_mes = -1
			}
		tip_alpha = -10
		alarm[6] = 15
		}
	}
	
	if scene__ = 25
	{
		if skiping_dilay = 0
		{
		message_dilay = 1
		player.cannot_move = 1
		player.image_xscale = 1
		player.image_index = 0
		skiping_dilay = 1
		if global.money >= string(13000+global.skill_turning_attack*3000)
		{
		scene__ = 27
		global.money -= string(13000+global.skill_turning_attack*3000)
		global.skill_turning_attack ++
		}
		else
		{
		scene__ = 20
		}
		tip_alpha = -10
			if p_mes != -1
			{
			instance_destroy(p_mes)
			p_mes = -1
			}
		tip_alpha = -10
		alarm[6] = 15
		}
	}
	
	if scene__ = 31
	{
		if skiping_dilay = 0
		{
		message_dilay = 1
		player.cannot_move = 1
		player.image_xscale = 1
		player.image_index = 0
		skiping_dilay = 1
		
		if global.skill_down_attack = 0
		{
			if global.money >= 7000
			{
			scene__ = 33
			global.money -= 7000
			global.skill_down_attack ++
			}
			else
			{
			scene__ = 20
			}
		}
		else
		{
			if global.money >= string(10000+global.normal_attack_dmg*3000)
			{
			scene__ = 100
			global.money -= string(10000+global.normal_attack_dmg*3000)
			global.normal_attack_dmg ++
			}
			else
			{
			scene__ = 20
			}
		}
		tip_alpha = -10
			if p_mes != -1
			{
			instance_destroy(p_mes)
			p_mes = -1
			}
		tip_alpha = -10
		alarm[6] = 15
		}
	}
	
	if scene__ = 36
	{
		if skiping_dilay = 0
		{
		message_dilay = 1
		player.cannot_move = 1
		player.image_xscale = 1
		player.image_index = 0
		skiping_dilay = 1
		if global.money >= floor((global.hp-2)*1000)
		{
		scene__ = 38
		global.money -= floor((global.hp-2)*1000)
		}
		else
		{
		scene__ = 20
		}
		tip_alpha = -10
			if p_mes != -1
			{
			instance_destroy(p_mes)
			p_mes = -1
			}
		tip_alpha = -10
		alarm[6] = 15
		}
	}
	
	if scene__ = 109
	{
		if skiping_dilay = 0
		{
		message_dilay = 1
		player.cannot_move = 1
		player.image_xscale = 1
		player.image_index = 0
		skiping_dilay = 1
		scene__ = 111
		tip_alpha = -10
			if p_mes != -1
			{
			instance_destroy(p_mes)
			p_mes = -1
			}
		tip_alpha = -10
		alarm[6] = 15
		}
	}
}


if (hp != 32 || global.jang_sa_x__ = 3 || (global.playing_scene > 0 && scene__ != 101))
{
	if (global.killed_wakchang = 0 || (global.playing_scene > 0 && scene__ != 101))
	{
		if rejected = 1
		{
			if point_distance(test_wakchang.x,test_wakchang.y,player.x,player.y) <= 32 && global.in_building <= 0.16 && player.x >= test_wakchang.x-10
			{
				if skiping_dilay = 0 && tuto_scene != -1 && tuto_scene != -4 && tuto_scene >= 0
				{
					if tuto_scene != 8 && tuto_scene != 5.5
					{
					skiping_dilay = 1
					tuto_scene ++
					player.image_index = 0
					instance_destroy(p_mes_tuto)
					p_mes_tuto = -1
					tip_alpha = -10
					alarm[6] = 2
					}
	
					if tuto_scene = 5.5 || tuto_scene = 5.75
					{
					skiping_dilay = 1
					tuto_scene += 0.25
					player.image_index = 0
					instance_destroy(p_mes_tuto)
					p_mes_tuto = -1
					tip_alpha = -10
					alarm[6] = 2
					}
				}

				if rejected = 1
				{
				skiping_dilay = 1
				tuto_scene = 3
				rejected = 0
				p_mes_tuto = -1
				tip_alpha = -10
				player.image_index = 0
				global.movement_speed = 25
				alarm[6] = 2
				}
			}
		}
		else
		{
			if story_talk = 1
			{
				if skiping_dilay = 0 && tuto_scene != -1 && tuto_scene != -4 && tuto_scene >= 0
				{
					if global.got_wakchori = 0
					{
						if tuto_scene != 8 && tuto_scene != 5.5
						{
						skiping_dilay = 1
						tuto_scene ++
						player.image_index = 0
							if p_mes_tuto != -1
							{
							instance_destroy(p_mes_tuto)
							p_mes_tuto = -1
							}
						tip_alpha = -10
						alarm[6] = 2
						}
	
						if tuto_scene = 5.5 || tuto_scene = 5.75
						{
						skiping_dilay = 1
						tuto_scene += 0.25
						player.image_index = 0
							if p_mes_tuto != -1
							{
							instance_destroy(p_mes_tuto)
							p_mes_tuto = -1
							}
						tip_alpha = -10
						alarm[6] = 2
						}
					}
					else
					{
						if global.giving_vr = 1
						{
							if tuto_scene != 6 && tuto_scene != 8
							{
							skiping_dilay = 1
							tuto_scene += 1
							player.image_index = 0
								if p_mes_tuto != -1
								{
								instance_destroy(p_mes_tuto)
								p_mes_tuto = -1
								}
							tip_alpha = -10
							alarm[6] = 2
							}
						}
						else
						{
						skiping_dilay = 1
						tuto_scene += 1
						player.image_index = 0
							if p_mes_tuto != -1
							{
							instance_destroy(p_mes_tuto)
							p_mes_tuto = -1
							}
						tip_alpha = -10
						alarm[6] = 2
						}
					}
				}

				if rejected = 1
				{
				skiping_dilay = 1
				tuto_scene = 3
				rejected = 0
				p_mes_tuto = -1
				tip_alpha = -10
				player.image_index = 0
				global.movement_speed = 25
				alarm[6] = 2
				}
			}
			else
			{
				if scene__ > 0 && scene__ != 18 && scene__ != 25 && scene__ != 31 && scene__ != 36 && scene__ != 13 && scene__ != 3 && scene__ != 101
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
			
				if point_distance(test_wakchang.x,test_wakchang.y,player.x,player.y) <= 32 && global.in_building <= 0.16 && player.x >= test_wakchang.x-10
				{
					if skiping_dilay = 0
					{
					global.playing_scene = 1
					message_dilay = 1
					global.movement_speed = 16
					player.cannot_move = 1
					player.image_xscale = 1
					player.image_index = 0
					skiping_dilay = 1
					tip_alpha = -10
						if p_mes != -1
						{
						instance_destroy(p_mes)
						p_mes = -1
						}
					scene__ = 1
					alarm[6] = 6
					}
				}
			}
		}
	}
}
else
{
	if point_distance(test_wakchang.x,test_wakchang.y,player.x,player.y) <= 32 && global.in_building <= 0.16 && player.x >= test_wakchang.x-10
	{
		if skiping_dilay = 0
		{
		skiping_dilay = 1
		message_dilay = 1
		
		alarm[11] = 90
		alarm[6] = 90

		
			if p_mes != -1
			{
			instance_destroy(p_mes)
			p_mes = -1
			}
			
		global.playing_scene = 1
		global.movement_speed = 16
		player.cannot_move = 1
		player.image_xscale = 1
		player.image_index = 0
		tip_alpha = -10
		scene__ = 101
		}
	}
}

}
}