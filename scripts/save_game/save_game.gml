function save_game() {
				ini_open_protect("Hyumpanchi_of_Wakgood_save_patched.ini")
				//라운드
				ini_write_real("wave","a",global.wave);
				
				//클리어 후 다시 플레이 횟수
				ini_write_real("replay_time","a",global.replay_time);

				for(var i = 0; i < 99; i ++)
				{
				//도전과제
				ini_write_real("achievement_finish","a"+string(i),global.achievement_finish[i]);
				}

				//왁초리
				ini_write_real("got_wakchori","a",global.got_wakchori);

				//VR 장착중
				ini_write_real("vr_weared","a",global.vr_weared);
				ini_write_real("given_vr","a",global.given_vr);
				ini_write_real("giving_vr","a",global.giving_vr);
			
				//메시
				ini_write_real("messi","a",global.messi)

				//승부 빤스
				ini_write_real("pants","a",global.pants)

				//스킬 올려치기
				ini_write_real("skill_jump_attack","a",global.skill_jump_attack);

				//스킬 회전 베기
				ini_write_real("skill_turning_attack","a",global.skill_turning_attack);

				//스킬 내려찍기
				ini_write_real("skill_down_attack","a",global.skill_down_attack);
			
				//근력 강화
				ini_write_real("normal_attack_dmg","a",global.normal_attack_dmg)

				//규성이
				ini_write_real("gyu_seong_wave","a",global.gyu_seong_wave);

				//돈
				ini_write_real("money","a",global.money);

				//풀스크린
				ini_write_real("full_screen","a",global.full_screen);

				//비오는거
				ini_write_real("rainy","a",global.rainy);
				ini_write_real("rain_event","a",global.rain_event);

				//마스터 볼륨
				ini_write_real("master_volume","a",global.master_volume);

				//BGM 볼륨
				ini_write_real("bgm_volume","a",global.bgm_volume);

				//왁창 죽임
				ini_write_real("killed_wakchang","a",global.killed_wakchang);
				ini_write_real("killed_wakchang_before","a",global.killed_wakchang_before);

				//배경 음악
				ini_write_real("origin_bgm_volume","a",global.origin_bgm_volume);

				//효과음
				ini_write_real("sfx_volume","a",global.sfx_volume);

				//체력
				ini_write_real("hp","a",global.hp);
			
				//왁창 장사
				ini_write_real("jang_sa_x__","a",global.jang_sa_x__)
			
				//키세팅
				ini_write_string("a_key","a",global.a_key)
				ini_write_string("q_key","a",global.q_key)
				ini_write_string("s_key","a",global.s_key)
				ini_write_string("w_key","a",global.w_key)
				ini_write_string("run_key","a",global.run_key)
				ini_write_string("e_key","a",global.e_key)
			
				//플탐
				ini_write_real("playtime","a",global.playtime)
			
				//레이지 모드
				ini_write_real("rage_gauge","a",global.rage_gauge)
			
				//자동 달리기
				ini_write_real("auto_run","a",global.blood_effect)
			
				//키 가이드
				ini_write_real("tutorial","a",global.tutorial)
				
				//빠르게 대사 로드
				ini_write_real("fast_message_load","a",global.fast_message_load)

				//보이스 끄기
				ini_write_real("voice_option","a",global.voice_option)
				
				//닉네임
				ini_write_string("nickname","a",global.nickname)
				
				//뒤진 횟수
				ini_write_real("total_died","a",global.total_died)
				
				//지진파 스킬
				ini_write_real("can_use_quake_skill","a",global.can_use_quake_skill)
				
				//화면 번쩍거림 효과
				ini_write_real("screen_shine_effect","a",global.screen_shine_effect)
				
				//대피소 지하 소문
				ini_write_real("daepiso_story","a",global.daepiso_story)
				
				//숨겨진 스킬
				ini_write_real("daepiso_story","a",global.find_special_skill)
				
				//헤르메스 부츠
				ini_write_real("boots_","a",global.boots_)


				ini_close_protect();


}
