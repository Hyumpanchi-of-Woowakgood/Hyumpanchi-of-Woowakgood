/// @description Insert description here
// You can write your code in this editor
t_x = player.x
movement_speed = 0
cannot_move = 0
image_speed = 0
gravity = 0.2
hit_cooltime = 0
last_hit = 0
gravity_ignore = 0
hit_stand_up = 0
knocked_down_ef = 0
hit_motion = 0
can_attack = 0
hp = 1600
max_hp = hp
hp_bar_alpha = 0
t_hp_bar_alpha = 0
armored_level = 8
mac = 0

var sfx = audio_play_sound(sound5,0,0)
audio_sound_gain(sfx,0.13*global.master_volume*2*global.sfx_volume,0)


spin_laser_angle = 0
t_spin_laser_angle = 0

move_sprite = pl_move_wakrgot
hurt_sprite = pl_move_wakrgot_hurt
attack_sprite = pl_move_wakrgot
attack_ = 0
attack_dilay = 0
random_attack_chance = 0
attack_sound_effect = 0

mine_craft_cre = 0

scene = 0
scene_a = 0

before_paturn = 0

attack_paturn_3_change = 0

p_mes = -1
p_mes_for_p = -1
red_effect_dilay = 0
scene_dilay = 0
alarm[7] = irandom_range(680,800)
stemina = 0
attack_paturn = 0
laser = -1