/// @description Insert description here
// You can write your code in this editor
if p_mes_guide != -1
{
instance_destroy(p_mes_guide)
p_mes_guide = -1
}
alarm[10] = irandom_range(400,600)