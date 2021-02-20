/// @description Insert description here
// You can write your code in this editor
//draw_set_alpha(image_alpha)
//draw_self()

//if text != "올려치기 (W) / 회전베기 (Q) / 내려찍기 (S) / 관심없어 (G)" && text != "올려치기 (W) / 회전베기 (Q) / 근력 강화 (S) / 관심없어 (G)"
//{
draw_text_kl_scale(x,y-72*image_yscale,real_text,16,9999,image_alpha,image_blend,0,0,font0,image_xscale*1/3.5,image_yscale*1/3.5,image_angle)
//}
//else
//{
//draw_text_kl_scale(x,y-60*image_yscale,real_text,16,9999,image_alpha,image_blend,0,0,font0,image_xscale*1/3,image_yscale*1/3,image_angle)
//}

//if text = "올려치기 (W) / 회전베기 (Q) / 내려찍기 (S) / 관심없어 (G)"
//{
//draw_text_kl_scale(x,y-30*image_yscale,"(올려치기 "+string(10000+global.skill_jump_attack*3000)+"원)     /     "+"(회전베기 "+string(13000+global.skill_turning_attack*3000)+"원)     /     "+"(내려찍기 7000원)",16,9999,image_alpha,image_blend,0,0,font0,image_xscale*1/4,image_yscale*1/4,image_angle)
//}


//if text = "올려치기 (W) / 회전베기 (Q) / 근력 강화 (S) / 관심없어 (G)"
//{
//draw_text_kl_scale(x,y-30*image_yscale,"(올려치기 "+string(10000+global.skill_jump_attack*3000)+"원)     /     "+"(회전베기 "+string(13000+global.skill_turning_attack*3000)+"원)     /     "+"(근력강화 "+string(10000+global.normal_attack_dmg*3000)+"원)",16,9999,image_alpha,image_blend,0,0,font0,image_xscale*1/4,image_yscale*1/4,image_angle)
//}