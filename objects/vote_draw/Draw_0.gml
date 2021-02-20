/// @description Insert description here
// You can write your code in this editor
if global.playing_scene = 0 && instance_number(master_volume_setting) = 0 && global.in_building <= 0.2
{
var cm_vx = obj_camera.v_x/1280
var xx = camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])*0.5
var yy = camera_get_view_y(view_camera[0])-cm_vx*90

draw_set_alpha(image_alpha*0.8)
draw_set_color(c_black)
draw_rectangle(xx-cm_vx*200,yy,xx+cm_vx*200,yy+cm_vx*180,0)

var agree = (global.vote_agree/global.total_vote)
agree_gauge += (global.vote_agree - agree_gauge)*0.1
var disagree = (global.vote_disagree/global.total_vote)
disagree_gauge += (global.vote_disagree - disagree_gauge)*0.1

draw_set_alpha(image_alpha*0.67)
draw_set_color($FFF0AE00)
draw_rectangle(xx-cm_vx*165*agree_gauge/global.total_vote,yy+cm_vx*125,xx,yy+cm_vx*110,0)

draw_set_alpha(image_alpha*0.67)
draw_set_color($FF5B14EE)
draw_rectangle(xx+cm_vx*165*disagree_gauge/global.total_vote,yy+cm_vx*125,xx,yy+cm_vx*110,0)


draw_text_kl_scale(xx,yy+cm_vx*120,string(agree*100)+"%  /  "+string(disagree*100)+"%",16,999,image_alpha,c_white,0,0,font0,1/3*cm_vx,1/3*cm_vx,image_angle)
draw_text_kl_scale(xx+cm_vx*135,yy+cm_vx*155,"["+string(10-floor(time/60))+"초]",16,999,image_alpha,$FF5B14EE,0,0,font0,1/4*cm_vx,1/4*cm_vx,image_angle)

w_alpha += (0 - w_alpha)*0.1
draw_set_alpha(w_alpha)
draw_set_color(c_white)
draw_rectangle(xx-cm_vx*200,yy,xx+cm_vx*200,yy+cm_vx*180,0)
}