/// @description Insert description here
// You can write your code in this editor
if scene_2_alpha >= 978 && scene_2_alpha <= 2233
{
	if scene_2_alpha = 978
	{
	white_bg_alpha = 1.2
	}
	
	white_bg_alpha -= 0.01
	
	if black_bg_alpha > 0
	{
	global.vr_weared = 0
	black_bg_alpha = 0
	}
}

if scene_2_alpha > 5717.10
{
	if black_bg_alpha <= 1
	{
	black_bg_alpha += 0.01
	}
	else
	{
	global.vr_weared = 0
	global.rainy = 0
	}
}



////////////////////////////////////////////////////////////////////////////////////////////////////////////////

if scene_2_alpha >= 980 && scene_2_alpha < 1439
{
	if scene_2_alpha = 1000
	{
	obj_camera.t_y = 1.1
	}
obj_camera.x = 1280
obj_camera.t_x = 1280
obj_camera.t_y += (756 - obj_camera.t_y)*0.01
	if obj_camera.t_y < 756
	{
	obj_camera.t_y += 1.1
	}
	else
	{
	obj_camera.t_y += 0.5
	}
}

if scene_2_alpha >= 1439 && scene_2_alpha < 1850
{
global.n_room = 1
	if scene_2_alpha = 1439
	{
		if instance_number(sandbag_panchi) = 0
		{
		instance_create_depth(4448,400,out_daepiso.depth-15,sandbag_panchi)
		instance_create_depth(4448-64,400,out_daepiso.depth-15,wakchang_jump)
		}
	
	obj_camera.tv_x = 1280*0.55
	obj_camera.tv_y = 720*0.55
	obj_camera.v_x = 1280*0.55
	obj_camera.v_y = 720*0.55
	
	obj_camera.x = out_daepiso.x-140
	obj_camera.t_x = out_daepiso.x-140
	}
	else
	{
	obj_camera.t_x += 0.25
	}
obj_camera.y = 300
obj_camera.t_y = 300
}

if scene_2_alpha >= 1850 && scene_2_alpha < 2250
{
global.n_room = 0
	if scene_2_alpha = 1850
	{
		if instance_number(agi_panchi) = 0
		{
		instance_create_depth(daepiso.x+600,-100,daepiso.depth-15,agi_panchi)
		var _a = instance_create_depth(daepiso.x+500,-100,daepiso.depth-15,runaway_panchi)
		_a.movement_speed = -4
		var _a = instance_create_depth(daepiso.x+480,-100,daepiso.depth-15,runaway_panchi)
		_a.movement_speed = -4.1
		}
		
	obj_camera.tv_x = 1280*0.9
	obj_camera.tv_y = 720*0.9
	obj_camera.v_x = 1280*0.9
	obj_camera.v_y = 720*0.9
		
	obj_camera.x = daepiso.x+60
	obj_camera.t_x = daepiso.x+60
	}
	else
	{
	obj_camera.t_x -= 0.23
	}
obj_camera.y = 903
obj_camera.t_y = 903
}

if scene_2_alpha >= 2250 && scene_2_alpha < 2680
{
	if scene_2_alpha = 2250
	{
	global.rainy = 1
	obj_camera.t_x = daepiso.x-800
		if instance_number(Object134) = 0
		{
		instance_create_depth(864,626,daepiso.depth-10,Object134)
		instance_create_depth(736,896,-32,obj_andience1)
		instance_create_depth(864,896,-32,obj_andience11)
		instance_create_depth(928,896,-32,obj_andience1)
		instance_create_depth(1056,896,-32,obj_andience11)
		instance_create_depth(1152,896,-32,obj_andience11)
		instance_create_depth(1352,850,-31,Object144)
		instance_destroy(sandbag_panchi)
		instance_destroy(wakchang_jump)
		}
	}
	else
	{
	obj_camera.t_x -= 0.2
	}
obj_camera.y = 903
obj_camera.t_y = 903
}

if scene_2_alpha >= 2680 && scene_2_alpha < 3000
{
obj_camera.t_x -= 0.5
obj_camera.y = 903
obj_camera.t_y = 903
black_bg_alpha += 0.05
	if black_bg_alpha >= 1
	{
	global.vr_weared = 1
	instance_destroy(obj_andience1)
	instance_destroy(obj_andience11)
	instance_destroy(Object134)
	instance_destroy(agi_panchi)
	instance_destroy(runaway_panchi)
	instance_destroy(Object144)
	}
}

if scene_2_alpha >= 3000 && scene_2_alpha < 3900
{
	if scene_2_alpha = 3000
	{
	obj_camera.x = daepiso.x-800
		if instance_number(gyu_seong_endc) = 0
		{
		instance_create_depth(1376,903,daepiso.depth-10,gyu_seong_endc)
		instance_create_depth(1376-232,896,-32,obj_andience11)
		instance_create_depth(1376-182,896,-32,obj_andience1)
		instance_create_depth(1376+52,896,-32,obj_andience1)
		instance_create_depth(1376-63,896,-32,obj_andience111)
		instance_create_depth(1376+210,896,-32,obj_andience11)
		}
	}
	
	if black_bg_alpha > 0
	{
	black_bg_alpha -= 0.1
	}
	
	if scene_2_alpha = 3000
	{
	obj_camera.t_x = daepiso.x-800
	}
	else
	{
	obj_camera.t_x += 0.2
	}
obj_camera.y = 903
obj_camera.t_y = 903
}

///////////////////////////////////////////////////////////////////////

if scene_2_alpha >= 3900 && scene_2_alpha < 4330
{
	if scene_2_alpha = 3900
	{
	global.n_room = 0
	obj_camera.x = daepiso.x+1930
	obj_camera.t_x = daepiso.x+1930
	
	obj_camera.tv_x = 1280*0.8
	obj_camera.tv_y = 720*0.8
	obj_camera.v_x = 1280*0.8
	obj_camera.v_y = 720*0.8
	}
	else
	{
	obj_camera.t_x += 0.5
	}
obj_camera.y = 903
obj_camera.t_y = 903
}

if scene_2_alpha >= 4330 && scene_2_alpha < 5476
{
global.n_room = 1
	if scene_2_alpha = 4330
	{
	global.rainy = 0
	instance_create_depth(4320,352,out_daepiso.depth-32,droped_vr)
	obj_camera.tv_x = 1280*0.55
	obj_camera.tv_y = 720*0.55
	obj_camera.v_x = 1280*0.55
	obj_camera.v_y = 720*0.55
	
	obj_camera.x = out_daepiso.x-140
	obj_camera.t_x = out_daepiso.x-140
	}
	else
	{
	obj_camera.t_x += 0.25
	}
	
	if global.daepiso_story > 0
	{
		if scene_2_alpha >= 4710 && scene_2_alpha < 5070
		{
		black_bg_alpha += 0.05
		obj_camera.y ++
		obj_camera.t_y = -4
		}
		

		if scene_2_alpha >= 5070 && scene_2_alpha < 5476
		{
			if black_bg_alpha > 0
			{
				if black_bg_alpha > 1
				{
				instance_destroy(droped_vr)
				obj_floor11.image_index = 1
				obj_floor12.image_index = 1
				out_daepiso.image_index = 1
				instance_destroy(object58)
				instance_destroy(object581)
				instance_destroy(object5811)
				instance_destroy(window_)
		
				instance_create_depth(4544,256,out_daepiso.depth-10,wak_sign)
				
				instance_create_depth(4544-64,366,obj_floor11.depth-32,credit_hyumpanchi)
				instance_create_depth(4544-128,366,obj_floor11.depth-32,credit_hyumpanchi)
				instance_create_depth(4544+23,366,obj_floor11.depth-32,credit_hyumpanchi)
				instance_create_depth(4544+73,366,obj_floor11.depth-32,credit_hyumpanchi)
				instance_create_depth(4544+122,366,obj_floor11.depth-32,credit_hyumpanchi)

		
				obj_camera.t_y = 300
				obj_camera.y = 0
				obj_camera.tv_x = 1280*0.55
				obj_camera.tv_y = 720*0.55
				obj_camera.v_x = 1280*0.55
				obj_camera.v_y = 720*0.55
		
				obj_camera.x = out_daepiso.x-140
				obj_camera.t_x = out_daepiso.x-140
				black_bg_alpha = 1
				}
				
			black_bg_alpha -= 0.05
			}
			else
			{
			black_bg_alpha = 0
			}
		}
	}
obj_camera.y = 300
obj_camera.t_y = 300
}

if scene_2_alpha >= 5476 && scene_2_alpha < 6150
{
global.rainy = 0
global.n_room = 0
global.vr_weared = 0

if instance_number(stand_wak) = 0
{
obj_camera.tv_x = 1280*0.67
obj_camera.tv_y = 720*0.67
obj_camera.v_x = 1280*0.67
obj_camera.v_y = 720*0.67
out_daepiso.image_index = 0
obj_floor11.image_index = 0
obj_floor.image_index = 0
instance_destroy(credit_hyumpanchi)
instance_destroy(wak_sign)
instance_create_depth(2176,736,daepiso.depth-10,light_a)
instance_create_depth(2176+200,736,daepiso.depth-10,stand_wak)
instance_create_depth(2176+48+200,736,daepiso.depth-10,stand_angel)
	if global.messi > 0
	{
	instance_create_depth(2176+48+48+200,736,daepiso.depth-10,stand_messi)
	}
		
obj_camera.x = stand_wak.x-64
obj_camera.t_x = stand_wak.x-64
Object110.image_index = 2
}

obj_camera.tv_x += 1.28*0.5
obj_camera.tv_y += 0.72*0.5

white_bg_alpha -= 0.05



obj_camera.y = 703
obj_camera.t_y = 703
}

if scene_2_alpha >= 6150
{
black_bg_alpha += 0.05
}