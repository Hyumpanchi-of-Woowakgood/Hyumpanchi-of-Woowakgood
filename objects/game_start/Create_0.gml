/// @description Insert description here
// You can write your code in this editor
alpha = -50
a = 0
go_next = 0
black_alpha = 1

start_ = 0
t_alpha = -50
skiped = 0


if global.trailer_mode = 1
{
go_next = 1
t_alpha = -1
room_goto(room0) // 0
}

des_bgm = 0.1
cre_bgm = audio_play_sound(create_bgm,0,1)