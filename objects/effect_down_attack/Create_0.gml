/// @description Insert description here
// You can write your code in this editor
image_speed = 0

if global.achievement_finish[6] = 0
{
var _message = instance_create_depth(-100,-100,-9999999999,achievement)
_message.title = "내려찍기"
_message.text = "처음으로 내려찍기를 사용했다"
global.achievement_finish[6] = 1
}

global.stemina -= 0.1