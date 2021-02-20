/// @description Insert description here
// You can write your code in this editor
if image_index != 5
{
	if global.achievement_finish[7] = 0
	{
	var _message = instance_create_depth(-100,-100,-9999999999,achievement)
	_message.title = "먹방"
	_message.text = "음식먹고 체력 보충했다"
	global.achievement_finish[7] = 1
	}
}