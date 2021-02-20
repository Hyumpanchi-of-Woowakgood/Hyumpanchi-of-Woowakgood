/// @description Insert description here
// You can write your code in this editor
if place_meeting(x,y,player)
{
var __i = sign(player.x - x)

	if __i = 0
	{
	__i = choose(-0.2,0.2)
	}
t_x = x
movement_speed = 0
movement_speed -= __i*2
	if cannot_move = 0
	{
	cannot_move = 1
	alarm[2] = 14
	}
}