/// @description Insert description here
// You can write your code in this editor
y = 903
image_index += abs(movement_speed*0.12)
x += movement_speed*0.7

if abs(movement_speed) < 0.1
{
image_index += (0 - image_index)*0.1
	if abs(image_index) < 0.1
	{
	image_index = 0
	}
}




if slide = 1
{
sprite_index = pl_hurt_hyumpanchi_panty
image_index += (1 - image_index)*0.1
	if abs(image_index) < 1.1
	{
	image_index = 1
	}
	
movement_speed += (0 - movement_speed)*0.03
	
	repeat(floor(movement_speed))
	{ 
	randomize()
	var dust = instance_create_depth(x+irandom_range(-8,8)-movement_speed*0.5,y+28+irandom_range(-2,2),depth+1,pepsi_effect)
	dust.image_xscale = 0.13
	dust.image_yscale = 0.13
	dust.vspeed = -irandom_range(100,200)/200
	dust.hspeed = (-movement_speed*irandom_range(10,50)/50)+irandom_range(-20,20)/5
	dust.image_alpha = 0.4
	}
	
bomb = 1
}

w_alpha += (-0.01 - w_alpha)*0.1
if bomb > 0
{
bomb_on++
	
	if bomb_on > max_bomb_on
	{
	w_alpha = 1
	max_bomb_on --
	bomb_on = 0
	}
}