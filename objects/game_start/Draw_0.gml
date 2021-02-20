/// @description Insert description here
// You can write your code in this editor
draw_set_color(c_black)
draw_set_alpha(black_alpha)
draw_rectangle(-32,-32,5000,5000,0)
depth = -999999999



if instance_number(naming_bar) > 0
{
var cm_vx = obj_camera.v_x/1280
var xx = camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])*0.5
var yy = camera_get_view_y(view_camera[0])+cm_vx*350

draw_set_color(c_white)
draw_set_alpha(naming_bar.image_alpha)
draw_rectangle(xx-cm_vx*120,yy-cm_vx*16,xx+cm_vx*120,yy+cm_vx*16,true)

draw_text_kl_scale(xx,yy-96*cm_vx,"당신의 이름은?",16,999,naming_bar.image_alpha,c_yellow,0,0,font01,cm_vx*0.19,cm_vx*0.19,0)

if naming_bar.pressed = 1
{
draw_text_kl_scale(xx,yy-16*cm_vx,string(global.nickname)+"|",16,999,naming_bar.image_alpha,c_white,0,0,font01,cm_vx*0.16,cm_vx*0.16,0)
}
else
{
draw_text_kl_scale(xx,yy-16*cm_vx,global.nickname,16,999,naming_bar.image_alpha,c_white,0,0,font01,cm_vx*0.16,cm_vx*0.16,0)
}



if naming_bar.alpha2 <= 0
{
	if naming_bar.alpha <= 0
	{
		if image_alpha >= 1
		{
		draw_text_kl_scale(xx,yy+64*cm_vx,"(글자수 13자 제한, 띄어쓰기 안됨 및 일부 한글 깨짐 주의)",16,9999,naming_bar.image_alpha,$FF5B14EE,0,0,font01,cm_vx*0.125,cm_vx*0.125,0)
		}
		else
		{
		draw_text_kl_scale(xx,yy+64*cm_vx,"^^7",16,9999,naming_bar.image_alpha,$FF5B14EE,0,0,font01,cm_vx*0.125,cm_vx*0.125,0)
		}
	}
	else
	{
	draw_text_kl_scale(xx,yy+64*cm_vx,"(이름을 정했다면 엔터키를 눌러 시작합니다)",16,9999,naming_bar.alpha,$FFF7D06D,0,0,font01,cm_vx*0.15,cm_vx*0.15,0)
	}
}
else
{
	if naming_bar.alpha2 > 0 && (!(string_pos("띵",global.nickname) != 0))
	{
	if naming_bar.keep_nickname = 1
	{
	draw_text_kl_scale(xx,yy+64*cm_vx,"(이름 입력을 안 한거 같은데?)",16,9999,1,$FF5B14EE,0,0,font01,cm_vx*0.125,cm_vx*0.125,0)
	}
	
	if naming_bar.keep_nickname = 2
	{
	draw_text_kl_scale(xx,yy+64*cm_vx,"(이름 입력을 안 했다니까?)",16,9999,1,$FF5B14EE,0,0,font01,cm_vx*0.125,cm_vx*0.125,0)
	}
	
	if naming_bar.keep_nickname = 3
	{
	draw_text_kl_scale(xx,yy+64*cm_vx,"(이름 입력 하셈)",16,999,1,$FF5B14EE,0,0,font01,cm_vx*0.125,cm_vx*0.125,0)
	}
	
	if naming_bar.keep_nickname = 4
	{
	draw_text_kl_scale(xx,yy+64*cm_vx,"(당신은 이름도 없습니까? 휴먼?)",16,9999,1,$FF5B14EE,0,0,font01,cm_vx*0.125,cm_vx*0.125,0)
	}
	
	if naming_bar.keep_nickname = 5
	{
	draw_text_kl_scale(xx,yy+64*cm_vx,"(이름 할 거 없으면 그냥 '우왁굳'으로 하셈)",16,9999,1,$FF5B14EE,0,0,font01,cm_vx*0.125,cm_vx*0.125,0)
	}
	
	if naming_bar.keep_nickname = 6
	{
	draw_text_kl_scale(xx,yy+64*cm_vx,"(아님 '오영택' 하던지)",16,999,1,$FF5B14EE,0,0,font01,cm_vx*0.125,cm_vx*0.125,0)
	}
	
	if naming_bar.keep_nickname = 7
	{
	draw_text_kl_scale(xx,yy+64*cm_vx,"(이름은 빈칸으로 둘 수 없어)",16,9999,1,$FF5B14EE,0,0,font01,cm_vx*0.125,cm_vx*0.125,0)
	}
	
	if naming_bar.keep_nickname = 8
	{
	draw_text_kl_scale(xx,yy+64*cm_vx,"(빈칸 안된다니까?)",16,999,1,$FF5B14EE,0,0,font01,cm_vx*0.125,cm_vx*0.125,0)
	}
	
	if naming_bar.keep_nickname = 9
	{
	draw_text_kl_scale(xx,yy+64*cm_vx,"(빈칸 안된다니까??)",16,999,1,$FF5B14EE,0,0,font01,cm_vx*0.125,cm_vx*0.125,0)
	}
	
	if naming_bar.keep_nickname = 10
	{
	draw_text_kl_scale(xx,yy+64*cm_vx,"(빈칸 안된다니까???)",16,999,1,$FF5B14EE,0,0,font01,cm_vx*0.125,cm_vx*0.125,0)
	}
	
	if naming_bar.keep_nickname = 11
	{
	draw_text_kl_scale(xx,yy+64*cm_vx,"(그냥 빈칸 이름 해라;;)",16,9999,1,$FF5B14EE,0,0,font01,cm_vx*0.125,cm_vx*0.125,0)
	}
	}
	
	if (string_pos("띵",global.nickname) != 0)
	{
	draw_text_kl_scale(xx,yy+64*cm_vx,"(띵...?)",16,9999,1,$FF5B14EE,0,0,font01,cm_vx*0.125,cm_vx*0.125,0)
	}
}
}








//$FF5B14EE
if a = 0
{
draw_text_kl_scale(640,200-64,"광감성 발작 경고",16,99999,alpha,$FF5B14EE,0,0,font01,1/3,1/3,image_angle)

draw_text_kl_scale(640,400-64,"이 게임은 반짝이는 이펙트들이 다소 포함되어 있습니다.",16,99999,alpha,c_white,0,0,font01,1/5,1/5,image_angle)
draw_text_kl_scale(640,440-64,"게임을 플레이 하면서 이상 증상이 있을 경우 즉시 게임을 종료해주세요",16,99999,alpha,c_white,0,0,font01,1/5,1/5,image_angle)

draw_text_kl_scale(1100,640-64,string(global.goyoo_number),16,99999,alpha,c_white,0,1,font01,1/10,1/10,image_angle)
}

if a = 1
{
draw_text_kl_scale(640,200-64,"게임을 시작하기 앞서",16,99999,alpha,$FF5B14EE,0,0,font01,1/3,1/3,image_angle)

draw_text_kl_scale(640,400-64,"파일에 첨부된 메모장을 가능한 꼭 읽어주세요.",16,99999,alpha,c_yellow,0,0,font01,1/5,1/5,image_angle)
draw_text_kl_scale(640,440-64,"해당 게임은 트위치 채팅과 연동이 되어있습니다.",16,99999,alpha,c_white,0,0,font01,1/5,1/5,image_angle)
draw_text_kl_scale(640,480-64,"다만 아이디의 길이가 너무 길거나, 채팅의 내용이 너무 길다면 짤릴 수 있습니다.",16,99999,alpha,$FFF7D06D,0,0,font01,1/5,1/5,image_angle)
draw_text_kl_scale(640,520-64,"또한 일부 한글은 출력이 제대로 안 될 수 있습니다. 참고해주세요.",16,99999,alpha,$FFF7D06D,0,0,font01,1/5,1/5,image_angle)
}

if a = 2
{
draw_text_kl_scale(640,200-64,"거의 다 완료했습니다!",16,99999,alpha,$FF5B14EE,0,0,font01,1/3,1/3,image_angle)

draw_text_kl_scale(640,400-64,"게임 화면의 크기나 소리/ 조작키는 ESC를 통해 환경설정을 열어 조정할 수 있습니다.",16,99999,alpha,c_white,0,0,font01,1/5,1/5,image_angle)
draw_text_kl_scale(640,440-64,"또한 게임 난이도가 어렵다면 스킬과 추가 체력을 최대한 활용해보세요.",16,99999,alpha,$FFF7D06D,0,0,font01,1/5,1/5,image_angle)
draw_text_kl_scale(640,480-64,"스킬은 강화 정도에 따라 공중에서 연속으로 사용 가능합니다.",16,99999,alpha,c_yellow,0,0,font01,1/5,1/5,image_angle)
}

if a = 3
{
draw_text_kl_scale(640,200-64,"마지막으로",16,99999,alpha,$FF5B14EE,0,0,font01,1/3,1/3,image_angle)

draw_text_kl_scale(640,400-64,"1인 개발 + 고1짜리 하꼬라 구현 못해서 아쉽거나 한 부분이 많고, 부족한 점도 많다만",16,99999,alpha,c_white,0,0,font01,1/5,1/5,image_angle)
draw_text_kl_scale(640,440-64,"추후 게임 소스파일과 게임파일 모두 공유 할 예정입니다.",16,99999,alpha,c_white,0,0,font01,1/5,1/5,image_angle)
draw_text_kl_scale(640,540-64,"개발 도움주신 모든 분들 감사합니다!",16,99999,alpha,c_yellow,0,0,font01,1/4,1/4,image_angle)
draw_text_kl_scale(640,580-64,"그리고 게임 플레이 해주셔서 감사합니다!",16,99999,alpha,$FFF7D06D,0,0,font01,1/4,1/4,image_angle)

	if t_alpha = -1
	{
	des_bgm -= 0.0015
	}
}