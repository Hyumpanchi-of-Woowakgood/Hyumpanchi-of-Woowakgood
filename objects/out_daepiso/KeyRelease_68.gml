/// @description Insert description here
// You can write your code in this editor

if instance_number(player) > 0
{
if global.in_building <= 0.16 && global.playing_scene = 0 && instance_number(game_start) = 0
{
	if point_distance(x,366,player.x,player.y) <= 32 && player.cannot_move = 0
	{
		if anime = 0
		{
		anime ++
		}
	}
}
}