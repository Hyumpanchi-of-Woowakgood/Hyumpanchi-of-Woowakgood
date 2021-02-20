/// @description Insert description here
// You can write your code in this editor
y = 903
image_index += abs(movement_speed*0.12)
x += movement_speed*0.7

if abs(movement_speed) < 0.1
{
image_index += (0 - image_index)*0.1
	if abs(image_index) < 0.1
	{
	image_index = 0
	}
}



if stop = 1
{
movement_speed += (0 - movement_speed)*0.7
}