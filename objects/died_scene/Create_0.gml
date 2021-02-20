/// @description Insert description here
// You can write your code in this editor
depth = 99
image_alpha = 0

game_over_time = 0
game_over_alpha = 0
tip_alpha = 0
can_alpha_plus = 0
text_alpha = 0
alarm[1] = 250

alarm[2] = 60


first_scene = global.achievement_finish[1]

if global.achievement_finish[1] = 0
{
var _message = instance_create_depth(-100,-100,-9999999999,achievement)
_message.title = "It's not over"
_message.text = "처음으로 쓰러졌다"
global.achievement_finish[1] = 1
}
