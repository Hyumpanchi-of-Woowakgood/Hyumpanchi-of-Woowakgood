/// @description Insert description here
// You can write your code in this editor
for(var i = 0; i < 8; i ++)
{
draw_set_color(c_white)
draw_sprite_ext(sprite_index,image_index,x,y,i/3,i/5,0,c_white,image_alpha*0.16)
draw_set_alpha(1)
}


game_over_time ++


if global.revived = 0
{
	if game_over_time > 300
	{
		if game_over_alpha < 1
		{
		game_over_alpha += 0.01
		}
	}
}
else
{
game_over_alpha -= 0.05
}


if game_over_time > 700
{
tip_alpha += 0.01
}


draw_text_kl_scale(640,270,"Game over",16,999,game_over_alpha,image_blend,0,0,font01,1/2,1/2,image_angle)

if first_scene = 0
{
draw_text_kl_scale(980,670,"* 스페이스 바를 연타 해보세요!",16,99999,tip_alpha*game_over_alpha,image_blend,1,0,font01,1/9,1/9,image_angle)
}
else
{
draw_text_kl_scale(980,670,"* 스페이스 바를 연타 해보세요!",16,99999,image_alpha,image_blend,1,0,font01,1/9,1/9,image_angle)
}