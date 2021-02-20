/// @description  twitch_update(num);
/// @param num
function bgm_start(argument0) {

	if !audio_is_playing(it_s_over) && !audio_is_playing(nomal_ending) && !audio_is_playing(credit_bgm) && global._bgm_play[8] != 1
	{
		if global._bgm_play[argument0] != 1
		{
		stop_all_bgm()
			for(var i = 0; i < 10; i ++)
			{
			global._bgm_play[i] = noone
			}
		}

	global._bgm_play[argument0] = 1
	//show_debug_message(string(argument0))
	//show_debug_message("global.bgm_volume"+string(global.bgm_volume))
	//show_debug_message("global.master_volume"+string(global.master_volume))
	//show_debug_message("global.tuto_volume"+string(global.tuto_volume))
	}


}
