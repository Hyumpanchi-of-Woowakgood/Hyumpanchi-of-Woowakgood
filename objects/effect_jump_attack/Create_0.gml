/// @description Insert description here
// You can write your code in this editor
image_speed = 0

if global.achievement_finish[5] = 0
{
var _message = instance_create_depth(-100,-100,-9999999999,achievement)
_message.title = "올려치기"
_message.text = "처음으로 올려치기를 사용했다"
global.achievement_finish[5] = 1
}