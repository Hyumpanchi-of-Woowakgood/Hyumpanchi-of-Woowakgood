/// @description Insert description here
// You can write your code in this editor
gravity = 0.1
image_alpha += (1 - image_alpha)*0.1

if y <= player.y
{
x += (player.x - x)*0.1
}


if image_index = 5
{
image_xscale = 1
image_yscale = 1
}

if y > player.y
{
	if image_index != 5
	{
		if global.voice_option = 0
		{
			if image_index != 4
			{
			var sfx = audio_play_sound(gibungoa,0,0)
			audio_sound_gain(sfx,0.3*global.master_volume*2*global.sfx_volume,0)
			}
			else
			{
			var sfx = audio_play_sound(yayaya,0,0)
			audio_sound_gain(sfx,0.2*global.master_volume*2*global.sfx_volume,0)
			}
		}
	}

if image_index = 0
{
global.hp ++
player.w_alpha = 1
}
else if image_index = 1
{
global.hp += 0.5
player.w_alpha = 1

var d_ef = instance_create_depth(player.x,player.y,depth-1,draw_hp_m)
d_ef.d_text = "추가 체력 +0.5"
d_ef.image_blend = c_green
}
else if image_index = 2
{
global.hp += 1.5
player.w_alpha = 1

var d_ef = instance_create_depth(player.x,player.y,depth-1,draw_hp_m)
d_ef.d_text = "추가 체력 +1.5"
d_ef.image_blend = c_green
}
else if image_index = 3
{
global.hp += 2
player.w_alpha = 1

var d_ef = instance_create_depth(player.x,player.y,depth-1,draw_hp_m)
d_ef.d_text = "추가 체력 +2"
d_ef.image_blend = c_green
}
else if image_index = 4
{
var d_ef = instance_create_depth(player.x,player.y,depth-1,draw_hp_m)
d_ef.d_text = "멘탈 게이지 +100"
d_ef.image_blend = c_green

global.mental_fulled = 1
global.rage_gauge = 100
player.w_alpha = 1
	if global.achievement_finish[39] = 0
	{
	var _message = instance_create_depth(-100,-100,-9999999999,achievement)
	_message.title = "이거나 드셔"
	_message.text = "왁굳의 멘탈게이지가 최대치로 올라갔다"
	global.achievement_finish[39] = 1
	}

	if global.messi = 0
	{
	p_mes_tuto = instance_create_depth(x,y,-999,message_)
	p_mes_tuto.t_image_alpha = 1
	p_mes_tuto.text = "15kg짜리 가축"
	p_mes_tuto.sub_text = "을 획득했다!"
	p_mes_tuto.auto_destroy = 0
	p_mes_tuto.alarm[1] = 200
	}
}

instance_destroy()
}


image_angle -= fir_vsp