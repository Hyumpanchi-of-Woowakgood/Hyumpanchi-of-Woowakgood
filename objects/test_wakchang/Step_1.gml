/// @description Insert description here
// You can write your code in this editor



if image_alpha > 0
{
if place_meeting(x,y,player)
{
var __i = sign(player.x - x)

	if __i = 0
	{
	__i = choose(-0.2,0.2)
	}
t_x = x
movement_speed = 0
movement_speed -= __i*2
	if cannot_move = 0
	{
	cannot_move = 1
	alarm[2] = 14
	}
}








	
if p_mes = -1 && player.entering_daepiso = 0 && hp > 0
{
	if point_distance(test_wakchang.x,test_wakchang.y,player.x,player.y) <= 32 && global.in_building <= 0.16 && player.x >= test_wakchang.x-10
	{
	p_mes = instance_create_depth(x,y,player.depth-1,player_message)
	p_mes.text = "상호작용 (D)"
	p_mes.target = player
	}
}


if scene__ = 1
{
player.x += (x+140 - player.x)*0.1
	
	if p_mes = -1
	{
	p_mes = instance_create_depth(x,y,player.depth-1,player_message)
	p_mes.text = "형!"
	p_mes.target = id
	}
}

if scene__ = 2
{
	if p_mes = -1
	{
	p_mes = instance_create_depth(x,y,player.depth-1,player_message)
	p_mes.text = "뭐 원하는거 있어?"
	p_mes.target = id
	}
}

if global.wave < 3
{
	if scene__ = 3
	{
		if p_mes = -1
		{
		p_mes = instance_create_depth(player.x,player.y,player.depth-1,player_message)
		p_mes.text = "추가 체력 (A) / 스킬 (S) / 아니 없어 (G) / 조작키 (F)"
		p_mes.target = player
		}
	}
}
else
{
	if scene__ = 3
	{
		if p_mes = -1
		{
		p_mes = instance_create_depth(player.x,player.y,player.depth-1,player_message)
		p_mes.text = "추가 체력 (A) / 스킬 (S) / 아니 없어 (G) / 소문에 대해 (F)"
		p_mes.target = player
		}
	}
}

if scene__ = 4
{
	if p_mes = -1
	{
	p_mes = instance_create_depth(x,y,player.depth-1,player_message)
	p_mes.text = "혹시 원하는 게 있으면 언제든 말 걸어줘 형!"
	p_mes.target = id
	scene__ = -4
	alarm[11] = 80
	alarm[6] = 80
	skiping_dilay = 1
	}
}

if global.wave < 3
{
	if scene__ = 5
	{
		if p_mes = -1
		{
		p_mes = instance_create_depth(x,y,player.depth-1,player_message)
		p_mes.text = "형을 위해 다시 한번 알려주자면,"
		p_mes.target = id
		}
	}

	if scene__ = 6
	{
		if p_mes = -1
		{
		p_mes = instance_create_depth(x,y,player.depth-1,player_message)
		p_mes.text = "A키가 기본공격, 좌우 방향키는 이동 (2연타시 달리기)"
		p_mes.target = id
		}
	}

	if scene__ = 7
	{
		if p_mes = -1
		{
		p_mes = instance_create_depth(x,y,player.depth-1,player_message)
		p_mes.text = "아래 방향키는 구르기, 그리고 스페이스 바는 점프"
		p_mes.target = id
		}
	}

	if scene__ = 8
	{
		if p_mes = -1
		{
		p_mes = instance_create_depth(x,y,player.depth-1,player_message)
		p_mes.text = "그래도 모르겠다면 다시 말 걸어줘 형!"
		p_mes.target = id
		scene__ = -4
		alarm[11] = 80
		alarm[6] = 80
		skiping_dilay = 1
		}
	}
}
else
{
	if scene__ = 5
	{
		if p_mes = -1
		{
		p_mes = instance_create_depth(x,y,player.depth-1,player_message)
		p_mes.text = "대피소 지하 저 깊숙한 곳에"
		p_mes.target = id
		}
	}

	if scene__ = 6
	{
		if p_mes = -1
		{
		p_mes = instance_create_depth(x,y,player.depth-1,player_message)
		p_mes.text = "왁파트 지하 땅굴마냥 혐팬치들의 기지가 있다는 소문이 있어"
		p_mes.target = id
		}
	}

	if scene__ = 7
	{
		if p_mes = -1
		{
		p_mes = instance_create_depth(player.x,player.y,player.depth-1,player_message)
		p_mes.text = "?"
		p_mes.target = player.id
		}
	}

	if scene__ = 8
	{
		if p_mes = -1
		{
		global.daepiso_story = 1
		p_mes = instance_create_depth(x,y,player.depth-1,player_message)
		p_mes.text = "확실한건 나도 몰랑"
		p_mes.target = id
		scene__ = -4
		alarm[11] = 80
		alarm[6] = 80
		skiping_dilay = 1
		}
	}
}

if scene__ = 9
{
	if p_mes = -1
	{
	p_mes = instance_create_depth(x,y,player.depth-1,player_message)
	p_mes.text = "오! 형!"
	p_mes.target = id
	}
}

if scene__ = 10
{
	if p_mes = -1
	{
	p_mes = instance_create_depth(x,y,player.depth-1,player_message)
	p_mes.text = "스킬에 관심이 생긴거야? 좋아!"
	p_mes.target = id
	}
}

if scene__ = 11
{
	if p_mes = -1
	{
	p_mes = instance_create_depth(x,y,player.depth-1,player_message)
	p_mes.text = "스킬은 총 3종류가 있어 형"
	p_mes.target = id
	}
}

if scene__ = 12
{
	if p_mes = -1
	{
	p_mes = instance_create_depth(x,y,player.depth-1,player_message)
	p_mes.text = "원하는 스킬 정보를 알고싶다면 이중 하나를 선택 해줘 형"
	p_mes.target = id
	}
}

if scene__ = 13
{
	if p_mes = -1
	{
	p_mes = instance_create_depth(x,y,player.depth-1,player_message)
	p_mes.text = "올려치기 (W) / 회전베기 (Q) / 내려찍기 (S) / 관심없어 (G)"
		if global.skill_down_attack > 0
		{
		p_mes.text = "올려치기 (W) / 회전베기 (Q) / 근력 강화 (S) / 관심없어 (G)"
		}
	p_mes.target = id
	}
}

if scene__ = 14
{
	if p_mes = -1
	{
	p_mes = instance_create_depth(x,y,player.depth-1,player_message)
	p_mes.text = "혹시나 다시 관심이 생기면 말을 걸어줘 형!"
	p_mes.target = id
	scene__ = -4
	alarm[11] = 80
	alarm[6] = 80
	skiping_dilay = 1
	}
}

if scene__ = 15
{
	if global.skill_jump_attack = 0
	{
		if p_mes = -1
		{
		p_mes = instance_create_depth(x,y,player.depth-1,player_message)
		p_mes.text = "오 올려치기! 올려치기는 평균 23데미지로 상대를 공중으로 띄워줘"
		p_mes.target = id
		}
	}
	else
	{
		if p_mes = -1
		{
		p_mes = instance_create_depth(x,y,player.depth-1,player_message)
		p_mes.text = "어? 이미 스킬을 배웠네? 형? (Lv "+string(global.skill_jump_attack)+")"
		p_mes.target = id
		
		var sfx = audio_play_sound(cannot_buy,0,0)
		audio_sound_gain(sfx,0.3*global.master_volume*2*global.sfx_volume,0)
		}
	}
}

if scene__ = 16
{
	if global.skill_jump_attack = 0
	{
		if p_mes = -1
		{
		p_mes = instance_create_depth(x,y,player.depth-1,player_message)
		p_mes.text = "대신 스테미나 2 만큼을 소모해"
		p_mes.target = id
		}
	}
	else
	{
		if p_mes = -1
		{
		p_mes = instance_create_depth(x,y,player.depth-1,player_message)
		p_mes.text = "그럼 강화를 통해 공중에서의 사용 횟수와 데미지를 늘릴 수 있어"
		p_mes.target = id
		}
	}
}

if scene__ = 17
{
	if p_mes = -1
	{
		if global.skill_jump_attack = 0
		{
		p_mes = instance_create_depth(x,y,player.depth-1,player_message)
		p_mes.text = string(10000+global.skill_jump_attack*3000)+"원 주고 배워볼래? 형?"
		p_mes.target = id
		}
		else
		{
		p_mes = instance_create_depth(x,y,player.depth-1,player_message)
		p_mes.text = string(10000+global.skill_jump_attack*3000)+"원 주고 스킬을 강화해 볼래? 형?"
		p_mes.target = id
		}
	}
}

if scene__ = 18
{
	if p_mes = -1
	{
	p_mes = instance_create_depth(x,y,player.depth-1,player_message)
	p_mes.text = "그래 (D) / 아니 (F)"
	p_mes.target = player
	}
}

if scene__ = 19
{
	if p_mes = -1
	{
	p_mes = instance_create_depth(x,y,player.depth-1,player_message)
	p_mes.text = "알겠어 형! 다시 관심이 생기면 말 걸어줘!"
	p_mes.target = id
	scene__ = -4
	alarm[11] = 80
	alarm[6] = 80
	skiping_dilay = 1
	}
}

if scene__ = 20
{
	if p_mes = -1
	{
	p_mes = instance_create_depth(x,y,player.depth-1,player_message)
	p_mes.text = "이런! 형, 돈이 부족한거 같은데?"
	p_mes.target = id

	alarm[11] = 80
	alarm[6] = 80
	skiping_dilay = 1
	
	var sfx = audio_play_sound(cannot_buy,0,0)
	audio_sound_gain(sfx,0.3*global.master_volume*2*global.sfx_volume,0)
	}
}

if scene__ = 21
{
	if p_mes = -1
	{
	p_mes = instance_create_depth(x,y,player.depth-1,player_message)
	p_mes.text = "사줘서 고마워 형! 스킬은 W키를 눌러서 사용할 수 있어!"
	p_mes.target = id
	global.guide_stat_key = 0

	alarm[11] = 80
	alarm[6] = 80
	skiping_dilay = 1
	
	var sfx = audio_play_sound(buy_item,0,0)
	audio_sound_gain(sfx,0.2*global.master_volume*2*global.sfx_volume,0)
	
		if global.voice_option = 0
		{
		var sfx = audio_play_sound(gibungoa,0,0)
		audio_sound_gain(sfx,0.3*global.master_volume*2*global.sfx_volume,0)
		}
	}
}

if scene__ = 22
{
	if global.skill_turning_attack = 0
	{
		if p_mes = -1
		{
		p_mes = instance_create_depth(x,y,player.depth-1,player_message)
		p_mes.text = "회전베기는 상대를 공중에 머물게 하면서 평균 29데미지를 줘!"
		p_mes.target = id
		}
	}
	else
	{
		if p_mes = -1
		{
		p_mes = instance_create_depth(x,y,player.depth-1,player_message)
		p_mes.text = "어? 이미 스킬을 배웠네? 형? (Lv "+string(global.skill_turning_attack)+")"
		p_mes.target = id
		
		var sfx = audio_play_sound(cannot_buy,0,0)
		audio_sound_gain(sfx,0.3*global.master_volume*2*global.sfx_volume,0)
		}
	}
}

if scene__ = 23
{
	if global.skill_turning_attack = 0
	{
		if p_mes = -1
		{
		p_mes = instance_create_depth(x,y,player.depth-1,player_message)
		p_mes.text = "대신 스테미나 2.8 만큼을 소모해"
		p_mes.target = id
		}
	}
	else
	{
		if p_mes = -1
		{
		p_mes = instance_create_depth(x,y,player.depth-1,player_message)
		p_mes.text = "그럼 강화를 통해 공중에서의 사용 횟수와 데미지를 늘릴 수 있어"
		p_mes.target = id
		}
	}
}

if scene__ = 24
{
	if global.skill_turning_attack = 0
	{
		if p_mes = -1
		{
		p_mes = instance_create_depth(x,y,player.depth-1,player_message)
		p_mes.text = string(13000+global.skill_turning_attack*3000)+"원 주고 배워볼래? 형?"
		p_mes.target = id
		}
	}
	else
	{
		if p_mes = -1
		{
		p_mes = instance_create_depth(x,y,player.depth-1,player_message)
		p_mes.text = string(13000+global.skill_turning_attack*3000)+"원 주고 스킬을 강화해 볼래? 형?"
		p_mes.target = id
		}
	}
}

if scene__ = 25
{
	if p_mes = -1
	{
	p_mes = instance_create_depth(x,y,player.depth-1,player_message)
	p_mes.text = "그래 (D) / 아니 (F)"
	p_mes.target = player
	}
}

if scene__ = 26
{
	if p_mes = -1
	{
	p_mes = instance_create_depth(x,y,player.depth-1,player_message)
	p_mes.text = "알겠어 형! 다시 관심이 생기면 말 걸어줘!"
	p_mes.target = id
	scene__ = -4
	alarm[11] = 80
	alarm[6] = 80
	skiping_dilay = 1
	}
}

if scene__ = 27
{
	if p_mes = -1
	{
	p_mes = instance_create_depth(x,y,player.depth-1,player_message)
	p_mes.text = "스킬은 사용은 공중에서 Q키를 누르면 돼!"
	p_mes.target = id
	
	global.guide_stat_key = 0

	alarm[11] = 110
	alarm[6] = 110
	skiping_dilay = 1
	
	var sfx = audio_play_sound(buy_item,0,0)
	audio_sound_gain(sfx,0.2*global.master_volume*2*global.sfx_volume,0)
	
		if global.voice_option = 0
		{
		var sfx = audio_play_sound(gibungoa,0,0)
		audio_sound_gain(sfx,0.3*global.master_volume*2*global.sfx_volume,0)
		}
	}
}

if scene__ = 28
{
	if p_mes = -1
	{
	p_mes = instance_create_depth(x,y,player.depth-1,player_message)
	p_mes.text = "내려찍기는 공중에 있는 상대를 내리 꽂으면서 평균 20데미지를 줘!"
		if global.skill_down_attack > 0
		{
			if global.vr_weared = 0
			{
			p_mes.text = "근력 강화은 일반 공격, 내려찍기 데미지를 올려줘"
			}
			else
			{
			p_mes.text = "근력 강화은 일반 공격, 내려찍기, 돌진 베기 데미지를 올려줘"
			}
		}
	p_mes.target = id
	}
}

if scene__ = 29
{
	if p_mes = -1
	{
	p_mes = instance_create_depth(x,y,player.depth-1,player_message)
	p_mes.text = "대신 스테미나 1.8 만큼을 소모해"
		if global.skill_down_attack > 0
		{
		p_mes.text = "단련 하면 단련 할 수록 더 강한 데미지를 줄 수 있어"
		}
	p_mes.target = id
	}
}

if scene__ = 30
{
	if global.skill_down_attack = 0
	{
		if p_mes = -1
		{
		p_mes = instance_create_depth(x,y,player.depth-1,player_message)
		p_mes.text = "7000원 주고 배워볼래? 형?"
		p_mes.target = id
		}
	}
	else
	{
		if p_mes = -1
		{
		p_mes = instance_create_depth(x,y,player.depth-1,player_message)
		p_mes.text = string(10000+global.normal_attack_dmg*3000)+"원 주고 단련 해볼래 형? (Lv "+string(global.normal_attack_dmg)+")"
		p_mes.target = id
		}
	}
}

if scene__ = 31
{
	if p_mes = -1
	{
	p_mes = instance_create_depth(x,y,player.depth-1,player_message)
	p_mes.text = "그래 (D) / 아니 (F)"
	p_mes.target = player
	}
}

if scene__ = 32
{
	if p_mes = -1
	{
	p_mes = instance_create_depth(x,y,player.depth-1,player_message)
	p_mes.text = "알겠어 형! 다시 관심이 생기면 말 걸어줘!"
	p_mes.target = id
	scene__ = -4
	alarm[11] = 80
	alarm[6] = 80
	skiping_dilay = 1
	}
}

if scene__ = 33
{
	if p_mes = -1
	{
	p_mes = instance_create_depth(x,y,player.depth-1,player_message)
	p_mes.text = "사줘서 고마워 형! 스킬은 공중에서 S키를 눌러서 사용할 수 있어!"
	p_mes.target = id
	
	global.guide_stat_key = 0

	alarm[11] = 80
	alarm[6] = 80
	skiping_dilay = 1
	
	var sfx = audio_play_sound(buy_item,0,0)
	audio_sound_gain(sfx,0.2*global.master_volume*2*global.sfx_volume,0)
	
		if global.voice_option = 0
		{
		var sfx = audio_play_sound(gibungoa,0,0)
		audio_sound_gain(sfx,0.3*global.master_volume*2*global.sfx_volume,0)
		}
	}
}




if scene__ = 34
{
	if p_mes = -1
	{
	p_mes = instance_create_depth(x,y,player.depth-1,player_message)
	p_mes.text = "추가 체력은 구매하면 1회용 추가 체력을 지급해줘"
	p_mes.target = id
	}
}

if scene__ = 35
{
	if p_mes = -1
	{
	p_mes = instance_create_depth(x,y,player.depth-1,player_message)
	p_mes.text = "가격은 "+string(floor((global.hp-2)*1000))+"원이야! 구매할래 형?"
	p_mes.target = id
	}
}

if scene__ = 36
{
	if p_mes = -1
	{
	p_mes = instance_create_depth(x,y,player.depth-1,player_message)
	p_mes.text = "그래 (D) / 아니 (F)"
	p_mes.target = player
	}
}

if scene__ = 37
{
	if p_mes = -1
	{
	p_mes = instance_create_depth(x,y,player.depth-1,player_message)
	p_mes.text = "알겠어 형! 다시 관심이 생기면 말 걸어줘!"
	p_mes.target = id
	scene__ = -4
	alarm[11] = 80
	alarm[6] = 80
	skiping_dilay = 1
	}
}

if scene__ = 38
{
	if p_mes = -1
	{
	var random_food = choose(2,3,0,0,1,1,4,4)
	p_mes = instance_create_depth(x,y,player.depth-1,player_message)
	p_mes.text = choose("자 형! 여기 비요뜨야! 이거 먹고 체력 채워!")
	if random_food = 1
	{
	p_mes.text = choose("자 형! 여기 아이스 군만두야! 이거 먹고 체력 채워!")
	}
	if random_food = 2
	{
	p_mes.text = choose("자 형! 여기 미츠야 사이다야! 이거 먹고 체력 채워!")
	}
	if random_food = 3
	{
	p_mes.text = choose("자 형! 여기 킹카콜라야! 이거 먹고 체력 채워!")
	}
	if random_food = 4
	{
	p_mes.text = choose("(실수로 메시 개밥을 줌)")
	}
	p_mes.target = id
	
	alarm[11] = 80
	alarm[6] = 80
	skiping_dilay = 1
	
	var sfx = audio_play_sound(buy_item,0,0)
	audio_sound_gain(sfx,0.2*global.master_volume*2*global.sfx_volume,0)

	var food = instance_create_depth(x,y-5,player.depth-2,biyott)
	food.image_index = random_food
	}
}

if scene__ = 100
{
	if p_mes = -1
	{
	p_mes = instance_create_depth(x,y,player.depth-1,player_message)
	p_mes.text = "사줘서 고마워 형!"
	p_mes.target = id
	
	var sfx = audio_play_sound(buy_item,0,0)
	audio_sound_gain(sfx,0.2*global.master_volume*2*global.sfx_volume,0)

	alarm[11] = 80
	alarm[6] = 80
	skiping_dilay = 1
	
	global.guide_stat_key = 0
	
	
		if global.voice_option = 0
		{
		var sfx = audio_play_sound(gibungoa,0,0)
		audio_sound_gain(sfx,0.3*global.master_volume*2*global.sfx_volume,0)
		}
	}
}

if scene__ = 101
{
scene__ = 102
player.x += (x+140 - player.x)*0.1
}

if scene__ = 102
{
player.x += (x+140 - player.x)*0.1
	if p_mes = -1
	{
		if global.achievement_finish[23] = 0
		{
		var _message = instance_create_depth(-100,-100,-9999999999,achievement)
		_message.title = "다시 장사해"
		_message.text = "한 대 때려서 협박해보자"
		global.achievement_finish[23] = 1
		
		p_mes = instance_create_depth(x,y,player.depth-1,player_message)
		p_mes.text = "형한텐 장사 안함"
		p_mes.target = id
		}
		else
		{
		p_mes = instance_create_depth(x,y,player.depth-1,player_message)
		p_mes.text = "(한 대 때려서 다시 장사하도록 협박해보자)"
		p_mes.target = player.id
		}
	}
}

if scene__ = 105
{
player.x += (x+140 - player.x)*0.1
	if p_mes = -1
	{
	p_mes = instance_create_depth(x,y,player.depth-1,player_message)
	p_mes.text = "형! 다음날부터는 조금 더 강력한 혐팬치들이 등장할 거야"
	p_mes.target = id
	}
}

if scene__ = 106
{
	if p_mes = -1
	{
	p_mes = instance_create_depth(x,y,player.depth-1,player_message)
	p_mes.text = "처맞지만 말고 무사히 돌아와줘 형ㅋㅋㅋㅋ"
	p_mes.target = id
	}
}

if scene__ = 107
{
skiping_dilay = 1
alarm[11] = 2
alarm[6] = 2
scene__ = -4
}



if scene__ = 108
{
player.x += (x+140 - player.x)*0.1
	if p_mes = -1
	{
	p_mes = instance_create_depth(x,y,player.depth-1,player_message)
	p_mes.text = "형! 그거 알아?"
	p_mes.target = id
	}
}

if scene__ = 109
{
	if p_mes = -1
	{
	p_mes = instance_create_depth(x,y,player.depth-1,player_message)
	p_mes.text = "뭔데? (D) / 알아 (F)"
	p_mes.target = player.id
	}
}

if scene__ = 110
{
	if p_mes = -1
	{
	p_mes = instance_create_depth(x,y,player.depth-1,player_message)
	p_mes.text = "왜 갑자기 급발진이야 형;;"
	p_mes.target = id
	}
}

if scene__ = 111
{
	if p_mes = -1
	{
	p_mes = instance_create_depth(x,y,player.depth-1,player_message)
	p_mes.text = "곧 혐(오스러운) 팬치 줄여서 혐팬치들이 몰려온데"
	p_mes.target = id
	}
}

if scene__ = 112
{
	if p_mes = -1
	{
	p_mes = instance_create_depth(x,y,player.depth-1,player_message)
	p_mes.text = "?"
	p_mes.target = player.id
	}
}

if scene__ = 113
{
	if p_mes = -1
	{
	p_mes = instance_create_depth(x,y,player.depth-1,player_message)
	p_mes.text = "조금 더 설명하자면, 자칭 아기뺑띠들이 몰려 온데"
	p_mes.target = id
	}
}

if scene__ = 114
{
	if p_mes = -1
	{
	p_mes = instance_create_depth(x,y,player.depth-1,player_message)
	p_mes.text = "아기뺑띠들은 가까히 가면 거머리 마냥 들러붙어서 형을 방해 할거야"
	p_mes.target = id
	}
}

if scene__ = 115
{
	if p_mes = -1
	{
	p_mes = instance_create_depth(x,y,player.depth-1,player_message)
	p_mes.text = "들러붙거나, 때리면 흥분하고 이로 인해 터져버리니 조심하도록 해 형"
	p_mes.target = id
	}
}

if scene__ = 116
{
skiping_dilay = 1
alarm[11] = 2
alarm[6] = 2
scene__ = -4
}



if scene__ = 117
{
player.x += (x+140 - player.x)*0.1
	if p_mes = -1
	{
	p_mes = instance_create_depth(x,y,player.depth-1,player_message)
	p_mes.text = "형 다음날엔 더욱 더 강력한 혐팬치들이 몰려 올거야 형"
	p_mes.target = id
	}
}

if scene__ = 118
{
	if p_mes = -1
	{
	p_mes = instance_create_depth(x,y,player.depth-1,player_message)
	p_mes.text = "?"
	p_mes.target = player.id
	}
}

if scene__ = 119
{
	if p_mes = -1
	{
	p_mes = instance_create_depth(x,y,player.depth-1,player_message)
	p_mes.text = "형이 마크 안 하고 딴거 하고 있어서"
	p_mes.target = id
	}
}

if scene__ = 120
{
	if p_mes = -1
	{
	p_mes = instance_create_depth(x,y,player.depth-1,player_message)
	p_mes.text = "화가 잔뜩 난 잼민이 팬치들이 몰려올 거야 형"
	p_mes.target = id
	}
}

if scene__ = 121
{
	if p_mes = -1
	{
	p_mes = instance_create_depth(x,y,player.depth-1,player_message)
	p_mes.text = "잼민이 팬치는 마크 블록을 던지니까 안맞게 조심해 형"
	p_mes.target = id
	}
}

if scene__ = 122
{
alarm[11] = 2
alarm[6] = 2
skiping_dilay = 1
scene__ = -4
}









if global.achievement_finish[23] > 0
{
	if hp < 32 && global.jang_sa_x__ != 3
	{
	global.jang_sa_x__ = 3
	hp = 31
	}
}


if global.wave = 4 && global.n_room = 1
{
	if global.rain_event = 0
	{
	player.x += (x+140 - player.x)*0.1
	global.movement_speed = -25
	global.rain_event = 1
	global.playing_scene = 1
	player.cannot_move = 1
	player.image_index = 0
	player.image_xscale = 1
	scene__ = 391
		if p_mes != -1
		{
		instance_destroy(p_mes)
		p_mes = -1
		}
	}
}

if global.wave = 6 && global.n_room = 1
{
	if global.rain_event = 1
	{
	player.x += (x+140 - player.x)*0.1
	global.rain_event = 2
	global.movement_speed = -25
	global.playing_scene = 1
	player.cannot_move = 1
	player.image_index = 0
	player.image_xscale = 1
	scene__ = 401
		if p_mes != -1
		{
		instance_destroy(p_mes)
		p_mes = -1
		}
	}
}

if global.wave = 10 && global.n_room = 1 && global.gyu_seong_wave = 0
{
	if global.rain_event = 2
	{
	player.x += (x+140 - player.x)*0.1
	global.rain_event = 4
	global.movement_speed = -25
	global.playing_scene = 1
	player.cannot_move = 1
	player.image_index = 0
	player.image_xscale = 1
	scene__ = 41
	skiping_dilay = 1
	alarm[6] = 80
		if p_mes != -1
		{
		instance_destroy(p_mes)
		p_mes = -1
		}
	}
}

if global.wave = 10 && global.n_room = 1
{
	if global.rain_event = 3
	{
	player.x += (x+140 - player.x)*0.1
	global.rain_event = 5
	global.movement_speed = -25
	global.playing_scene = 1
	player.cannot_move = 1
	player.image_index = 0
	player.image_xscale = 1
	scene__ = 46
	skiping_dilay = 1
	alarm[6] = 80
		if p_mes != -1
		{
		instance_destroy(p_mes)
		p_mes = -1
		}
	}
}




if scene__ = 391
{
player.x += (x+120 - player.x)*0.1
	if p_mes = -1
	{
	p_mes = instance_create_depth(x,y,player.depth-1,player_message)
	p_mes.text = "형 밖에 비 오는거 같은데 감기 조심해"
	p_mes.target = id
	}
}

if scene__ = 392
{
player.x += (x+120 - player.x)*0.1
	if p_mes = -1
	{
	p_mes = instance_create_depth(x,y,player.depth-1,player_message)
	p_mes.text = "우산 줘봐 (D) / 그래 (F)"
	p_mes.target = player.id
	}
}

if scene__ = 393
{
player.x += (x+120 - player.x)*0.1
	if p_mes = -1
	{
	p_mes = instance_create_depth(x,y,player.depth-1,player_message)
	p_mes.text = "얌마 그딴 소리 할 시간에 우산이나 가져다 줘봐"
	p_mes.target = player.id
	}
}

if scene__ = 394
{
player.x += (x+120 - player.x)*0.1
	if p_mes = -1
	{
	p_mes = instance_create_depth(x,y,player.depth-1,player_message)
	p_mes.text = "형 미안... 밖에 나갈 일이 없어서 우산이 없어ㅋㅋㅋㅋ"
	p_mes.target = id
	}
}

if scene__ = 395
{
player.x += (x+120 - player.x)*0.1
	if p_mes = -1
	{
	p_mes = instance_create_depth(x,y,player.depth-1,player_message)
	p_mes.text = "얌마 그럼 우산이 없으면 사야지 뭐했어"
	p_mes.target = player.id
	}
}

if scene__ = 396
{
player.x += (x+120 - player.x)*0.1
	if p_mes = -1
	{
	p_mes = instance_create_depth(x,y,player.depth-1,player_message)
	p_mes.text = "ㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋ"
	p_mes.target = id
	}
}

if scene__ = 397
{
scene__ = -4
alarm[11] = 2
alarm[6] = 2
skiping_dilay = 1
}




if scene__ = 401
{
player.x += (x+120 - player.x)*0.1
	if p_mes = -1
	{
	p_mes = instance_create_depth(x,y,player.depth-1,player_message)
	p_mes.text = "형 밖에 눈 오는거 같은데 감기 조심해"
	p_mes.target = id
	}
}

if scene__ = 402
{
player.x += (x+120 - player.x)*0.1
	if p_mes = -1
	{
	p_mes = instance_create_depth(x,y,player.depth-1,player_message)
	p_mes.text = "우산 줘봐 (D) / 그래 (F)"
	p_mes.target = player.id
	}
}

if scene__ = 403
{
player.x += (x+120 - player.x)*0.1
	if p_mes = -1
	{
	p_mes = instance_create_depth(x,y,player.depth-1,player_message)
	p_mes.text = "저번에 사라던 우산은 샀냐?"
	p_mes.target = player.id
	}
}

if scene__ = 404
{
player.x += (x+120 - player.x)*0.1
	if p_mes = -1
	{
	p_mes = instance_create_depth(x,y,player.depth-1,player_message)
	p_mes.text = "형 미안 ㅋㅋㅋㅋ"
	p_mes.target = id
	}
}

if scene__ = 405
{
player.x += (x+120 - player.x)*0.1
	if p_mes = -1
	{
	p_mes = instance_create_depth(x,y,player.depth-1,player_message)
	p_mes.text = "형한테 도네하느라 돈을 다 썼어ㅋㅋㅋㅋ"
	p_mes.target = id
	}
}

if scene__ = 406
{
player.x += (x+120 - player.x)*0.1
	if p_mes = -1
	{
	p_mes = instance_create_depth(x,y,player.depth-1,player_message)
	p_mes.text = "...쓰읍"
	p_mes.target = player.id
	
	alarm[11] = 200
	alarm[6] = 200
	skiping_dilay = 1
	}
}





if scene__ = 41
{
player.x += (x+140 - player.x)*0.1
	if p_mes = -1
	{
	p_mes = instance_create_depth(x,y,player.depth-1,player_message)
	p_mes.text = choose("왠지 느낌이 좋지 않은데 몇가지 팁을 주자면, 가드는 모든 공격 방어가 돼!")
	p_mes.target = id
	}
}

if scene__ = 42
{
	if p_mes = -1
	{
		if global.money >= 13000 && (global.skill_down_attack = 0 || global.skill_jump_attack = 0 || global.skill_turning_attack = 0)
		{
		p_mes = instance_create_depth(x,y,player.depth-1,player_message)
		p_mes.text = choose("혹시 모르니 안 배운 스킬들도 배워두는게 좋을것 같아 형!")
		p_mes.target = id
		scene__ = -4
		alarm[11] = 80
		alarm[6] = 80
		skiping_dilay = 1
		}
		else
		{
		p_mes = instance_create_depth(x,y,player.depth-1,player_message)
		p_mes.text = choose("그리고 점프 후 바로 공중에서 '회전 베기' 쓰면 딜레이 없이 더 빠르게 공격 할 수 있어")
		p_mes.target = id
		scene__ = -4
		alarm[11] = 110
		alarm[6] = 110
		skiping_dilay = 1
		}
		
		if global.money < 13000 && global.skill_turning_attack = 0
		{
		p_mes = instance_create_depth(x,y,player.depth-1,player_message)
		p_mes.text = choose("어 형? 아직 회전베기를 안 배운거야? 심지어 돈도 없고?")
		p_mes.target = id
		}
	}
}


if scene__ = 43
{
player.x += (x+140 - player.x)*0.1
	if p_mes = -1
	{
	p_mes = instance_create_depth(x,y,player.depth-1,player_message)
	p_mes.text = choose("어쩔 수 없네 형....")
	p_mes.target = id
	}
}

if scene__ = 44
{
	if p_mes = -1
	{
	p_mes = instance_create_depth(x,y,player.depth-1,player_message)
	p_mes.text = choose("내가 스킬을 배울 수 있게 돈을 좀 보태줄게 형!")
	p_mes.target = id
	}
}

if scene__ = 45
{
	if p_mes = -1
	{
	p_mes = instance_create_depth(x,y,player.depth-1,player_message)
	p_mes.text = choose("이 돈 가지고 나한테 스킬을 배우도록 해! 형!")
	p_mes.target = id
	scene__ = -4
	global.money = 13000
	
	
		if global.voice_option = 0
		{
		var sfx = audio_play_sound(gibungoa,0,0)
		audio_sound_gain(sfx,0.3*global.master_volume*2*global.sfx_volume,0)
		}
	alarm[11] = 80
	alarm[6] = 80
	skiping_dilay = 1
	}
}



if scene__ = 46
{
player.x += (x+140 - player.x)*0.1
	if p_mes = -1
	{
	p_mes = instance_create_depth(x,y,player.depth-1,player_message)
	p_mes.text = choose("아니 형!")
	p_mes.target = id
	}
}

if scene__ = 47
{
	if p_mes = -1
	{
	p_mes = instance_create_depth(x,y,player.depth-1,player_message)
	p_mes.text = choose("규성이한테 당한거야? 형?")
	p_mes.target = id
	}
}

if scene__ = 48
{
	if p_mes = -1
	{
	p_mes = instance_create_depth(x,y,player.depth-1,player_message)
	p_mes.text = choose("뭐? 규성이가 부계로 돌아왔다고?")
	p_mes.target = id
	}
}

if scene__ = 49
{
	if p_mes = -1
	{
	p_mes = instance_create_depth(x,y,player.depth-1,player_message)
	p_mes.text = choose("규성이는 레이저 공격과 마크 공격을 하는데")
	p_mes.target = id
	}
}

if scene__ = 50
{
	if p_mes = -1
	{
	p_mes = instance_create_depth(x,y,player.depth-1,player_message)
	p_mes.text = choose("레이저 공격은 구르기로 피할 수 있어 형!")
	p_mes.target = id
	}
}

if scene__ = 51
{
	if p_mes = -1
	{
	p_mes = instance_create_depth(x,y,player.depth-1,player_message)
	p_mes.text = choose("아 형 근데!")
	p_mes.target = id
	}
}

if scene__ = 52
{
	if p_mes = -1
	{
	p_mes = instance_create_depth(x,y,player.depth-1,player_message)
	p_mes.text = choose("마크 공격은 구르기로는 피할 수 없어 형")
	p_mes.target = id
	}
}

if scene__ = 53
{
	if p_mes = -1
	{
	p_mes = instance_create_depth(x,y,player.depth-1,player_message)
	p_mes.text = choose("대신 회전베기 스킬을 사용해서 공격을 튕겨낼 수 있어 형!")
	p_mes.target = id
	}
}

if scene__ = 54
{
	if p_mes = -1
	{
	p_mes = instance_create_depth(x,y,player.depth-1,player_message)
	p_mes.text = choose("참고해주길 바래 형!")
	p_mes.target = id
	scene__ = -4
	alarm[11] = 80
	alarm[6] = 80
	skiping_dilay = 1
	
		if global.achievement_finish[49] = 0
		{
		var _message = instance_create_depth(-100,-100,-9999999999,achievement)
		_message.title = "못 피하는 패턴 없어여"
		_message.text = "달리기 및 스킬 활용 하면 쉽게 피하기 가능"
		global.achievement_finish[49] = 1
		}
	}
}





if global.playing_scene = 0
{
	if point_distance(test_wakchang.x,test_wakchang.y,player.x,player.y) > 32 || player.x < test_wakchang.x-10
	{
	p_mes = -1
	}
}



if global.n_room = 1 && global.playing_scene = 1
{
global.movement_speed += (0 - global.movement_speed)*0.1
}

if global.got_wakchori = 1 && global.n_room = 0 && global.wave = 1
{
tuto_scene = -1
}


if global.got_wakchori = 1 && global.n_room = 0 && global.gyu_seong_wave = 4.49 && global.vr_weared = 0 && global.given_vr = 0
{
tuto_scene = -1
}










if global.got_wakchori = 1 && global.n_room = 1 && global.gyu_seong_wave = 4.49 && global.given_vr = 0
{
	if tuto_scene < 14
	{
		if tuto_scene != -4
		{
		player.cannot_move = 1
		story_talk = 1
			if global.in_building < 0.4
			{
				if global.playing_scene = 0
				{
				global.playing_scene = 1
				tuto_scene = -1
				}
			}
		}
	}
	else
	{
	story_talk = 0
	player.cannot_move = 0
	global.playing_scene = 0
	tuto_scene = -4
	global.given_vr = 1
	}
	
	
	if global.in_building < 0.4
	{
		if tuto_scene = -1
		{
		player.image_xscale = 1
		global.movement_speed = -16
		player.image_index = 0
		tuto_scene = 0
		}
	}
	
	if tuto_scene = 0
	{
	global.giving_vr = 1
	player.x += (x+140 - player.x)*0.1
	if global.killed_wakchang_before > 0
	{
	hp = 32
	max_hp = 32
	}
		if p_mes_tuto = -1
		{
		p_mes_tuto = instance_create_depth(x,y,player.depth-1,player_message)
		p_mes_tuto.text = "형!"
		p_mes_tuto.target = id
		}
	}
	
	if tuto_scene = 1
	{
		if p_mes_tuto = -1
		{
		p_mes_tuto = instance_create_depth(x,y,player.depth-1,player_message)
		p_mes_tuto.text = "형도 들었지?"
		p_mes_tuto.target = id
		}
	}
	
	if tuto_scene = 2
	{
		if p_mes_tuto = -1
		{
		p_mes_tuto = instance_create_depth(x,y,player.depth-1,player_message)
		p_mes_tuto.text = "?"
		p_mes_tuto.target = player.id
		}
	}
	
	if tuto_scene = 3
	{
		if p_mes_tuto = -1
		{
		p_mes_tuto = instance_create_depth(x,y,player.depth-1,player_message)
		p_mes_tuto.text = "다시 규성이가 돌아온다고 한거 말이야 들었지?"
		p_mes_tuto.target = id
		}
	}
	
	if tuto_scene = 4
	{
		if p_mes_tuto = -1
		{
		p_mes_tuto = instance_create_depth(x,y,player.depth-1,player_message)
		p_mes_tuto.text = "왁초리 만으론 부족할 수 있으니"
		p_mes_tuto.target = id
		}
	}
	
	if tuto_scene = 5
	{
		if p_mes_tuto = -1
		{
		p_mes_tuto = instance_create_depth(x,y,player.depth-1,player_message)
		p_mes_tuto.text = "이걸 줄게 형!"
		p_mes_tuto.target = id
		}
	}
	
	if tuto_scene = 6
	{
		if p_mes_tuto = -1
		{
		p_mes_tuto = instance_create_depth(x,y,-999,message_)
		p_mes_tuto.t_image_alpha = 1
		p_mes_tuto.text = "VR"
		p_mes_tuto.sub_text = "을 획득했다!"
		p_mes_tuto.auto_destroy = 0
		p_mes_tuto.alarm[1] = 200
		alarm[7] = 250
		}
	}
	
	if tuto_scene = 7
	{
		if p_mes_tuto = -1
		{
		p_mes_tuto = instance_create_depth(x,y,player.depth-1,player_message)
		p_mes_tuto.text = "자 형! 이제 써봐!"
		p_mes_tuto.target = id
		}
	}
	
	if tuto_scene = 8
	{
		if p_mes_tuto != -1
		{
		instance_destroy(p_mes_tuto)
		p_mes_tuto = -1
		}
	skiping_dilay = 1
		if global.t_black_ != -0.01
		{
		global.t_black_ = 2
		}
	
		if global.black_ > 1.95 && global.vr_weared = 0
		{
		tuto_scene ++
		alarm[6] = 80
		global.vr_weared = 1
		global.t_black_ = -0.01
		player.move_sprite = pl_move_skeleton_beat_saber
		player.sprite_index = player.move_sprite
		}
	}
	
	if tuto_scene = 9
	{
		if p_mes_tuto = -1
		{
		p_mes_tuto = instance_create_depth(x,y,player.depth-1,player_message)
		p_mes_tuto.text = "뭐가 달라진게 느껴져?"
		p_mes_tuto.target = id
		}
	}
	
	if tuto_scene = 10
	{
		if p_mes_tuto = -1
		{
		p_mes_tuto = instance_create_depth(x,y,player.depth-1,player_message)
		p_mes_tuto.text = "..."
		p_mes_tuto.target = player.id
		}
	}
	
	if tuto_scene = 11
	{
		if p_mes_tuto = -1
		{
		p_mes_tuto = instance_create_depth(x,y,player.depth-1,player_message)
		p_mes_tuto.text = "?"
		p_mes_tuto.target = player.id
		}
	}
	
	if tuto_scene = 12
	{
		if p_mes_tuto = -1
		{
		p_mes_tuto = instance_create_depth(x,y,player.depth-1,player_message)
		p_mes_tuto.text = "아 모르겠다고?"
		p_mes_tuto.target = id
		}
	}
	
	if tuto_scene = 13
	{
		if p_mes_tuto = -1
		{
		p_mes_tuto = instance_create_depth(x,y,player.depth-1,player_message)
		p_mes_tuto.text = "그럼 지금 무기로 밖에 나가서 날아오는 블럭을 비트세이버 처럼 썰어봐!"
		p_mes_tuto.target = id
		}
	}
}













if global.got_wakchori = 1 && global.n_room = 1 && global.wave = 1 && global.gyu_seong_wave = 0
{
	if tuto_scene < 14
	{
		if tuto_scene != -4
		{
		player.cannot_move = 1
		story_talk = 1
			if global.in_building < 0.4
			{
				if global.playing_scene = 0
				{
				global.playing_scene = 1
				tuto_scene = -1
				}
			}
		}
	}
	else
	{
	story_talk = 0
	player.cannot_move = 0
	global.playing_scene = 0
	global.got_wakchori = 1
	tuto_scene = -4
	}
	
	
	if global.in_building < 0.4 && sec_story = 0
	{
		if tuto_scene <= -1
		{
		player.image_xscale = 1
		global.movement_speed = -16
		player.image_index = 0
		tuto_scene = 0
		}
	}
	
	if tuto_scene = 0
	{
	player.x += (x+140 - player.x)*0.1
		if p_mes_tuto = -1
		{
		p_mes_tuto = instance_create_depth(x,y,player.depth-1,player_message)
		p_mes_tuto.text = "형! 무사했구나!"
		p_mes_tuto.target = id
		}
	}
	
	if tuto_scene = 1
	{
		if p_mes_tuto = -1
		{
		p_mes_tuto = instance_create_depth(x,y,player.depth-1,player_message)
		p_mes_tuto.text = "그 많은 혐팬치들은 조지고 온거야 형?"
		p_mes_tuto.target = id
		}
	}
	
	if tuto_scene = 2
	{
		if p_mes_tuto = -1
		{
		p_mes_tuto = instance_create_depth(x,y,player.depth-1,player_message)
		p_mes_tuto.text = "와 시킨다고 그걸 해줬구나 형"
		p_mes_tuto.target = id
		}
	}
	
	if tuto_scene = 3
	{
		if p_mes_tuto = -1
		{
		p_mes_tuto = instance_create_depth(x,y,player.depth-1,player_message)
		p_mes_tuto.text = "역시 형밖에 없어"
		p_mes_tuto.target = id
		}
	}
	
	if tuto_scene = 4
	{
		if p_mes_tuto = -1
		{
		p_mes_tuto = instance_create_depth(x,y,player.depth-1,player_message)
		p_mes_tuto.text = "뭐?"
		p_mes_tuto.target = id
		}
	}
	
	if tuto_scene = 5
	{
		if p_mes_tuto = -1
		{
		p_mes_tuto = instance_create_depth(x,y,player.depth-1,player_message)
		p_mes_tuto.text = "갑자기 도와주기 싫어 졌다고?"
		p_mes_tuto.target = id
		}
	}
	
	if tuto_scene = 6
	{
		if p_mes_tuto = -1
		{
		p_mes_tuto = instance_create_depth(x,y,player.depth-1,player_message)
		p_mes_tuto.text = "미안해 형"
		p_mes_tuto.target = id
		}
	}
	
	if tuto_scene = 7
	{
		if p_mes_tuto = -1
		{
		p_mes_tuto = instance_create_depth(x,y,player.depth-1,player_message)
		p_mes_tuto.text = "대신 형이 혐팬치를 처치 할 때 마다"
		p_mes_tuto.target = id
		}
	}
	
	if tuto_scene = 8
	{
		if p_mes_tuto = -1
		{
		p_mes_tuto = instance_create_depth(x,y,player.depth-1,player_message)
		p_mes_tuto.text = "내가 가끔 조금의 도네를 해줄게 형"
		p_mes_tuto.target = id
		}
	}
	
	if tuto_scene = 9
	{
		if p_mes_tuto = -1
		{
		p_mes_tuto = instance_create_depth(x,y,player.depth-1,player_message)
		p_mes_tuto.text = "이제 그 돈을 가지고 새로운 스킬을 배우거나,"
		p_mes_tuto.target = id
		}
	}
	
	if tuto_scene = 10
	{
		if p_mes_tuto = -1
		{
		p_mes_tuto = instance_create_depth(x,y,player.depth-1,player_message)
		p_mes_tuto.text = "스킬을 강화를 할 수 있고"
		p_mes_tuto.target = id
		}
	}
	
	if tuto_scene = 11
	{
		if p_mes_tuto = -1
		{
		p_mes_tuto = instance_create_depth(x,y,player.depth-1,player_message)
		p_mes_tuto.text = "체력도 회복 할 수 있어 형"
		p_mes_tuto.target = id
		}
	}
	
	if tuto_scene = 12
	{
		if p_mes_tuto = -1
		{
		p_mes_tuto = instance_create_depth(x,y,player.depth-1,player_message)
		p_mes_tuto.text = "관심 있으면 나한테 말 걸어줘 형"
		p_mes_tuto.target = id
		}
	}
	
	if tuto_scene = 13
	{
		if p_mes_tuto = -1
		{
		p_mes_tuto = instance_create_depth(x,y,player.depth-1,player_message)
		p_mes_tuto.text = "그럼 잘 부탁해 형!"
		p_mes_tuto.target = id
		sec_story = 1
		}
	}
}







if global.got_wakchori = 0 && global.n_room = 1
{
	if rejected = 0
	{
		if tuto_scene < 15
		{
			if tuto_scene != -4
			{
			player.cannot_move = 1
			story_talk = 1
				if global.in_building < 0.4
				{
				global.playing_scene = 1
				}
			}
		}
		else
		{
		story_talk = 0
		player.cannot_move = 0
		global.playing_scene = 0
		global.got_wakchori = 1
		tuto_scene = -4
		}
	}
	
	if global.in_building < 0.4
	{
	
		if tuto_scene = -1
		{
		player.image_xscale = 1
		global.movement_speed = -16
		tuto_scene = 0
		}
	}
	
	
	if global.in_building < 0.3 && tuto_scene != -4
	{
	
	if floor(global.movement_speed) = 0
	{
	player.image_index = 0
	}

		
		if tuto_scene = 0
		{
		player.x += (x+140 - player.x)*0.1
			if p_mes_tuto = -1
			{
			p_mes_tuto = instance_create_depth(x,y,player.depth-1,player_message)
			p_mes_tuto.text = "왁굳형! 왔구나!"
			p_mes_tuto.target = id
			}
		}
		
		if tuto_scene = 1
		{
			if p_mes_tuto = -1
			{
			p_mes_tuto = instance_create_depth(x,y,player.depth-1,player_message)
			p_mes_tuto.text = "요즘 들어 혐팬치들의 수가 많아졌어 형"
			p_mes_tuto.target = id
			}
		}
		
		if tuto_scene = 2
		{
			if p_mes_tuto = -1
			{
			p_mes_tuto = instance_create_depth(x,y,player.depth-1,player_message)
			p_mes_tuto.text = "그래서 말인데 형"
			p_mes_tuto.target = id
			}
		}
		
		if tuto_scene = 3
		{
			if p_mes_tuto = -1
			{
			p_mes_tuto = instance_create_depth(x,y,player.depth-1,player_message)
			p_mes_tuto.text = "곧 혐팬치들이 여기로 몰려올거야"
			p_mes_tuto.target = id
			}
		}
		
		if tuto_scene = 4
		{
			if p_mes_tuto = -1
			{
			p_mes_tuto = instance_create_depth(x,y,player.depth-1,player_message)
			p_mes_tuto.text = "형이 그 혐팬치들을 처리해줘 형"
			p_mes_tuto.target = id
			}
		}
		
		if tuto_scene = 5
		{
			if p_mes_tuto = -1
			{
			p_mes_tuto = instance_create_depth(x,y,player.depth-1,player_message)
			p_mes_tuto.text = "그래 (D) / 그만 죽여 혐팬치 다 죽었어 (F)"
			p_mes_tuto.target = player
			}
		}
		
		if tuto_scene = 5.5
		{
			if p_mes_tuto = -1
			{
			p_mes_tuto = instance_create_depth(x,y,player.depth-1,player_message)
			p_mes_tuto.text = "그럼 킹쩔수 없네... 난 그런 형이라도 사랑해"
			p_mes_tuto.target = id
			}
			
			if global.achievement_finish[55] = 0
			{
			var _message = instance_create_depth(-100,-100,-9999999999,achievement)
			_message.title = "응 안해"
			_message.text = "왁창의 요청을 거절하자"
			global.achievement_finish[55] = 1
			}
		}
		
		if tuto_scene = 5.75
		{
			if p_mes_tuto = -1
			{
			p_mes_tuto = instance_create_depth(x,y,player.depth-1,player_message)
			p_mes_tuto.text = "혹시 마음이 바뀌면 다시 말 걸어줘"
			p_mes_tuto.target = id
			tuto_scene = -4
			alarm[8] = 80
			}
		}
		
		if tuto_scene = 6
		{
			if p_mes_tuto = -1
			{
			p_mes_tuto = instance_create_depth(x,y,player.depth-1,player_message)
			p_mes_tuto.text = "아 물론 그냥 해달라는건 아니야 형"
			p_mes_tuto.target = id
			}
		}
		
		if tuto_scene = 7
		{
			if p_mes_tuto = -1
			{
			p_mes_tuto = instance_create_depth(x,y,player.depth-1,player_message)
			p_mes_tuto.text = "도움이 될지는 모르겠지만 형한테 이걸 줄게."
			p_mes_tuto.target = id
			}
		}
		
		if tuto_scene = 8
		{
			if p_mes_tuto = -1
			{
			p_mes_tuto = instance_create_depth(x,y,-999,message_)
			p_mes_tuto.t_image_alpha = 1
			p_mes_tuto.text = "왁초리"
			p_mes_tuto.sub_text = "를 획득했다!"
			p_mes_tuto.auto_destroy = 0
			p_mes_tuto.alarm[1] = 200
			alarm[7] = 250
			}
		}
		
		if tuto_scene = 9
		{
			if p_mes_tuto = -1
			{
			p_mes_tuto = instance_create_depth(x,y,player.depth-1,player_message)
			p_mes_tuto.text = "A키를 누르면 일반 공격을 할 수 있어 형!"
			p_mes_tuto.target = id
			}
		}
		
		if tuto_scene = 10
		{
			if p_mes_tuto = -1
			{
			p_mes_tuto = instance_create_depth(x,y,player.depth-1,player_message)
			p_mes_tuto.text = "또 나한테 스킬을 배우면 스킬도 사용할 수 있어 형"
			p_mes_tuto.target = id
			}
		}
		
		if tuto_scene = 11
		{
			if p_mes_tuto = -1
			{
			p_mes_tuto = instance_create_depth(x,y,player.depth-1,player_message)
			p_mes_tuto.text = "혹여나 혐팬치들에게 둘러쌓여 도망치치 못할때는..."
			p_mes_tuto.target = id
			}
		}
		
		if tuto_scene = 12
		{
			if p_mes_tuto = -1
			{
			p_mes_tuto = instance_create_depth(x,y,player.depth-1,player_message)
			p_mes_tuto.text = "스페이스 바 를 통해 점프하거나"
			p_mes_tuto.target = id
			}
		}
		
		if tuto_scene = 13
		{
			if p_mes_tuto = -1
			{
			p_mes_tuto = instance_create_depth(x,y,player.depth-1,player_message)
			p_mes_tuto.text = "아래 방향키를 눌러 구르기를 할 수 있어!"
			p_mes_tuto.target = id
			}
		}
		
		if tuto_scene = 14
		{
			if p_mes_tuto = -1
			{
			p_mes_tuto = instance_create_depth(x,y,player.depth-1,player_message)
			p_mes_tuto.text = "그럼 무운을 빌게 형!"
			p_mes_tuto.target = id
			
				if global.tutorial = 1
				{
				var key_guide = instance_create_depth(-100,-100,-999994,draw_key_)
				key_guide.location = -0.5
				key_guide.image_index = 3

				var key_guide = instance_create_depth(-100,-100,-999994,draw_key_)
				key_guide.location = 0.5
				key_guide.image_index = 4
				
				global.tutorial = 2
				}
			}
		}
	}
}
}