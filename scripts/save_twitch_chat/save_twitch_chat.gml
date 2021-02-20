/// @description  save_twitch_chat(sender_id,chat_data);
/// @param sender_id
/// @param chat_data
function save_twitch_chat(argument0, argument1) 
{
	if global.t_c_discon = 0
	{
		if string_length(argument0) < 15 && string_length(argument1) < 20
		{
			with(player)
			{
				if self.object_index != oMain
				{
					if self.p_mes_dev = -1 && global.chat_data != noone && global.chat_sender = "1047asd"
					{
					p_mes_dev = instance_create_depth(x,y,player.depth-2,player_message)
					p_mes_dev.text = string(argument0)+" : "+string(argument1)
					p_mes_dev.target = self.id
					global.chat_data = noone
					alarm[0] = 200
			
						if global.achievement_finish[38] = 0
						{
						var _message = instance_create_depth(-100,-100,-9999999999,achievement)
						_message.title = "개발자 등판"
						_message.text = "헤이, 디벨로퍼"
						global.achievement_finish[38] = 1
						}
					}
				}
			}
	
			with(obj_andience111)
			{
				if self.object_index != oMain
				{
					if self.p_mes = -1 && global.chat_data != noone && global.chat_sender = "kyumin31692"
					{
						if instance_number(player) > 0
						{
						var depth_set = player.depth
						}
						else
						{
						var depth_set = depth
						}
					
					p_mes = instance_create_depth(x,y,depth_set-1,player_message_for_t_chat)
					p_mes.text = string(argument1)
					p_mes.target = self.id
					global.chat_data = noone
					alarm[0] = 180
					}
				}
			}
	
			with(obj_andience1)
			{
				if self.object_index != oMain
				{
					if self.p_mes = -1 && global.chat_data != noone
					{
						if instance_number(player) > 0
						{
						var depth_set = player.depth
						}
						else
						{
						var depth_set = depth
						}
						
					p_mes = instance_create_depth(x,y,depth_set-1,player_message_for_t_chat)
					p_mes.text = string(argument1)
					p_mes.target = self.id
					global.chat_data = noone
					alarm[0] = 180
					}
				}
			}
	

			with(obj_andience11)
			{
				if self.object_index != oMain
				{
					if self.p_mes = -1 && global.chat_data != noone
					{
						if instance_number(player) > 0
						{
						var depth_set = player.depth
						}
						else
						{
						var depth_set = depth
						}
						
					p_mes = instance_create_depth(x,y,depth_set-1,player_message_for_t_chat)
					p_mes.text = string(argument1)
					p_mes.target = self.id
					alarm[0] = 180
					global.chat_data = noone
					}
				}
			}
		}
	}
}
