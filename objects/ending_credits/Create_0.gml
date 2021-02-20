/// @description Insert description here
// You can write your code in this editor
audio_stop_sound(it_s_over)
audio_stop_sound(nomal_ending)
audio_stop_sound(sound0)
audio_stop_sound(sound01)
audio_stop_sound(mad_wakchang)

global.tuto_volume = 0
global.master_volume = 1
global.bgm_volume = 1
ending_bgm = audio_play_sound(credit_bgm,0,0)
audio_sound_gain(ending_bgm,0.05*global.master_volume*global.tuto_volume*global.bgm_volume,0)

obj_camera.tv_x = 1280
obj_camera.tv_y = 720
obj_camera.v_x = 1280
obj_camera.v_y = 720


scene = 0 
text = "재미있게 했냐?"
scene_1_alpha = 0
scene_2_alpha = 0
scene_3_alpha = 1
scene_4_alpha = 0
black_bg_alpha = 1
white_bg_alpha = 0

alarm[0] = 130