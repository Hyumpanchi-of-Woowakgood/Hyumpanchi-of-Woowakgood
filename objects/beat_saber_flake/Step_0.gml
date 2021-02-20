/// @description Insert description here
// You can write your code in this editor

image_angle += angle_plus*2

if y > 903
{
instance_create_depth(x,y,depth-1,effect_bomb)
instance_destroy()
}


hspeed += (0 - hspeed)*0.01

ef++
if ef > 1
{
var effect__ = instance_create_depth(x,y,depth+1,minecraft_effect)
effect__.sprite_index = sprite_index
effect__.image_index = image_index
effect__.image_angle = image_angle
effect__.image_xscale = image_xscale
effect__.image_yscale = image_yscale
ef = 0
}