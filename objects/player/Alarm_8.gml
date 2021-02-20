/// @description Insert description here
// You can write your code in this editor
if global.tutorial = 0
{
var key_guide = instance_create_depth(-100,-100,-999994,draw_key_)
key_guide.location = -1.5
key_guide.image_index = 0

var key_guide = instance_create_depth(-100,-100,-999994,draw_key_)
key_guide.location = -0.5
key_guide.image_index = 1

var key_guide = instance_create_depth(-100,-100,-999994,draw_key_)
key_guide.location = 1.5
key_guide.image_index = 2

global.tutorial = 1
}