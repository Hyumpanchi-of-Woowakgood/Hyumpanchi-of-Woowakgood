/// @description Insert description here
// You can write your code in this editor
if global.terror < 1
{
	if global.achievement_finish[2] = 0
	{
	var _message = instance_create_depth(-100,-100,-9999999999,achievement)
	_message.title = "회전 회오리"
	_message.text = "회전 베기를 처음으로 사용했다"
	global.achievement_finish[2] = 1
	}
}