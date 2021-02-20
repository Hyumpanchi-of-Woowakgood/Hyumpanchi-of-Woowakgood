/// @description Insert description here
// You can write your code in this editor
if global.boots_ = 0
{
sprite_index = pl_move_hyumpanchi
if next_scene < 3
{
var _scale_set = -sign(x - player.x)
if _scale_set = 0
{
_scale_set = choose(-1,1)
}
image_xscale = _scale_set
}
else
{
image_xscale = abs(image_xscale)
}
hit_stand_up = 0

if next_scene < 3
{
alarm[6] = 60
}

if next_scene = 0
{
alarm[3] = 70
next_scene = 1
}
}