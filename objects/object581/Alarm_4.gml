/// @description Insert description here
// You can write your code in this editor
if instance_number(player) > 0
{
if player.sprite_index = player.move_sprite
{
if instance_number(message_) = 0
{
if p_mes != -1 && skip_dilay = 0 && point_distance(x,366,player.x,player.y) <= 16
{
global.movement_speed = 0
player.movement_speed = 0
skip_dilay = 1
interatction = 1
image_xscale = 1.1
image_yscale = 1.1
image_alpha = 1
instance_destroy(player_message)
global.playing_scene = 1

if scene < 1
{
p_mes = instance_create_depth(x,y,player.depth-1,player_message)
}

	if scene = 0
	{
	p_mes.text = "글라스데코 엔젤"
		if image_index = 1
		{
		p_mes.text = "사이버 두"
		}
	p_mes.target = player
	alarm[3] = 25
	}
	
	if scene >= 1
	{
	skip_dilay = 1
	alarm[2] = 10
	}
scene ++
}
}
}
}