/// @description Insert description here
// You can write your code in this editor
if pressed = 1
{
	if string_length(keyboard_string) < 13
	{
	keyboard_string = string_replace(keyboard_string," ","");
	global.nickname = keyboard_string
	}
	else
	{
	keyboard_string = global.nickname
	}
}

if global.nickname != "여기를 클릭해서 이름 입력"
{
global.nickname = string_replace(global.nickname," ","");
}