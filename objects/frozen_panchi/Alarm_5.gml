/// @description Insert description here
// You can write your code in this editor
if global.boots_ = 0
{
next_scene = 3
image_xscale = abs(image_xscale)

p_mes = instance_create_depth(x,y,player.depth-1,player_message)
p_mes.text = "그러니까..."
p_mes.target = id
}