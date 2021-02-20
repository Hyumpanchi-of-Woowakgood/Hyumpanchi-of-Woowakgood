/// @description Insert description here
// You can write your code in this editor
image_alpha -= 0.15

if image_alpha <= 0
{
instance_destroy()
}

if global.achievement_finish[40] = 0
{
var _message = instance_create_depth(-100,-100,-9999999999,achievement)
_message.title = "씹 찐 따"
_message.text = "씹찐따 연속 공격을 시전했다"
global.achievement_finish[40] = 1
}