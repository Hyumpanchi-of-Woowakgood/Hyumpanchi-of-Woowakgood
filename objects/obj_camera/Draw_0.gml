/// @description Insert description here
// You can write your code in this editor
if global.shine_ef = 0
{
draw_set_color(c_white)
draw_set_alpha(global.w_alpha)
draw_rectangle(0,0,room_width,room_height,0)
draw_set_alpha(1)

draw_set_color(c_white)
draw_set_alpha(global.w_alpha2)
draw_rectangle(0,0,room_width,room_height,0)
draw_set_alpha(1)
}


draw_set_color(c_white)
draw_set_alpha(global.terror)
draw_rectangle(0,0,room_width,room_height,0)
draw_set_alpha(1)

draw_set_color(c_white)
draw_set_alpha(global.revived)
draw_rectangle(0,0,room_width,room_height,0)
draw_set_alpha(1)


draw_set_color(c_black)
draw_set_alpha(global.in_building)
draw_rectangle(0,0,room_width,room_height,0)
draw_set_alpha(1)


draw_set_color(c_black)
draw_set_alpha(global.ending*1.3-0.2)
draw_rectangle(0,0,room_width,room_height,0)
draw_set_alpha(1)

draw_set_color(c_black)
draw_set_alpha(global.black_)
draw_rectangle(0,0,room_width,room_height,0)
draw_set_alpha(1)

draw_set_color(c_black)
draw_set_alpha(global.last_scene_black)
draw_rectangle(0,0,room_width,room_height,0)
draw_set_alpha(1)








if global.dev_mode > 0
{
var xx = camera_get_view_x(view_camera[0])
var yy = camera_get_view_y(view_camera[0])

if instance_number(ending_credits) > 0
{
draw_text_kl_scale(xx+16,yy+200,"scene_2_alpha : "+string(ending_credits.scene_2_alpha),16,99999,1,c_white,1,-1,font01,1/9,1/9,0)
}
draw_text_kl_scale(xx+16,yy+200+32,"in_building : "+string(global.in_building),16,99999,1,c_white,1,-1,font01,1/9,1/9,0)
draw_text_kl_scale(xx+16,yy+200+64,"movement_speed : "+string(global.movement_speed),16,99999,1,c_white,1,-1,font01,1/9,1/9,0)
	if instance_number(player) > 0
	{
	draw_text_kl_scale(xx+16,yy+200+96,"knockback_speed : "+string(player.movement_speed),16,99999,1,c_white,1,-1,font01,1/9,1/9,0)
	draw_text_kl_scale(xx+16,yy+200+128,"Loc : "+string(player.x)+" , "+string(player.y),16,99999,1,c_white,1,-1,font01,1/9,1/9,0)
	}
	else
	{
	draw_text_kl_scale(xx+16,yy+200+96,"knockback_speed : none_player",16,99999,1,c_white,1,-1,font01,1/9,1/9,0)
	draw_text_kl_scale(xx+16,yy+200+128,"Loc : none_player",16,99999,1,c_white,1,-1,font01,1/9,1/9,0)
	}
draw_text_kl_scale(xx+16,yy+200+160,"HP : "+string(global.hp)+" / "+string(global.max_hp),16,99999,1,c_white,1,-1,font01,1/9,1/9,0)
draw_text_kl_scale(xx+16,yy+200+192,"Stemina : "+string(global.stemina)+" / "+string(global.stemina_cooltime),16,99999,1,c_white,1,-1,font01,1/9,1/9,0)
draw_text_kl_scale(xx+16,yy+200+192+32,"keep_skiping : "+string(code.keep_skiping),16,99999,1,c_white,1,-1,font01,1/9,1/9,0)
draw_text_kl_scale(xx+16,yy+200+192+32+32,"days : "+string(global.wave)+"  replay : "+string(global.replay_time),16,99999,1,c_white,1,-1,font01,1/9,1/9,0)
	if instance_number(gyu_seong) > 0
	{
	draw_text_kl_scale(xx+16,yy+200+192+32+32+32,"scene : "+string(gyu_seong.scene*10),16,99999,1,c_white,1,-1,font01,1/9,1/9,0)
	}
	
	draw_text_kl_scale(xx+16,yy+200+192+32+32+32+32,"Room : "+string(global.n_room),16,99999,1,c_white,1,-1,font01,1/9,1/9,0)
}