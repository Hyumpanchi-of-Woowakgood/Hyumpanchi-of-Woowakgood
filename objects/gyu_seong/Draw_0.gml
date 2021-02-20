/// @description Insert description here
// You can write your code in this editor
//draw_set_color(c_black)
//draw_set_font(font0)
//draw_set_alpha(1)
//draw_text(x,y-32,string(attack_paturn*100))
draw_sprite_ext(spr_shadow,0,x,903+27,1-abs(y-903)/48,1-abs(y-903)/64,0,c_white,(1-abs(y-903)/48)*0.3)

draw_self()
if global.l_q_grap = 0 && global.dev_mode > 0
{
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,c_black,black_alpha*image_alpha)

	if rage_mode > 0
	{
		for(var i = 0; i <= 200; i++)
		{
		draw_set_alpha(rage_eye_effect_current_alpha[i])
		draw_set_color($FF2A00FF)
			if sprite_index = pl_move_mad_gyu_seong_spin_jump
			{
			draw_line_width(rage_eye_effect_x[i],rage_eye_effect_y[i],x+2*image_xscale,y-5,rage_eye_effect_width[i])
			}
			else
			{
			draw_line_width(rage_eye_effect_x[i],rage_eye_effect_y[i],x+1*image_xscale,y+1,rage_eye_effect_width[i])
			}
		}
	}
}


//체력바
hp_bar_alpha += (t_hp_bar_alpha - hp_bar_alpha)*0.1
w_alpha += (0 - w_alpha)*0.1

if hp_bar_alpha > 0 && global.playing_scene = 0
{
draw_hp += (hp - draw_hp)*0.1
draw_sprite_ext(sprite20,0,x-20,y+32,1,1,0,c_white,hp_bar_alpha)
	if hp/max_hp > 0
	{
	draw_sprite_ext(sprite20,1,x-18,y+32,draw_hp/max_hp,1,0,c_white,hp_bar_alpha)
	}
}

if w_alpha > 0
{
draw_sprite_ext(pl_move_gyu_seong_guard_mad_white,0,x,y,image_xscale,image_yscale,0,c_white,w_alpha)
}



//draw_text(x,y,attack_paturn)