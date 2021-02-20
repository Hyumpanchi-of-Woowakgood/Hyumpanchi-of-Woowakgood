/// @description Insert description here
// You can write your code in this editor
var sfx = audio_play_sound(sound5,0,0)
audio_sound_gain(sfx,0.13*global.master_volume*2*global.sfx_volume,0)

instance_create_depth(x,y,depth-1,rage_mode_knockback_for_mob)

var __i = choose(-1,1)
var bl_ef = instance_create_depth(x,y,depth-1,ef_blood)
var img_scale = -__i*irandom_range(8,15)/5
bl_ef.image_xscale = img_scale
bl_ef.image_yscale = abs(img_scale)
bl_ef.t_x = __i
bl_ef.image_angle = irandom_range(-90,90)
global.w_alpha = 1

var skill_red_ball_effect_rage = instance_create_depth(x,y,depth-1,red_circle_effect)
skill_red_ball_effect_rage.image_xscale = 0.8
skill_red_ball_effect_rage.image_yscale = 0.8
skill_red_ball_effect_rage.t_scale = 0.8
skill_red_ball_effect_rage.alarm[11] = 7
view_shake(1,0,1)

rage_mode = 1