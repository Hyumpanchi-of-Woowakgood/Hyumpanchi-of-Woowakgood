/// @description Insert description here
// You can write your code in this editor
image_alpha = global.last_scene_black

if x > player.x
{
movement_speed += (-1.2 - movement_speed)*0.1
}
else
{
movement_speed += (1.2 - movement_speed)*0.1
}


image_xscale = -abs(image_xscale)*sign(movement_speed)

if abs(x - player.x) >= t_dis
{
x += movement_speed*0.9
image_index += abs(movement_speed)*0.3
}
else
{
image_index = 0
time++
}


if time > 90 && image_alpha >= 1
{
time = 0

var random_val = percentage_k(30)
	if random_val = 1
	{
	instance_create_depth(x,y,depth-1,Object110)
	var p_mes_for_p = instance_create_depth(x,y,player.depth-1,player_message)
	p_mes_for_p.text = choose("형...","형... 일어나...","ㅠㅠ","형 ㅠㅠ","일어나 형 ㅠㅠ")
	p_mes_for_p.target = self.id
	p_mes_for_p.alarm[0] = 150
	}
}