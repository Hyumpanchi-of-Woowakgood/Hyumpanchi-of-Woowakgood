/// @description Insert description here
// You can write your code in this editor
if global.n_room = 0 && ((text = "왁초리" || text = "VR" || text = "승부 빤스" || text = "15kg짜리 가축" || text = "왁기의 빨대" || text = "헤르메스 부츠"))
{
global.never_move = 0
}

if text = "15kg짜리 가축" && instance_number(player) > 0
{
var p_mes_guide_vote = instance_create_depth(x,y,player.depth-1,player_message)
p_mes_guide_vote.text = "(레이지 모드 지속시간이 증가했다!)"
p_mes_guide_vote.target = player.id
p_mes_guide_vote.alarm[2] = 120
}

if text = "왁초리" && global.replay_time > 1 && instance_number(player) > 0
{
var p_mes_guide_vote = instance_create_depth(x,y,player.depth-1,player_message)
p_mes_guide_vote.text = "(파란 광선 검이 없어 더욱 손이 가벼워졌다!)"
p_mes_guide_vote.target = player.id
p_mes_guide_vote.alarm[2] = 120
}

if text = "승부 빤스" && instance_number(player) > 0
{
var p_mes_guide_vote = instance_create_depth(x,y,player.depth-1,player_message)
p_mes_guide_vote.text = "(방어력이 증가했다!)"
p_mes_guide_vote.target = player.id
p_mes_guide_vote.alarm[2] = 120
}

if text = "VR" && instance_number(player) > 0
{
var p_mes_guide_vote = instance_create_depth(x,y,player.depth-1,player_message)
p_mes_guide_vote.text = "(새로운 무기와 획득과 함께 방어력이 증가했다!)"
p_mes_guide_vote.target = player.id
p_mes_guide_vote.alarm[2] = 120
}

if text = "왁기의 빨대" && instance_number(player) > 0
{
var p_mes_guide_vote = instance_create_depth(x,y,player.depth-1,player_message)
p_mes_guide_vote.text = "(방어력 증가 및 흡혈 능력이 생겼다!)"
p_mes_guide_vote.target = player.id
p_mes_guide_vote.alarm[2] = 120
}