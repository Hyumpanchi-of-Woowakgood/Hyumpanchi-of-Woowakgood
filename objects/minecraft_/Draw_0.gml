/// @description Insert description here
// You can write your code in this editor
draw_sprite_ext(spr_shadow,0,x,903+27,1-abs(y-903)/800,1-abs(y-903)/800,0,c_white,(1-abs(y-903)/1000)*0.3)

if ignore_gravity = 1
{
draw_set_alpha(alpha_)
draw_set_color($FF5B14EE)
draw_rectangle(x,y+32,x+dis_,y-32,0)
}
draw_self()