/// @description Insert description here
// You can write your code in this editor
tv_x = 1280*0.8
tv_y = 720*0.8

time ++

depth = player.depth-32

if time > 0 && time < 280
{
	if scene_x > -10
	{
	scene_x += (-10 - scene_x)*0.01
	}
scene_x -= 0.1
	
	if scene_alpha < 1
	{
	scene_alpha += 0.1
	}
}

if time > 280
{
scene_x += (-1300 - scene_x)*0.01
	if scene_alpha >= 0
	{
	scene_alpha -= 0.1
	}
}

if time > 320
{
x += (1568 - x)*0.08
y += (700 - y)*0.08
}


if time > 400 && time < 470
{
alabong_alpha += (1 - alabong_alpha)*0.1
alabong_angle += (0 - alabong_angle)*0.1
}

if time > 470 && time < 500
{
var target_x = x
var target_y = y+16
	if instance_number(mob_parents) > 0
	{
	var nearest_enemy = instance_nearest(x,y,mob_parents)
	target_x = nearest_enemy.x
	target_y = nearest_enemy.y+16
	}
var target_point = point_direction(target_x,target_y,x,y,)

	
alabong_angle += (target_point - alabong_angle)*0.1
}

if time > 520 && time < 999999
{
var sfx = audio_play_sound(goarosa_laugh,0,0)
audio_sound_gain(sfx,0.3*global.master_volume*2*global.sfx_volume,0)
var ala_ = instance_create_depth(x,y,depth+1,goarosa_terror)
ala_.image_angle = alabong_angle
ala_.direction = alabong_angle
ala_.speed = -0.8
time = 999999
}