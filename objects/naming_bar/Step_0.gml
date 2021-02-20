/// @description Insert description here
// You can write your code in this editor
if des = 0
{
image_alpha += (1 - image_alpha)*0.1
}
else
{
image_alpha += (-0.1 - image_alpha)*0.1
	if image_alpha <= -0.099
	{
	game_start.start_ = 1
	instance_destroy()
	}
}

if keyboard_check_pressed(vk_anykey)
{
alpha = -10
}

alpha += 0.05

alpha2 += (-0.1 - alpha2)*0.1

