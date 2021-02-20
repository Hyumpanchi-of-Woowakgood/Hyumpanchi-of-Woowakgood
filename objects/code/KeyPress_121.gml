/// @description Insert description here
// You can write your code in this editor
if global.nickname = "우왁굳" || global.nickname = "왁굳" || global.nickname = "오영택"
{
	if global.canuse_cheat > 0 && global.n_room = 1
	{
	var _message = instance_create_depth(-100,-100,-9999999999,achievement)
	_message.title = "오짱 전용 치트"
	_message.text = "10000원, 하트 지급"
 
	global.money += 10000
		if global.hp < 8
		{
		global.hp = 8
		}
	}
}
