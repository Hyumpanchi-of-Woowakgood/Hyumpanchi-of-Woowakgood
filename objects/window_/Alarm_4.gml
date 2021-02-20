/// @description Insert description here
// You can write your code in this editor
if instance_number(player) > 0
{
if player.sprite_index = player.move_sprite
{
	if instance_number(message_) = 0
	{
		if p_mes != -1 && skip_dilay = 0 && point_distance(x,366,player.x,player.y) <= 16
		{
		global.movement_speed = 0
		player.movement_speed = 0
		skip_dilay = 1
		interatction = 1
		image_xscale = 1.1
		image_yscale = 1.1
			if p_mes != -1
			{
			instance_destroy(p_mes)
			p_mes = -1
			}
		global.playing_scene = 1
		
		if scene < 2
		{
		p_mes = instance_create_depth(x,y,player.depth-1,player_message)
		}
		
			if scene = 0
			{
				if (global.nickname = "우왁굳" || global.nickname = "왁굳")
				{
				p_mes.text = "왁두 쉑 나와라"
				}
				else
				{
				p_mes.text = string(global.nickname)+"쉑 나와라"
				}
			p_mes.target = id
				if global.achievement_finish[37] = 0
				{
				var _message = instance_create_depth(-100,-100,-9999999999,achievement)
				_message.title = "대피소 앞 혐팬치"
				_message.text = "그들이 대피소 앞에서 존버 중이다"
				global.achievement_finish[37] = 1
				}
	
			alarm[3] = 25
			}
	
			if scene = 1
			{
			var random_val = choose(0,1)
	
				if random_val = 0
				{
				p_mes.text = "야 혐팬치들아 꺼져"
				p_mes.target = player
	
					if global.voice_option = 0
					{
					var sfx = audio_play_sound(ya_shut_up,0,0)
					audio_sound_gain(sfx,0.18*global.master_volume*2*global.sfx_volume,0)
					}
				}
				else
				{
				p_mes.text = "야 혐팬치들아 조용히 해"
				p_mes.target = player
	
					if global.voice_option = 0
					{
					var sfx = audio_play_sound(shut_up,0,0)
					audio_sound_gain(sfx,0.3*global.master_volume*2*global.sfx_volume,0)
					}
				}
				
			alarm[3] = 25
			}
			
			if scene >= 2
			{
			skip_dilay = 1
			alarm[2] = 10
			}
		scene ++
		}
	}
}
}