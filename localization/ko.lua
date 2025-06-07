--Straight out of chat gpt so blame it for any mistakes

return {
    misc = {
        dictionary = {
            bldstn_inactive_text = "비활성",
            bldstn_trait_text = '특성',
            bldstn_riseangels_text = '일어나라 나의 천사들!',
            bldstn_yum_text = '냠!',
            k_bldstn_power = '힘',
            bldstn_addsafe_text = '금고에 추가',
            bldstn_adddeck_text = '덱에 추가',
            bldstn_safe_text1 = '금고에 추가하려면 \'금고에 추가\'를 눌러 조커를 왼쪽에 추가하세요',
            bldstn_safe_text2 = '덱에 조커를 추가하려면 선택 후 \'덱에 추가\'를 누르세요',
            bldstn_jokers_text = '조커',
            bldstn_draw_text = '뽑기!',
            bldstn_electricbox_spawned = '전기 상자 생성됨!',
            bldstn_scbp_spawned = '슈퍼 차지드 설계도 생성됨!',
            bldstn_activate_text = '활성화',
            bldstn_ityc_text = '이 카드가 당신의 카드입니까',
            bldstn_monster_text = '괴물',
            bldstn_angel_text = '천사',
            bldstn_copycat_text = '모방자',
            bldstn_keep_text = '유지',
            bldstn_free_reroll = '+1 무료 재시도',
            bldstn_reactive_text = '반응형 조커',
            bldstn_disable_reactive_anim = '반응형 애니메이션 비활성화',
            bldstn_plus_planet = '행성',
        },
    },
    descriptions = {
        Joker = {
            j_bldstn_summerjoker = {
                name = '여름 조커',
                text = {
                  '손에 든 각 {C:hearts}하트{} 카드마다',
                  '{X:mult,C:white}X#1#{} 배수가 증가합니다',
                },
            },
            j_bldstn_winterjoker = {
                name = '겨울 조커',
                text = {
                  '모든 {C:clubs}클럽{} 카드가',
                  '{C:attention}유리 카드{}가 됩니다',
                },
            },
            j_bldstn_springjoker = {
                name = '봄 조커',
                text = {
                    '플레이된 패에 {C:attention}2{} 장의 카드가 있고',
                    '{C:attention}오른쪽 카드{}가 {C:diamonds}다이아몬드{}라면,',
                    '{C:attention}왼쪽{}',
                    '{C:attention}카드를{} {C:attention}오른쪽 카드로 변환합니다',
                },
            },
            j_bldstn_autumnjoker = {
                name = '가을 조커',
                text = {
                  '이 조커는 {X:mult,C:white}X#1#{} 배수를 얻습니다',
                  '{C:spades}스페이드{} 무늬의',
                  '득점 카드마다',
                  '{C:inactive}(현재 {X:mult,C:white}X#2#{} {C:inactive}배수)',
                },
            },
            j_bldstn_seasonsjoker = {
                name = '계절 조커',
                text = {
                    '모든 카드는 모든 무늬로 간주됩니다',
                    '카드는 약화될 수 없습니다',
                },
                unlock = {
                    '4계절 조커 모두 발견하기'
                },
            },
            j_bldstn_timejoker = {
                name = '시간 조커',
                text = {
                    '{C:attention}블라인드{}가 선택되면,',
                    '{C:attention}기본 점수 요구량{}을 이전 {C:attention}2{} {C:attention}안티{}의',
                    '{C:attention}기본 점수 요구량{}으로 설정합니다',
                },
            },
            j_bldstn_piackacardjoker = {
                name = '카드를 골라라, 아무 카드나',
                text = {
                    '{C:attention}능동:{} 뽑을 카드를 선택하세요',
                    '{C:inactive}(한 라운드에 한 번)',
                    '{C:attention}수동:{} {C:attention}+1{} 손패 크기',
                },
            },
            j_bldstn_onepunchjoker = {
                name = '원펀치 조커',
                text = {
                    '{C:attention}능동:{} {X:mult,C:white}X#2#{} 배수',
                    '{C:inactive}(한 라운드에 한 번)',
                    '{C:inactive}(#1#)',
                    '{C:attention}수동:{} {X:mult,C:white}X1{} 배수',
                },
            },
            j_bldstn_electricjoker = {
                name = '전기 상자',
                text = {
                    '{C:attention}능동:{} {C:green}#1# 중 #2#{} 확률로',
                    '{V:1}"슈퍼 차지드 설계도"{} 생성',
                    '{C:inactive}(상점당 한 번)',
                    "\n",
                    '{C:attention}수동:{} 슈퍼 차지',
                    '{V:1, T:j_bldstn_superchargedblueprint}"슈퍼 차지드 설계도"{}',
                },
            },
            j_bldstn_superchargedblueprint = {
                name = '슈퍼 차지드 설계도',
                text = {
                    '{C:attention}능동:{} {C:green}#1# 중 #2#{} 확률로',
                    '{V:1}"전기 상자"{} 생성',
                    '{C:inactive}(상점당 한 번)',
                    "\n",
                    '{C:attention}수동:{} 이 {C:attention}조커{}와',
                    '{V:1, T:j_bldstn_electricjoker}"전기 상자"{} 사이의',
                    '3개의 조커를 최대 3회 재작동합니다,',
                    '가능한 한 균등하게 나눕니다',
                    '{C:inactive}(둘 다 있어야 함)',
                },
            },
            j_bldstn_safejoker = {
                name = '금고',
                text = {
                    '{C:attention}능동:{} 최대 3개의 {C:attention}조커{}를 선택하여',
                    '금고에 넣습니다',
                    '{C:inactive}(금고에 있는 조커는',
                    '{C:inactive}강화, 점수, 활성화되지 않으며',
                    '{C:inactive}조커 제한에 포함되지 않습니다)',
                },
            },
            j_bldstn_tridentjoker = {
                name = '삼지창',
                text = {
                    '{X:mult,C:white}X#1#{} 배수',
                    '패를 플레이할 때마다 {C:red}1{} 감소',
                    '{C:inactive}(라운드 종료 시 초기화)',
                },
            },
            j_bldstn_lightningstonejoker = {
                name = '번개석',
                text = {
                    '라운드 종료 시 {C:green}#3# 중 #2#{}',
                    '{C:money}'.. localize('$') ..'#1# 획득 확률',
                },
            },
            j_bldstn_seastonejoker = {
                name = '바다석',
                text = {
                    '{C:green}#3# 중 #2#{} 확률로 {C:clubs}클럽{} 점수 획득 시',
                    '{C:chips}+#1#{} 칩 획득',
                },
            },
            j_bldstn_plasmastonejoker = {
                name = '플라즈마석',
                text = {
                    '매 {C:attention}2{} 재시도마다',
                    '{C:green}#3# 중 #2#{} 확률로',
                    '{C:attention}1{} 무료 {C:green}재시도 획득',
                    '{C:inactive}(#1#/2 재시도)',
                },
            },
            j_bldstn_rosestonejoker = {
                name = '장미석',
                text = {
                    '{C:green}#2# 중 #1#{} 확률로',
                    '패를 플레이한 후 {C:tarot}타로{} 카드 생성',
                    '{C:inactive}(공간이 있어야 함)',
                },
            },
            j_bldstn_sapphirestonejoker = {
                name = '사파이어석',
                text = {
                    "{C:green}#3# 중 #2#{} 확률로",
                    "플레이된 카드가",
                    "{C:hearts}하트{} 무늬일 때",
                    "{X:chips,C:white} X#1# {} 칩 점수 획득",
                },
            },
            j_bldstn_alwaysluckyjoker = {
                name = '항상 운 좋은',
                text = {
                    '해당 카드의 {C:green,E:1,S:1.1}확률{}은',
                    '오른쪽 카드에서 {C:attention}보장됩니다',
                },
            },
            j_bldstn_galaxyjoker = {
                name = '{C:bldstn_galaxyg1}갤럭시 {C:bldstn_galaxyg2}조커',
                text = {
                    '이 조커가 어떤 기능을 가지면 좋을지',
                    '댓글로 아이디어를 남겨주세요. 최고의 아이디어가 추가됩니다!',
                    '이 조커는 게임에 등장하지 않습니다.',
                },
            },
            j_bldstn_blackholejoker = {
                name = '{C:bldstn_blackholeg1}블랙{C:bldstn_blackholeg1}홀 {C:bldstn_blackholeg2}조커',
                text = {
                    '이 조커가 어떤 기능을 가지면 좋을지',
                    '댓글로 아이디어를 남겨주세요. 최고의 아이디어가 추가됩니다!',
                    '이 조커는 게임에 등장하지 않습니다.',
                },
            },
            j_bldstn_supernovajoker = {
                name = '{C:bldstn_supernovag1}슈퍼노바 {C:bldstn_supernovag2}조커',
                text = {
                    '이 조커가 어떤 기능을 가지면 좋을지',
                    '댓글로 아이디어를 남겨주세요. 최고의 아이디어가 추가됩니다!',
                    '이 조커는 게임에 등장하지 않습니다.',
                },
            },
        },
        Tarot = {
            c_bldstn_ajokertarot = {
                name = "농담",
                text = {
                    "강화된 {C:attention}1{} 선택된",
                    "카드를",
                    "{C:attention}조커 카드{}로 만듭니다",
                }
            },
            c_bldstn_isthisyourcardtarot = {
                name = "이 카드가 당신의 카드입니까",
                text = {
                    '강화된 {C:attention}1{} 선택된 카드',
                    '{C:green}특성 카드{}로 변환하고',
                    '{C:green}이 카드가 당신의 카드 특성{}을 추가합니다',
                }
            },
            c_bldstn_redotarot = {
                name = "다시 하기",
                text = {
                    '{C:green}특성{}을 모두 초기화합니다',
                    '{C:attention}3{} 개까지 선택된 {C:green}특성 카드에서',
                }
            },
            c_bldstn_copycattarot = {
                name = "모방자",
                text = {
                    '강화된 {C:attention}1{} 선택된 카드',
                    '{C:green}특성 카드{}로 변환하고',
                    '{C:green}모방자 특성{}을 추가합니다',
                }
            },
            c_bldstn_utopiatarot = {
                name = "유토피아",
                text = {
                    '{C:attention}블라인드{} 상태에서 사용하면,',
                    '{C:attention}점수 요구량{}이 절반으로 줄어듭니다.',
                    '{C:attention}다른{} 어떤 곳에서든 사용하면,',
                    '{C:money}'.. localize('$') ..'10 을 얻습니다',
                }
            },
        },
        Spectral = {
            c_bldstn_monsterspectral = {
                name = "괴물",
                text = {
                    "강화된 {C:attention}1{} 선택된 카드",
                    "{C:green}특성 카드{}로 변환하고",
                    "{C:green}괴물 특성{}을 추가합니다.",
                    "{C:inactive}(카드에 {C:green}천사 특성{}이 없을 때만)",
                }
            },
            c_bldstn_angelspectral = {
                name = "천사",
                text = {
                    "강화된 {C:attention}1{} 선택된 카드",
                    "{C:green}특성 카드{}로 변환하고",
                    "{C:green}천사 특성{}을 추가합니다.",
                    "{C:inactive}(카드에 {C:green}괴물 특성{}이 없을 때만)",
                }
            },
            c_bldstn_powerspectral = {
                name = "힘",
                text = {
                    "무작위로 생성된",
                    "{V:1}힘{C:attention} 조커{},",
                    "돈을 {C:money}$0으로 설정합니다",
                }
            },
            c_bldstn_voucherspectral = {
                name = "바우처+",
                text = {
                    "무작위 바우처 생성",
                    "상점에서 다음 안티까지 유지",
                }
            },
        },
        Enhanced = {
            m_bldstn_jokercard = {
                name = "조커 카드",
                text = {
                    "모든 무늬로 간주되며",
                    "가장 높은 강조된 랭크",
                }
            },
            m_bldstn_traitcard = {
                name = "특성 카드",
                text = {
                    "{C:green}#1#",
                    "{C:green}#2#",
                    "{C:green}#3#",
                }
            },
            m_bldstn_traitcardinfo = {
                name = "특성 카드",
                text = {
                    "{C:green}특성{}을 {C:green}특성 카드에 추가하여",
                    "새로운 능력을 얻으세요!",
                    '{C:inactive}(최대 3개)',
                }
            },
            m_bldstn_isthisyourcardenhancement = {
                name = "이 카드가 당신의 카드 특성",
                text = {
                    "항상 먼저 뽑힙니다",
                }
            },
            m_bldstn_monsterenhancement = {
                name = "괴물 특성",
                text = {
                    '플레이된 패에 이 {C:attention}카드{}와 정확히 {C:attention}1{} 다른 {C:attention}카드{}가 있으면,',
                    '다른 {C:attention}카드{}를 먹고',
                    '무작위 {C:dark_edition}에디션 획득',
                }
            },
            m_bldstn_angelenhancement = {
                name = "천사 특성",
                text = {
                    '이 {C:attention}카드{}만 플레이되면,',
                    '이 {C:attention}카드{}를 무작위 {C:dark_edition}에디션과 함께',
                    '덱에 복사합니다',
                }
            },
            m_bldstn_copycatenhancement = {
                name = "모방자 특성",
                text = {
                    '선택된 덱에서 무작위 {C:attention}카드{}를 복사하여',
                    '이 {C:attention}카드{} 위에 놓습니다',
                }
            },
        },
    },
}
