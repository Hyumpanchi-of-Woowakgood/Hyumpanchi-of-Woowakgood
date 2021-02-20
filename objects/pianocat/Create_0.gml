/// @description Insert description here
// You can write your code in this editor
image_speed = 0
image_index = 0
time = 0
scene_alpha = 0
scene_x = 1000
alabong_angle = 360
alabong_alpha = 0
x = 1568+choose(2000,-2000)
y = 4000

if global.achievement_finish[42] = 0
{
var _message = instance_create_depth(-100,-100,-9999999999,achievement)
_message.title = "피아노캣"
_message.text = "피아노캣이 지원 해주러 왔다"
global.achievement_finish[42] = 1
}