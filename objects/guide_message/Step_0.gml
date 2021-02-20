/// @description Insert description here
// You can write your code in this editor
time ++
depth = obj_camera.depth+10
if a = 0
{
	if image_alpha < 1
	{
	image_alpha += 0.1
	}
}
else
{
	if a != -1
	{
	image_alpha -= 0.1
		if image_alpha <= 0
		{
		instance_destroy()
			if instance_number(code) > 0
			{
			code.p_mes_guide = -1
			}
		}
	}
}

if title = "채팅 연동 투표 on!"
{
	if time > 600
	{
	a = 1
	}
}
else
{
	if time > 230
	{
	a = 1
	}
}