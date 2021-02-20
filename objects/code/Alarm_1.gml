/// @description Insert description here
// You can write your code in this editor
if room != room1 && room != room3 && global.playing_scene = 0
{
option ++
instance_create_depth(x,y,-9998,master_volume_setting)
instance_create_depth(x,y,-9999,bgm_volume_setting)
instance_create_depth(x,y,-9999,sfx_volume_setting)
instance_create_depth(x,y,-9999,full_screen_option)
instance_create_depth(x,y,-9999,delete_save_file)
instance_create_depth(x,y,-9999,change_a_key_to_other)
instance_create_depth(x,y,-9999,change_w_key_to_other)
instance_create_depth(x,y,-9999,change_s_key_to_other)
instance_create_depth(x,y,-9999,change_q_key_to_other)
instance_create_depth(x,y,-9999,change_running_key_to_other)
instance_create_depth(x,y,-9999,change_e_key_to_other)
instance_create_depth(x,y,-9999,blood_effect_option)
instance_create_depth(x,y,-9999,fast_message_load_option)
instance_create_depth(x,y,-9999,voice_off_option)
instance_create_depth(x,y,-9999,fps_draw_option)
instance_create_depth(x,y,-9999,screen_shot)
instance_create_depth(x,y,-9999,t_c_disconnect)
instance_create_depth(x,y,-9999,shine_effect_option)
instance_create_depth(x,y,-9999,low_quality_graphics)


	if option > 1
	{
	option = 0
	instance_destroy(master_volume_setting)
	instance_destroy(bgm_volume_setting)
	instance_destroy(sfx_volume_setting)
	instance_destroy(full_screen_option)
	instance_destroy(delete_save_file)
	instance_destroy(change_a_key_to_other)
	instance_destroy(change_w_key_to_other)
	instance_destroy(change_s_key_to_other)
	instance_destroy(change_q_key_to_other)
	instance_destroy(change_running_key_to_other)
	instance_destroy(change_e_key_to_other)
	instance_destroy(blood_effect_option)
	instance_destroy(fast_message_load_option)
	instance_destroy(voice_off_option)
	instance_destroy(fps_draw_option)
	instance_destroy(screen_shot)
	instance_destroy(t_c_disconnect)
	instance_destroy(shine_effect_option)
	instance_destroy(low_quality_graphics)
	
	if instance_number(master_volume_setting) <= 0
	{
	
	
	}
	
	obj_camera.v_x = global.saved_view_xscale
	obj_camera.v_y = global.saved_view_yscale
	}
}