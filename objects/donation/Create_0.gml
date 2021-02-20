/// @description Insert description here
// You can write your code in this editor
image_alpha = 0
time = 0


random_x = irandom_range(300,920)
random_y = irandom_range(200,620)
if global.wave > 3
{
random_plus_money = choose(0,1,1,2,2,2,3,3,3,4,4,4,5,5,6,6,7,7,8,9,10)*100
}
else
{
random_plus_money = choose(7,7,7,8,8,8,9,9,9,10,10,10,11,11,12,12,13)*100
}
alarm[1] = 1

if instance_number(gyu_seong) > 0
{
name_d = "규성이"
random_dona_text = choose("(대충 도배 글)")
}
else
{
name_d = "왁창"
random_dona_text = choose("너 밴","혐팬치들 아무것도 못하죠?","좋았어 형!","Vow~","'LEGENO'","ㅋㅋ루ㅋㅋ","ㅋㅋ루삥뽕")
}


if global.achievement_finish[0] = 0
{
var _message = instance_create_depth(-100,-100,-9999999999,achievement)
_message.title = "첫 도네"
_message.text = "처음으로 도네를 받았다"
global.achievement_finish[0] = 1
}
