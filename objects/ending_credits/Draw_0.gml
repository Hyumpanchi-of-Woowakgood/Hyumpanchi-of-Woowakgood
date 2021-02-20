/// @description Insert description here
// You can write your code in this editor
var c_scale = obj_camera.v_y/720
var xx = camera_get_view_x(view_camera[0])
var yy = camera_get_view_y(view_camera[0])

if (scene_2_alpha > 978 && scene_2_alpha <= 2233) || (scene_2_alpha >= 5500 && scene_2_alpha < 6100)
{
	if scene_2_alpha >= 5500
	{
	var light_y = 300
	var light_x = xx + camera_get_view_width(view_camera[0]) - 100
	}
	else
	{
	var light_y = 250
	var light_x = xx + camera_get_view_width(view_camera[0]) - 200
	}

for(var i = 1; i > 0.2; i -= 0.05)
{
draw_sprite_ext(sprite64,0,light_x,light_y,0.5*c_scale*i,0.5*c_scale*i,0,c_white,0.07+white_bg_alpha/15)
}

for(var i = 1; i > 0.25; i -= 0.05)
{
draw_sprite_ext(sprite64,0,light_x-obj_camera.y*16/160,light_y+obj_camera.y*16/160,1.5*c_scale*i,1.5*c_scale*i,0,c_white,0.08+white_bg_alpha/15)
}

for(var i = 1; i > 0.3; i -= 0.05)
{
draw_sprite_ext(sprite64,0,light_x-obj_camera.y*16/128,light_y+obj_camera.y*16/128,c_scale*i,c_scale*i,0,c_white,0.05+white_bg_alpha/15)
}

for(var i = 1; i > 0.35; i -= 0.05)
{
draw_sprite_ext(sprite64,0,light_x-obj_camera.y*16/96,light_y+obj_camera.y*16/96,c_scale*i*0.8,c_scale*i*0.8,0,c_white,0.05+white_bg_alpha/15)
}

for(var i = 1; i > 0.4; i -= 0.05)
{
draw_sprite_ext(sprite64,5,light_x-obj_camera.y*16/64,light_y+obj_camera.y*16/64,c_scale*i*2,c_scale*i*2,0,c_white,0.05+white_bg_alpha/15)
}

for(var i = 1; i > 0.45; i -= 0.05)
{
draw_sprite_ext(sprite64,0,light_x-obj_camera.y*16/48,light_y+obj_camera.y*16/48,c_scale*i*0.8,c_scale*i*0.8,0,c_white,0.05+white_bg_alpha/15)
}

for(var i = 1; i > 0.5; i -= 0.05)
{
draw_sprite_ext(sprite64,0,light_x-obj_camera.y*16/24,light_y+obj_camera.y*16/24,c_scale*i,c_scale*i,0,c_white,0.04+white_bg_alpha/15)
}
}


draw_set_alpha(black_bg_alpha)
draw_set_color(c_black)
draw_line_width(-64,-64,room_width,room_height,9999)

draw_set_alpha(white_bg_alpha)
draw_set_color(c_white)
draw_line_width(-64,-64,room_width,room_height,9999)

draw_text_kl_scale(xx+640*c_scale,yy+335*c_scale-scene_1_alpha*c_scale,text,16,9999,scene_1_alpha,c_white,0,0,font01,1/3*c_scale,1/3*c_scale,image_angle)

draw_text_kl_scale(xx+640*c_scale,yy+765*c_scale-scene_2_alpha*c_scale,"Credits",250,9999,scene_3_alpha,c_white,-1,0,font01,1/2.5*c_scale,1/2.5*c_scale,image_angle)
draw_text_kl_scale(xx+640*c_scale,yy+1000*c_scale-scene_2_alpha*c_scale,"- Director \n 아버(개발자 본인)\n\n- ART \n ABER\n\n- Programing \n Aㅏ버\n\n- Story \n 아버\n\n\n\n\n\n\n패러디 게임 : The legend of GockGang-E\n\n\n- 등장한 모든 요소들 \n 응원단 팬치\n 엔젤님\n 잼민이 응원단 팬치\n 잼민이 혐팬치\n 혐시콜라 혐팬치\n 규성이\n 화난 팬치들\n 바나나 혐팬치\n 아기뺑띠\n 주먹 혐팬치\n 왁리오\n VR낀 왁굳\n 메시 개밥\n 메시 \n 그냥 왁굳\n 사이버 왁두\n 우왁굳 유튜브 채널 표지\n 아이스 군만두\n 비요뜨\n 왁초리\n VR\n 화난 왁두\n 왁조디아\n 비트 세이버\n 마인크래프트\n 혐시콜라\n 미츠야 사이다\n 킹카콜라\n 메일단 혐팬치\n\n "+string(global.nickname)+"(You)\n\n\n- Background Music\n Dova-s\n 魔界Symphony - Dragon castle\n PerituneMaterial\n Team Pangenie - Wak'Lio\n\n\n\n\nSpecial Thanks \n 하이파이\n 린가두\n 빈센트반고흐\n 파키스탄 아저씨\n 내일만 삽니다\n 이칠삼오\n 연세221.150\n 냉-장go\n creamvi\n 주느\n 인천 영택맘\n 다Ag\n 권잼민\n 샛별\n 별나무\n 약중독고양이\n 실명전사박해성\n 스고이\n 권잼민\n 응당수\n\n\n\n\n\n\n- Made with Gamemaker studio 2 -\n\n\n제작 기간 : 2020.05.02 ~ 2020.12월 말까지\n\n실제 제작 시간 : 약 1000시간 (이상)\n\n\n\n\n우왁굳의 방송을 봐주시고 계신 모든 분들,\n게임 제작에 도움을 주신 모든 분들,\n그리고 게임을 플레이 해주시는 모든 분들\n\n이 모든 분들이 없었더라면\n이 게임은 존재 할 수 없었습니다\n다시 한번 정말 감사드립니다\n\n\nMade for\n\n\n\n\n\n\n\n\n\n\n",250,9999,scene_3_alpha,c_white,-1,0,font01,1/4*c_scale,1/4*c_scale,image_angle)
if scene_4_alpha >= 2.5
{
draw_text_kl_scale(xx+640*c_scale,yy+330*c_scale,"-The end-",16,9999,(scene_4_alpha-2.6)*scene_3_alpha,c_white,0,0,font01,1/3*c_scale,1/3*c_scale,image_angle)
}
draw_sprite_ext(sprite94,0,xx+625*c_scale,yy+(7900-scene_2_alpha+64)*c_scale,0.5*c_scale,0.5*c_scale,0,c_white,scene_3_alpha)


