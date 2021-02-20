/// @description Insert description here
// You can write your code in this editor
var cm_vx = obj_camera.v_x/1280
var xx = camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])*0.5+location*96*cm_vx
var yy = camera_get_view_y(view_camera[0])+160*cm_vx

draw_sprite_ext(sprite95,image_index,xx,yy,cm_vx,cm_vx,0,c_white,image_alpha*0.8)

var string_ = ""
if image_index = 0 || image_index = 8
{
string_ = "<-"
}
if image_index = 1 || image_index = 9
{
string_ = "->"
}
if image_index = 2
{
string_ = "D"
}
if image_index = 3
{
string_ = "ESC"
}
if image_index = 4
{
string_ = "O"
}
if image_index = 5
{
string_ = "E"
}
if image_index = 6
{
string_ = "->"
}
if image_index = 11
{
string_ = "S"
}
if image_index = 12
{
string_ = "E"
}
if image_index = 13
{
string_ = "<-"
}
if image_index = 14
{
string_ = "->"
}
if image_index = 15
{
string_ = "E"
}

if image_index = 6
{
draw_text_kl_scale(xx+26*cm_vx,yy,string(string_),16,9999,image_alpha,image_blend,-1,0,font0,cm_vx*1/2.5,cm_vx*1/2.5,-90)
}
else if image_index = 13 || image_index = 14
{
	if image_index = 14
	{
		if instance_number(draw_key_) > 2
		{
		draw_text_kl_scale(camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])*0.5,yy+80*cm_vx,"+",16,9999,image_alpha,image_blend,-1,0,font0,cm_vx*1/2.5,cm_vx*1/2.5,0)
		draw_text_kl_scale(xx+26*cm_vx,yy+96*cm_vx,string(string_),16,9999,image_alpha,image_blend,-1,0,font0,cm_vx*1/2.5,cm_vx*1/2.5,-90)
		}
		else
		{
		draw_text_kl_scale(camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])*0.5,yy-16*cm_vx,"+",16,9999,image_alpha,image_blend,-1,0,font0,cm_vx*1/2.5,cm_vx*1/2.5,0)
		draw_text_kl_scale(xx+26*cm_vx,yy,string(string_),16,9999,image_alpha,image_blend,-1,0,font0,cm_vx*1/2.5,cm_vx*1/2.5,-90)
		}
	}
	else
	{
	draw_text_kl_scale(xx+26*cm_vx,yy,string(string_),16,9999,image_alpha,image_blend,-1,0,font0,cm_vx*1/2.5,cm_vx*1/2.5,-90)
	}
}
else
{
draw_text_kl_scale(xx,yy-18*cm_vx,string(string_),16,9999,image_alpha,image_blend,-1,0,font0,cm_vx*1/2.5,cm_vx*1/2.5,image_angle)
}







if image_index = 0
{
draw_text_kl_scale(xx-cm_vx*20,yy+85*cm_vx,"이동 (연타 하여 달리기) [달리기 키 변경 가능]",16,9999,1,image_blend,0,-1,font0,cm_vx*1/3,cm_vx*1/3,image_angle)
}

if image_index = 3
{
draw_text_kl_scale(xx+cm_vx*32,yy+85*cm_vx,"옵션",16,9999,1,image_blend,0,-1,font0,cm_vx*1/3,cm_vx*1/3,image_angle)
}

if image_index = 5
{
draw_text_kl_scale(xx,yy+85*cm_vx,"레이지 모드\n\n\n\n(왼쪽 위의 멘탈게이지가 풀 상태로 E키 꾹)",16,9999,1,image_blend,0,0,font0,cm_vx*1/3,cm_vx*1/3,image_angle)
}

if image_index = 6
{
draw_text_kl_scale(xx,yy+85*cm_vx,"구르기 (투사체를 제외한 공격 회피)",16,9999,1,image_blend,0,0,font0,cm_vx*1/3,cm_vx*1/3,image_angle)
}

if image_index = 7
{
draw_text_kl_scale(xx,yy+85*cm_vx,"점프",16,9999,1,image_blend,0,0,font0,cm_vx*1/3,cm_vx*1/3,image_angle)
}

if image_index = 2
{
draw_text_kl_scale(xx,yy+85*cm_vx,"상호작용",16,9999,1,image_blend,0,0,font0,cm_vx*1/3,cm_vx*1/3,image_angle)
}

if image_index = 8
{
draw_text_kl_scale(camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])*0.5,yy+85*cm_vx,"(방향키를 쥰내 눌러서 탈출!)",16,9999,1,image_blend,0,0,font0,cm_vx*1/3,cm_vx*1/3,image_angle)
}

if image_index = 11
{
draw_text_kl_scale(camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])*0.5,yy+85*cm_vx,"돌진베기 (달리기 도중 S) [멘탈 게이지 일부 소비]",16,9999,1,image_blend,0,0,font0,cm_vx*1/3,cm_vx*1/3,image_angle)
}

if image_index = 12
{
draw_text_kl_scale(camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])*0.5,yy+85*cm_vx,"지진파 (E) [멘탈 게이지 일부 소비]",16,9999,1,image_blend,0,0,font0,cm_vx*1/3,cm_vx*1/3,image_angle)
}

if image_index = 13
{
draw_text_kl_scale(camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])*0.5,yy+85*cm_vx,"가드 (모든 물리공격 방어) [스테미나 소모]",16,9999,1,image_blend,0,0,font0,cm_vx*1/3,cm_vx*1/3,image_angle)
}

if image_index = 14
{
draw_text_kl_scale(camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])*0.5,yy+85*cm_vx,"익스플로전 [멘탈 게이지 대량 소비]",16,9999,1,image_blend,0,0,font0,cm_vx*1/3,cm_vx*1/3,image_angle)
}




if a = 0
{
	if image_alpha < 1
	{
	image_alpha += 0.05
	}
}
else
{
image_alpha -= 0.05
	if image_alpha <= 0
	{
	instance_destroy()
	}
}