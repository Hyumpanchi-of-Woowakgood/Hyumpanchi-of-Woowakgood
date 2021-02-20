/// @description Insert description here
// You can write your code in this editor
if died_wakgood.image_index >= 2
{
	repeat(irandom_range(0,5))
	{
		if image_alpha >= 1
		{
		var random_val = percentage_k(30)
			if random_val = 1
			{
			var xx = irandom_range(x-300,x+300)
			var yy = camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0])+irandom_range(-64,-128)
		
			p_mes = instance_create_depth(xx,yy,depth-1,player_message_for_t_chat)
			p_mes.text = choose("ㅠㅠ","안대ㅐㅐㅐㅐ","형 일어나...","형...","ㅠㅠㅠㅠㅠㅠ","형 ㅠㅠ","수듄ㅋㅋ")
			p_mes.target = player
			p_mes.alarm[2] = 90
			}
		}
	}
}

alarm[2] = 60