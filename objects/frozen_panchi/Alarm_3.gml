/// @description Insert description here
// You can write your code in this editor
if global.boots_ = 0
{
var p_mes_guide_vote = instance_create_depth(x,y,player.depth-1,player_message)
p_mes_guide_vote.text = "여긴 어디...? 난 누구?"
p_mes_guide_vote.target = id
p_mes_guide_vote.alarm[2] = 300

alarm[4] = 200
}