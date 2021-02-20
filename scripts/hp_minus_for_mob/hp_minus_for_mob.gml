function hp_minus_for_mob(argument0) {
	var random_val = choose(0,0,0,1)
	
	if random_val = 1
	{
		if global.nickname = "헤드샷"
		{
		var random_plus_damage = irandom_range(-1,15)
		}
		else
		{
		var random_plus_damage = irandom_range(-5,15)
		}
	}
	else
	{
	var random_plus_damage = 0
	}
	
	
	if audio_is_playing(wak_rio)
	{
	var damage_calcul = ((argument0+random_plus_damage)*1.5)/armored_level;
	}
	else
	{
	var damage_calcul = ((argument0+random_plus_damage)/armored_level);
	}

	
	if argument0 <= 0
	{
	random_plus_damage = 0
	view_shake(2,2,1)
	}
	
	if argument0 > 0
	{
	hp -= damage_calcul
	var d_ef = instance_create_depth(x,y,depth-1,draw_hp_m)
	d_ef.d_text = damage_calcul
	
	if object_index = gyu_seong
	{
	rage_dilay += damage_calcul
	}
	
	
	if argument0+random_plus_damage <= argument0
	{
	d_ef.image_blend = $FF1E9DFF
	view_shake(3,4,2)
	}
	else
	{
	var sfx = audio_play_sound(critical_sfx,0,0)
	audio_sound_gain(sfx,0.05*global.master_volume*2*global.sfx_volume,0)

	d_ef.image_blend = $FF6D19FF
	view_shake(4,6.8,4)
	d_ef.image_xscale = 1.1
	d_ef.image_yscale = 1.1
	
	
	var __i = choose(-1,1)
	var bl_ef = instance_create_depth(x,y,depth-1,ef_blood)
	var img_scale = -__i*irandom_range(8,15)/5
	bl_ef.image_xscale = img_scale
	bl_ef.image_yscale = abs(img_scale)
	bl_ef.t_x = __i
	bl_ef.image_angle = irandom_range(-90,90)
	global.w_alpha = 1
	}
	}





	if object_index != test_sandbag && object_index != test_wakchang && argument0 > 0
	{
		if global.nickname = "왁기" && global.pants > 0 && global.max_hp > global.hp
		{
		global.hp += 0.025
		}
		
		
		if instance_number(effect_special_skill) = 0 && instance_number(effect_attack_s) = 0
		{
			if global.nickname != "사디스트"
			{
			global.rage_gauge += 1.2
				if global.awakening > 1 && global.stop_awakening = 0
				{
				global.awakening += 0.15
				}
			}
			else
			{
			global.rage_gauge += 2.4
				if global.awakening > 1 && global.stop_awakening = 0
				{
				global.awakening += 0.3
				}
			}
		}
	}

	if object_index = test_wakchang
	{
		if hp < 0
		{
		died_hit_count ++
	
			if died_hit_count > max_died_hit_count
			{
			var food = instance_create_depth(x,y-32,player.depth-2,biyott)
			food.image_index = choose(0,1,2,3,4)
		
			died_hit_count = 0
			max_died_hit_count += 10
				if global.achievement_finish[52] = 0
				{
				var _message = instance_create_depth(-100,-100,-9999999999,achievement)
				_message.title = "날강두"
				_message.text = "왁창을 기절 시킨 뒤 물건을 뺏었다."
				global.achievement_finish[52] = 1
				}
			}
		}
	}



	if global.awakening > 1 && argument0 > 0
	{
	global.awakening += 0.0011
	}


}
