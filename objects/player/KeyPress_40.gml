/// @description Insert description here
// You can write your code in this editor
if global.never_move = 0 && global.grabed = 0
{
	if place_meeting(x,y+2,obj_floor)
	{
		if spin = 0 && cannot_move = 0 && cooltime = 0 && down_attack = 0 && down_attack_plusing = 0 && hurt = 0 && attack_ <= 0 && (abs(global.movement_speed) > 0 || global.normal_attack_dmg < 5)
		{
		spin = 1
		cannot_move = 1
		cooltime = 1
		global.stemina_cooltime = 0
			repeat(choose(6,7,7,8,8,9,9,9,10,10,11,12))
			{
			randomize()
			var dust = instance_create_depth(x+irandom_range(-2,2),y+28+irandom_range(-2,2),depth+1,pepsi_effect)
			dust.image_xscale = 0.13
			dust.image_yscale = 0.13
			dust.vspeed = -irandom_range(100,200)/200
			dust.hspeed = (-global.movement_speed*irandom_range(10,50)/50)+irandom_range(-20,20)/5
			dust.image_alpha = 0.4
			}
			
			if global.achievement_finish[45] = 0
			{
			var _message = instance_create_depth(-100,-100,-9999999999,achievement)
			_message.title = "위기 탈출"
			_message.text = "구르기를 시전 했다"
			global.achievement_finish[45] = 1
			}
		}
		
		if spin = 0 && jump > 0 && down_attack = 0 && down_attack_plusing = 0 && hurt = 0 && attack_ <= 0
		{
		spin = 1
		cannot_move = 1
		cooltime = 1
		global.stemina_cooltime = 0
			repeat(choose(6,7,7,8,8,9,9,9,10,10,11,12))
			{
			randomize()
			var dust = instance_create_depth(x+irandom_range(-2,2),y+28+irandom_range(-2,2),depth+1,pepsi_effect)
			dust.image_xscale = 0.13
			dust.image_yscale = 0.13
			dust.vspeed = -irandom_range(100,200)/200
			dust.hspeed = (-global.movement_speed*irandom_range(10,50)/50)+irandom_range(-20,20)/5
			dust.image_alpha = 0.4
			}
			
			var ef = instance_create_depth(x,y,depth+1,gyu_seong_red_ef)
			var sprite = asset_get_index(string(sprite_get_name(string(spin_sprite)))+"_white")
			if sprite_exists(sprite)
			{
			ef.sprite_index = sprite
			}
			else
			{
			ef.sprite_index = spin_sprite
			}
			ef.image_index = 0
			ef.image_xscale = image_xscale
			ef.image_yscale = image_yscale
			ef.image_alpha = 0.2*image_alpha
			ef.image_angle = image_angle
			
			if global.achievement_finish[47] = 0
			{
			var _message = instance_create_depth(-100,-100,-9999999999,achievement)
			_message.title = "완벽한 구르기"
			_message.text = "땅에 착지 하자마자 구르기를 시전 했다"
			global.achievement_finish[47] = 1
			}
		}
	}
}