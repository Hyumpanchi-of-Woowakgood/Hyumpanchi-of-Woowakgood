/// @description Insert description here
// You can write your code in this editor
if place_meeting(x,y,obj_floor) || place_meeting(x,y,obj_floor11)
{
	if instance_number(player) > 0
	{
	var _fl_blood = instance_create_depth(x,y,player.depth+10,blood_on_floor)
	}
	else
	{
	var _fl_blood = instance_create_depth(x,y,out_daepiso.depth-10,blood_on_floor)
	}
	
_fl_blood.scale_dir = choose(-1,1)
_fl_blood.sprite_index = sprite991
if global.blood_effect > 0
{
_fl_blood.sprite_index = sprite99
}
instance_destroy()
}

if y > room_height+100
{
instance_destroy()
}

image_alpha += 0.1
speed += (0 - speed)*0.01