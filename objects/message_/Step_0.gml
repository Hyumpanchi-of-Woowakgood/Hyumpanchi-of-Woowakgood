/// @description Insert description here
// You can write your code in this editor
depth = -999997

image_alpha += (t_image_alpha - image_alpha)*0.06

if instance_number(goarosa) > 0 || instance_number(draw_key_) > 0
{
do_not_draw = 1
}

if (text = "왁초리" || text = "VR" || text = "승부 빤스" || text = "15kg짜리 가축" || text = "왁기의 빨대" || text = "헤르메스 부츠")
{
do_not_draw = 0
}


if auto_destroy = 1
{
	if instance_number(player) > 0 && player.entering_daepiso > 0
	{
	t_image_alpha -= 0.05
	}
}

if wipe > 0
{
t_image_alpha -= 0.05
}

if image_alpha <= 0 && t_image_alpha <= 0
{
instance_destroy()
}

if global.playing_scene = 1 && text != "왁초리" && text != "VR" && text != "승부 빤스" && text != "15kg짜리 가축" && text != "왁기의 빨대" && text != "헤르메스 부츠"
{
instance_destroy()
}