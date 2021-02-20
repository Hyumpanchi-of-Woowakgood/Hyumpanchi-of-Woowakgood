/// @description Insert description here
// You can write your code in this editor
global.money += donated_cost+random_plus_money

var sfx = audio_play_sound(donation_sfx,0,0)
audio_sound_gain(sfx,0.83*global.master_volume*2*global.sfx_volume,0)



if global.achievement_finish[46] = 0 && donated_cost+random_plus_money = 1000
{
var _message = instance_create_depth(-100,-100,-9999999999,achievement)
_message.title = "1000원 도네"
_message.text = "응 반응 안 해줘"
global.achievement_finish[46] = 1
}