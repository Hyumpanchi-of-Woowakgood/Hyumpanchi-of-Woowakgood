/// @description Insert description here
// You can write your code in this editor
if global.boots_ = 0
{
if next_scene < 3
{
var _scale_set = sign(x - player.x)
if _scale_set = 0
{
_scale_set = choose(-1,1)
}
image_xscale = _scale_set
}
}