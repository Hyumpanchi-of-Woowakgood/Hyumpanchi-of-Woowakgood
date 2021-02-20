function hp_minus_for_player(argument0) {
	var random_val = choose(0,0,0,1)
	if random_val = 1
	{
	var random_plus_damage = choose(0,0,0,0,0,0,1)
	}
	else
	{
	var random_plus_damage = 0
	}
	
	if argument0 <= 0
	{
	random_plus_damage = 0
	}
	
	if global.rain_event != 5 && instance_number(gyu_seong) > 0 && argument0 > 0 && global.vr_weared = 0
	{
	random_plus_damage = 9999
		if global.gyu_seong_wave != 1
		{
		random_plus_damage = -argument0
		}
	}
	
	var d_ef = instance_create_depth(player.x,player.y,depth-1,draw_hp_m)
	d_ef.d_text = (argument0+random_plus_damage)/player.armored_level


	if global.hp > 0 && (argument0+random_plus_damage)/player.armored_level > 0
	{
		if global.nickname = "마조히스트"
		{
		global.rage_gauge += 10
		}
		else
		{
		global.rage_gauge += 5
		}


		if global.hp != code.before_hp
		{
		code.injured_effect = 1
		code.before_hp = global.hp
		}

		if argument0+random_plus_damage <= argument0
		{
		d_ef.image_blend = $FF1E9DFF
		view_shake(4,0,10)
		}
		else
		{
		d_ef.image_blend = $FF6D19FF
		view_shake(4,0,15)
		}
	}
	

	
	if global.playing_scene = 0 && argument0 > 0
	{
		if (random_plus_damage > 0 || global.pants = 0 || (global.vr_weared > 0 && instance_number(gyu_seong) > 0))
		{
		global.hp -= 1
		}
		else
		{
		global.hp -= 0.5
		}
	}
}
