--Straight out of chat gpt so blame it for any mistakes

return {
    misc = {
        dictionary = {
            bldstn_inactive_text = "未激活",
            bldstn_trait_text = '特性',
            bldstn_riseangels_text = '起来吧，我的天使们！',
            bldstn_yum_text = '嗯！',
            k_bldstn_power = '力量',
            bldstn_addsafe_text = '加入保险箱',
            bldstn_adddeck_text = '加入牌组',
            bldstn_safe_text1 = "点击‘加入保险箱’将小丑牌添加到左侧保险箱中",
            bldstn_safe_text2 = "选择后点击‘加入牌组’将小丑牌添加到牌组中",
            bldstn_jokers_text = '小丑牌',
            bldstn_draw_text = '抽牌！',
            bldstn_electricbox_spawned = '电箱已生成！',
            bldstn_scbp_spawned = '超级充能蓝图已生成！',
            bldstn_activate_text = '激活',
            bldstn_ityc_text = '这是你的牌吗？',
            bldstn_monster_text = '怪物',
            bldstn_angel_text = '天使',
            bldstn_copycat_text = '模仿者',
            bldstn_keep_text = '保留',
            bldstn_free_reroll = '+1 次免费重投',
            bldstn_reactive_text = '反应型小丑',
            bldstn_disable_reactive_anim = '禁用反应动画',
            bldstn_plus_planet = '行星',
        },
    },
    descriptions = {
        Joker = {
            j_bldstn_summerjoker = {
                name = '夏季小丑',
                text = {
                    '手牌中每张 {C:hearts}红桃{} 牌',
                    '{X:mult,C:white}X#1#{} 倍加成',
                },
            },
            j_bldstn_winterjoker = {
                name = '冬季小丑',
                text = {
                    '所有 {C:clubs}梅花{} 牌',
                    '变为 {C:attention}玻璃牌{}',
                },
            },
            j_bldstn_springjoker = {
                name = '春季小丑',
                text = {
                    '已出牌中有 {C:attention}2{} 张牌且',
                    '{C:attention}右侧牌{}为 {C:diamonds}方块{} 时，',
                    '{C:attention}左侧{}',
                    '{C:attention}牌{} 转换为 {C:attention}右侧牌{}',
                },
            },
            j_bldstn_autumnjoker = {
                name = '秋季小丑',
                text = {
                    '此小丑获得 {X:mult,C:white}X#1#{} 倍加成',
                    '每张 {C:spades}黑桃{} 得分牌',
                    '{C:inactive}(当前 {X:mult,C:white}X#2#{} {C:inactive}倍数)',
                },
            },
            j_bldstn_seasonsjoker = {
                name = '四季小丑',
                text = {
                    '所有牌视为所有花色',
                    '牌不可被削弱',
                },
                unlock = {
                    '发现全部4季小丑',
                },
            },
            j_bldstn_timejoker = {
                name = '时间小丑',
                text = {
                    '{C:attention}盲牌{} 被选中时，',
                    '{C:attention}基础分数需求{} 设为之前 {C:attention}2{} 个 {C:attention}反向{} 的',
                    '{C:attention}基础分数需求{}',
                },
            },
            j_bldstn_piackacardjoker = {
                name = '随便选牌',
                text = {
                    '{C:attention}主动:{} 选择抽取的牌',
                    '{C:inactive}(每轮一次)',
                    '{C:attention}被动:{} {C:attention}+1{} 手牌大小',
                },
            },
            j_bldstn_onepunchjoker = {
                name = '一拳小丑',
                text = {
                    '{C:attention}主动:{} {X:mult,C:white}X#2#{} 倍数',
                    '{C:inactive}(每轮一次)',
                    '{C:inactive}(#1#)',
                    '{C:attention}被动:{} {X:mult,C:white}X1{} 倍数',
                },
            },
            j_bldstn_electricjoker = {
                name = '电箱',
                text = {
                    '{C:attention}主动:{} {C:green}以 #1# 中的 #2# 概率{}',
                    '生成 {V:1}"超级充能蓝图"{}',
                    '{C:inactive}(每商店一次)',
                    "\n",
                    '{C:attention}被动:{} 超级充能',
                    '{V:1, T:j_bldstn_superchargedblueprint}"超级充能蓝图"{}',
                },
            },
            j_bldstn_superchargedblueprint = {
                name = '超级充能蓝图',
                text = {
                    '{C:attention}主动:{} {C:green}以 #1# 中的 #2# 概率{}',
                    '生成 {V:1}"电箱"{}',
                    '{C:inactive}(每商店一次)',
                    "\n",
                    '{C:attention}被动:{} 重新激活此 {C:attention}小丑{} 和',
                    '{V:1, T:j_bldstn_electricjoker}"电箱"{} 之间的',
                    '3 张小丑，最多 3 次，',
                    '尽可能均匀分配',
                    '{C:inactive}(必须同时拥有两者)',
                },
            },
            j_bldstn_safejoker = {
                name = '保险箱',
                text = {
                    '{C:attention}主动:{} 选择最多 3 张 {C:attention}小丑{} 放入保险箱',
                    '{C:inactive}(保险箱内的小丑不',
                    '{C:inactive}强化、不计分、不激活，',
                    '{C:inactive}且不计入小丑限制)',
                },
            },
            j_bldstn_tridentjoker = {
                name = '三叉戟',
                text = {
                    '{X:mult,C:white}X#1#{} 倍数',
                    '每打出一张牌减少 {C:red}1{}',
                    '{C:inactive}(回合结束重置)',
                },
            },
            j_bldstn_lightningstonejoker = {
                name = '闪电石',
                text = {
                    '回合结束时有 {C:green}以 #3# 中的 #2# 概率{}',
                    '获得 {C:money}'.. localize('$') ..'#1#',
                },
            },
            j_bldstn_seastonejoker = {
                name = '海洋石',
                text = {
                    '{C:green}以 #3# 中的 #2# 概率{}',
                    '梅花得分时获得',
                    '{C:chips}+#1#{} 筹码',
                },
            },
            j_bldstn_plasmastonejoker = {
                name = '等离子石',
                text = {
                    '每 {C:attention}2{} 次重投，',
                    '{C:green}以 #3# 中的 #2# 概率{}',
                    '获得 {C:attention}1{} 次免费 {C:green}重投',
                    '{C:inactive}(#1#/2 重投)',
                },
            },
            j_bldstn_rosestonejoker = {
                name = '玫瑰石',
                text = {
                    '{C:green}以 #2# 中的 #1# 概率{}',
                    '出牌后生成 {C:tarot}塔罗{} 牌',
                    '{C:inactive}(需有空间)',
                },
            },
            j_bldstn_sapphirestonejoker = {
                name = '蓝宝石石',
                text = {
                    '{C:green}以 #3# 中的 #2# 概率{}',
                    '当出牌为 {C:hearts}红桃{} 花色时',
                    '获得 {X:chips,C:white} X#1# {} 筹码分数',
                },
            },
            j_bldstn_alwaysluckyjoker = {
                name = '永远幸运',
                text = {
                    '这张牌的所有{C:green,E:1,S:1.1}概率{}',
                    '右边的都{C:attention}被保证',
                },
            },
            j_bldstn_galaxyjoker = {
                name = '{C:bldstn_galaxyg1}银河 {C:bldstn_galaxyg2}小丑',
                text = {
                    '请在评论中告诉我这个小丑可以做些什么',
                    '最好的想法会被添加！',
                    '这个小丑不会出现在游戏中。',
                },
            },
            j_bldstn_blackholejoker = {
                name = '{C:bldstn_blackholeg1}黑{C:bldstn_blackholeg1}洞 {C:bldstn_blackholeg2}小丑',
                text = {
                    '请在评论中告诉我这个小丑可以做些什么',
                    '最好的想法会被添加！',
                    '这个小丑不会出现在游戏中。',
                },
            },
            j_bldstn_supernovajoker = {
                name = '{C:bldstn_supernovag1}超新星 {C:bldstn_supernovag2}小丑',
                text = {
                    '请在评论中告诉我这个小丑可以做些什么',
                    '最好的想法会被添加！',
                    '这个小丑不会出现在游戏中。',
                },
            },
        },
        Tarot = {
            c_bldstn_ajokertarot = {
                name = "笑话",
                text = {
                    "强化的 {C:attention}1{} 选择牌",
                    "转换为",
                    "{C:attention}小丑牌{}",
                }
            },
            c_bldstn_isthisyourcardtarot = {
                name = "这是你的牌吗",
                text = {
                    '强化的 {C:attention}1{} 选择牌',
                    '转换为 {C:green}特性牌{} 并',
                    '增加 {C:green}这是你的牌特性{}',
                }
            },
            c_bldstn_redotarot = {
                name = "重置",
                text = {
                    '重置所有 {C:green}特性{}',
                    '从最多 {C:attention}3{} 个选择的 {C:green}特性牌中',
                }
            },
            c_bldstn_copycattarot = {
                name = "模仿者",
                text = {
                    '强化的 {C:attention}1{} 选择牌',
                    '转换为 {C:green}特性牌{} 并',
                    '增加 {C:green}模仿者特性{}',
                }
            },
            c_bldstn_utopiatarot = {
                name = "乌托邦",
                text = {
                    '{C:attention}盲牌{} 时使用，',
                    '{C:attention}分数需求{} 减半。',
                    '{C:attention}其他任何地方{} 使用，',
                    '获得 {C:money}'.. localize('$') ..'10',
                }
            },
        },
        Spectral = {
            c_bldstn_monsterspectral = {
                name = "怪物",
                text = {
                    "强化的 {C:attention}1{} 选择牌",
                    '转换为 {C:green}特性牌{} 并',
                    '增加 {C:green}怪物特性{}。',
                    '{C:inactive}(仅当牌无 {C:green}天使特性{} 时)',
                }
            },
            c_bldstn_angelspectral = {
                name = "天使",
                text = {
                    "强化的 {C:attention}1{} 选择牌",
                    '转换为 {C:green}特性牌{} 并',
                    '增加 {C:green}天使特性{}。',
                    '{C:inactive}(仅当牌无 {C:green}怪物特性{} 时)',
                }
            },
            c_bldstn_powerspectral = {
                name = "力量",
                text = {
                    "随机生成",
                    "{V:1}力量{C:attention} 小丑{}，",
                    "资金设为 {C:money}$0",
                }
            },
            c_bldstn_voucherspectral = {
                name = "代金券+",
                text = {
                    "随机生成代金券",
                    "在商店中持续到下一个反向",
                }
            },
        },
        Enhanced = {
            m_bldstn_jokercard = {
                name = "小丑牌",
                text = {
                    "视为所有花色",
                    "具有最高强化等级",
                }
            },
            m_bldstn_traitcard = {
                name = "特性牌",
                text = {
                    "{C:green}#1#",
                    "{C:green}#2#",
                    "{C:green}#3#",
                }
            },
            m_bldstn_traitcardinfo = {
                name = "特性牌",
                text = {
                    "向 {C:green}特性牌{} 添加 {C:green}特性{} 以获得",
                    "新的能力！",
                    '{C:inactive}(最多 3 个)',
                }
            },
            m_bldstn_isthisyourcardenhancement = {
                name = "这是你的牌特性",
                text = {
                    "总是首先抽取",
                }
            },
            m_bldstn_monsterenhancement = {
                name = "怪物特性",
                text = {
                    '当出牌中有此 {C:attention}牌{} 和正好 {C:attention}1{} 张其他 {C:attention}牌{} 时，',
                    '吞噬其他 {C:attention}牌{} 并',
                    '获得随机 {C:dark_edition}版本',
                }
            },
            m_bldstn_angelenhancement = {
                name = "天使特性",
                text = {
                    '当只打出此 {C:attention}牌{} 时，',
                    '复制此 {C:attention}牌{} 及随机 {C:dark_edition}版本',
                    '加入牌组',
                }
            },
            m_bldstn_copycatenhancement = {
                name = "模仿者特性",
                text = {
                    '从选中牌组中随机复制一张 {C:attention}牌{}，',
                    '放置于此 {C:attention}牌{} 之上',
                }
            },
        },
    },
}
