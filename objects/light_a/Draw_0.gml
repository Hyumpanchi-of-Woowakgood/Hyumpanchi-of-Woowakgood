/// @description Insert description here
// You can write your code in this editor
var c_scale = obj_camera.v_y/720

depth = obj_floor.depth+1
//draw_sprite_ext(BG,2,x,y,999,999,0,c_white,1)

for(var i = 1; i > 0.2; i -= 0.0125)
{
draw_sprite_ext(Sprite178,0,x,y,scale*c_scale*i,scale*c_scale*i,0,c_white,0.01)
}

for(var i = 1; i > 0.2; i -= 0.0125)
{
draw_sprite_ext(Sprite178,0,x,y,scale*0.7*c_scale*i,scale*0.7*c_scale*i,0,c_white,0.03)
}

for(var i = 1; i > 0.2; i -= 0.0125)
{
draw_sprite_ext(Sprite178,0,x,y,scale*0.3*c_scale*i,scale*0.3*c_scale*i,0,c_white,0.03)
}

for(var i = 1; i > 0.2; i -= 0.0125)
{
draw_sprite_ext(Sprite178,0,x,y,scale*5*c_scale*i,scale*0.1*c_scale*i,0,c_white,0.005)
}

for(var i = 1; i > 0.2; i -= 0.1)
{
draw_sprite_ext(Sprite178,0,x,y,scale*4.3*c_scale*i,scale*0.3*c_scale*i,45,c_white,0.004)
}

for(var i = 1; i > 0.2; i -= 0.1)
{
draw_sprite_ext(Sprite178,0,x,y,scale*4.3*c_scale*i,scale*0.3*c_scale*i,-45,c_white,0.004)
}

for(var i = 1; i > 0.2; i -= 0.1)
{
draw_sprite_ext(Sprite178,0,x,y,scale*4*c_scale*i,scale*0.3*c_scale*i,90,c_white,0.004)
}