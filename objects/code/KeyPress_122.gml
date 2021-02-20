/// @description Insert description here
// You can write your code in this editor
//room_goto(room3)

global.daepiso_story = 1
global.money += 10000
global.dev_mode ++

if global.dev_mode = 1
{
instance_create_depth(-100,-100,0,display_player_movement)
}

if global.dev_mode > 1
{
instance_destroy(display_player_movement)
global.dev_mode = 0
}
