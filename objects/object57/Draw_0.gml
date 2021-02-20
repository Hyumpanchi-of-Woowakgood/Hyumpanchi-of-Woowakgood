/// @description Insert description here
// You can write your code in this editor
var xx = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])

draw_text_kl_scale(640,280,"The Hyumpanchi of Woowakgood",16,99999,game_over_alpha*total_alpha,image_blend,0,0,font01,1/3,1/3,image_angle)

draw_text_kl_scale(640,380,"-The end-",16,999,(game_over_alpha-1.3)*total_alpha,image_blend,0,0,font01,1/2,1/2,image_angle)

var achived = 0
for(var i = 0; i < 23; i++)
{
	if global.achievement_finish[i] = 1
	{
	achived ++
	}
}


var play_time = floor(global.playtime/3600)
if play_time <= 30
{
global.rank = "SS"
}


if play_time <= 35 && play_time > 30
{
global.rank = "S"
}

if play_time > 35 && play_time <= 40
{
global.rank = "A"
}

if play_time > 40 && play_time <= 45
{
global.rank = "B"
}

if play_time > 45 && play_time <= 50
{
global.rank = "C"
}

if play_time > 50
{
global.rank = "D"
}

draw_text_kl_scale(840,520,"랭크 : "+string(global.rank),32,99999,achievement_alpha*total_alpha,image_blend,0,-1,font01,1/6*(2-achievement_alpha),1/6*(2-achievement_alpha),image_angle)
draw_text_kl_scale(840,540,"총 달성한 도전 과제 수 : "+string(achived)+"/65",32,99999,achievement_alpha*total_alpha,image_blend,0,-1,font01,1/6*(2-achievement_alpha),1/6*(2-achievement_alpha),image_angle)
draw_text_kl_scale(840,560,"총 게임 오버 수 : "+string(global.total_died),32,99999,achievement_alpha*total_alpha,image_blend,0,-1,font01,1/6*(2-achievement_alpha),1/6*(2-achievement_alpha),image_angle)
draw_text_kl_scale(840,580,"플레이 타임 : "+string(floor(global.playtime/3600))+"분 이상",32,99999,achievement_alpha*total_alpha,image_blend,0,-1,font01,1/6*(2-achievement_alpha),1/6*(2-achievement_alpha),image_angle)




draw_text_kl_scale(xx-32,680,"(*Esc로 다음으로 넘어갑니다)",32,99999,esc_alpha*total_alpha,image_blend,0,1,font01,1/8,1/8,image_angle)
