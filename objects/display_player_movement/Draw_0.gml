/// @description Insert description here
// You can write your code in this editor
for(var i = 0; i <= 512; i++)
{
	if i > 0 && d_x[i] != -1
	{
	draw_set_alpha(0.25)
	draw_set_color(c_white)
	draw_line_width(d_x[i],d_y[i],d_x[i-1],d_y[i-1],2)
	}
	else
	{
	draw_set_alpha(0.25)
	draw_set_color(c_white)
	draw_line_width(d_x[i],d_y[i],d_x[i],d_y[i],2)
	}
}

draw_text(player.x,player.y,string(d_x[point_number])+" / "+string(d_y[point_number]))

if point_number > 0
{
draw_text(player.x,player.y+128,string(d_x[point_number-1])+" / "+string(d_y[point_number-1]))
}