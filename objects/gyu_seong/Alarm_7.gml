/// @description Insert description here
// You can write your code in this editor
if global.playing_scene = 0
{
	if p_mes = -1 && attack_pepsi_timer = -4
	{
	p_mes = instance_create_depth(x,y,player.depth-1,player_message)
	p_mes.text = choose("아니 이럴땐 그렇게 해야지 뭐함 ㄹㅇ","하 진짜 쥰네 답답하네","아니 제발 그렇게 하는거 아니라고","마크마크마크마크마크마크마크마크언제함","아니 이딴 겜 하지말고 마크나 하자 제발","팬치들이 차려준 밥상에 "+string(global.nickname)+"은 숟가락만 얹네","이렇게 하면 "+string(global.nickname)+" 개빡치겠지? ㅋㅋㅋㅋ")
	p_mes.target = id
	}
}
alarm[8] = 180