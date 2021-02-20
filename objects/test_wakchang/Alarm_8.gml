/// @description Insert description here
// You can write your code in this editor
tuto_scene = -4
if p_mes_tuto != -1
{
instance_destroy(p_mes_tuto)
p_mes_tuto = -1
}
global.playing_scene = 0
player.cannot_move = 0
rejected = 1
tip_alpha = -10