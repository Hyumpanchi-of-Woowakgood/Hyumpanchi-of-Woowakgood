/// @description Insert description here
// You can write your code in this editor

	
if global.n_room = 0
{
image_alpha = 0
}
else
{
image_alpha = 0.5
}


if instance_number(player) > 0
{
if p_mes = -1 && player.entering_daepiso = 0
{
	if instance_number(player) > 0 && point_distance(x,366,player.x,player.y) <= 32 && global.in_building <= 0.16
	{
	p_mes = instance_create_depth(x,y,player.depth-1,player_message)
	p_mes.text = "나가기 (D)"
	p_mes.target = player
	}
}


if instance_number(player) > 0 && point_distance(x,366,player.x,player.y) > 32 || global.playing_scene = 1
{
p_mes = -1
}


if anime > 0
{
anime++

	if anime > 50
	{
	global.t_in_building = 2
	}

	if anime > 150
	{
	player.x = player.xstart
	player.y = player.ystart
	player.p_mes_guide = -1
	global.p_floor = 903
	global.n_room = 0
	
	if global.vr_camera_zoom < 1 && global.vr_weared = 1
	{
	obj_camera.v_x = 0.00128
	obj_camera.v_y = 0.00072
	global.vr_camera_zoom += 0.005
	}
	
	
	if global.achievement_finish[4] = 0 && global.wave = 1
	{
	var _message = instance_create_depth(-100,-100,-9999999999,achievement)
	_message.title = "다 드루와"
	_message.text = "혐팬치들을 조지기 시작했다"
	global.achievement_finish[4] = 1
	}
	
	
	var max_i = 0
	if global.wave >= 2 && global.wave < 3
	{
	max_i = choose(1,2)
	}
	
	if global.wave >= 3 && global.wave < 6
	{
	max_i = choose(2,3,3,3,4,4,4)
	}
	
	if global.wave >= 6 && global.wave < 10
	{
	max_i = choose(3,3,4,4,4,4)
	}
	
	if global.wave >= 11
	{
	max_i = choose(3,3,4,4,4,4)
	}
	
	var angel_created = 0
	var jamini_created = 0
	for(var i = 0; i < max_i*2; i++)
	{
	var random_cre = percentage_k(35)
	var random_cre_mob = percentage_k(80)
	var random_cre_mob_jam = percentage_k(80)
		
		if random_cre_mob = 1
		{
			if jamini_created = 1
			{
			random_cre_mob_jam = 0
			}
			
			if jamini_created = 0 && random_cre = 0 && random_cre_mob_jam = 1
			{
			instance_create_depth(1568-i*64,903-48,player.depth+2,obj_andience111)
			jamini_created = 1
			random_cre = 2
			}
			
			if (angel_created = 1 || random_cre = 0) && jamini_created = 1 && random_cre_mob_jam = 0
			{
			instance_create_depth(1568-i*64,903-48,player.depth+2,choose(obj_andience1,obj_andience11))
			}
		
			if angel_created = 0 && random_cre = 1 && random_cre_mob_jam = 0
			{
			instance_create_depth(1568-i*64,903-48,player.depth+2,obj_andience)
			angel_created = 1
			}
		}
	}
	
	for(var i = 0; i < max_i; i++)
	{
	var random_cre = percentage_k(45)
	var random_cre_mob = percentage_k(80)
	var random_cre_mob_jam = percentage_k(80)
		
		if random_cre_mob = 1
		{	
			if jamini_created = 1
			{
			random_cre_mob_jam = 0
			}
			
			if jamini_created = 0 && random_cre = 0 && random_cre_mob_jam = 1
			{
			instance_create_depth(1568-i*64,903-48,player.depth+2,obj_andience111)
			jamini_created = 1
			random_cre = 2
			}
			
			if (angel_created = 1 || random_cre = 0) && jamini_created = 1 && random_cre_mob_jam = 0
			{
			instance_create_depth(2112+i*64,903-48,player.depth+2,choose(obj_andience1,obj_andience11))
			}

			if angel_created = 0 && random_cre = 1 && random_cre_mob_jam = 0
			{
			instance_create_depth(2112+i*64,903-48,player.depth+2,obj_andience)
			angel_created = 1
			}
		}
	}
	
	obj_BG.image_index = 0
	
	obj_camera.tv_x = 1280
	obj_camera.tv_y = 720
	obj_camera.t_x = -4
	obj_camera.t_y = -4
	anime = -100
	}
	else
	{
	player.vspeed = 0
	player.gravity = 0
		if player.image_alpha > 0
		{
		player.image_alpha -= 0.01
		global.p_floor -= 0.5
		player.y -= 0.5
		}
	player.x += (x - player.x)*0.05
	player.image_index += 0.3
	player.cannot_move = 1
	player.sprite_index = player.move_sprite
	player.gravity_ignore = 1
	player.entering_daepiso = 1
	}
}



if anime < 0
{
anime++
	if player.image_alpha < 1
	{
	player.image_alpha += 0.1
	}
	
	if anime > -2
	{
	anime = 0
	player.cannot_move = 0
	player.sprite_index = player.move_sprite
	player.gravity_ignore = 0
	player.entering_daepiso = 0
	global.wave_start = 1
	global.ready_for_the_next_wave = 0
	
		if global.normal_attack_dmg >= 5 && global.vr_weared > 0 && global.find_special_skill = 0
		{
		var key_guide = instance_create_depth(-100,-100,-999994,draw_key_)
		key_guide.location = -1.25
		key_guide.image_index = 14
		
		var key_guide = instance_create_depth(-100,-100,-999994,draw_key_)
		key_guide.location = 1.25
		key_guide.image_index = 15
		global.find_special_skill = 1
		
			if global.rage_gauge < 80
			{
			global.rage_gauge = 80
			}
		}
	
		if global.tutorial = 3 && global.wave = 1
		{
		var key_guide = instance_create_depth(-100,-100,-999994,draw_key_)
		key_guide.location = 0
		key_guide.image_index = 13
		global.tutorial = 4
		}
	
		if global.tutorial = 5 && global.wave = 10
		{
		global.can_use_quake_skill = 1
		var key_guide = instance_create_depth(-100,-100,-999994,draw_key_)
		key_guide.location = 0
		key_guide.image_index = 12
		global.tutorial = 6
			if global.rage_gauge < 27
			{
			global.rage_gauge = 27
			}
		}
	
		if global.tutorial = 2
		{
		var key_guide = instance_create_depth(-100,-100,-999994,draw_key_)
		key_guide.location = -1.5
		key_guide.image_index = 6

		var key_guide = instance_create_depth(-100,-100,-999994,draw_key_)
		key_guide.location = 1.5
		key_guide.image_index = 7
				
		global.tutorial = 3
		}
		
		if global.vr_weared > 0 || global.replay_time > 1
		{
		global.can_use_quake_skill = 1
		}
		
		if global.tutorial = 6 && global.vr_weared > 0
		{
			if global.rage_gauge < 27
			{
			global.rage_gauge = 27
			}
		var key_guide = instance_create_depth(-100,-100,-999994,draw_key_)
		key_guide.location = 0
		key_guide.image_index = 11
		global.tutorial = 7
		global.can_use_quake_skill = 1
		}
	}
}
}