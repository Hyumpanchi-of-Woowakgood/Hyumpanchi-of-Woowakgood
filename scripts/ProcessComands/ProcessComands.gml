/// @description  ProcessComands(name,data);
/// @param name
/// @param data
function ProcessComands(argument0, argument1)
{
	if global.playing_scene = 0 && (string_pos("!say",argument1) != 0)
	{
	global.chat_sender = argument0;
	global.chat_data = string_replace(argument1,"!say","");
		if global.achievement_finish[36] = 0
		{
		var _message = instance_create_depth(-100,-100,-9999999999,achievement)
		_message.title = "맨 처음 말하는 자"
		_message.text = string(global.chat_sender)+"님 축하합니다 박제 되셨습니다"
		global.achievement_finish[36] = 1
		}
	}

	if global.voting_now > 0
	{
		if (string_pos("!투표1",argument1) != 0)
		{
		global.vote_agree ++
		global.total_vote ++
		};
	
		if (string_pos("!투표2",argument1) != 0)
		{
		global.vote_disagree ++
		global.total_vote ++
		};
	}
}
