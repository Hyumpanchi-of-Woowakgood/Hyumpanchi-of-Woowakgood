/// @description  bloody(angle);
/// @param angle
function bloody(argument0)
{
var _effect = instance_create_depth(x+irandom_range(-5,5),y+irandom_range(-5,5),depth-1,ef_blood_2)
	if instance_exists(argument0)
	{
	_effect.image_angle = point_direction(x,y,argument0.x,argument0.y)
	}
_effect.sprite_index = blood_effect_white

	if global.blood_effect > 0
	{
	_effect.sprite_index = blood_effect
	}
}