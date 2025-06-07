--Straight out of chat gpt so blame it for any mistakes

return {
    misc = {
        dictionary = {
            bldstn_inactive_text = "Неактивно",
            bldstn_trait_text = 'Черта',
            bldstn_riseangels_text = 'Встаньте, ангелы!',
            bldstn_yum_text = 'Вкусно!',
            k_bldstn_power = 'Сила',
            bldstn_addsafe_text = 'Добавить в безопасное место',
            bldstn_adddeck_text = 'Добавить в колоду',
            bldstn_safe_text1 = 'Добавьте джокера слева от него, нажав «Добавить в безопасное место»',
            bldstn_safe_text2 = 'Добавьте джокера в колоду, выбрав его и нажав «Добавить в колоду»',
            bldstn_jokers_text = 'Джокеры',
            bldstn_draw_text = 'Вытянуть!',
            bldstn_electricbox_spawned = 'Электрическая коробка создана!',
            bldstn_scbp_spawned = 'Создан чертеж с суперзарядом!',
            bldstn_activate_text = 'Активировать',
            bldstn_ityc_text = 'Это ваша карта?',
            bldstn_monster_text = 'Монстр',
            bldstn_angel_text = 'Ангел',
            bldstn_copycat_text = 'Копия',
            bldstn_keep_text = 'Оставить',
            bldstn_free_reroll = '+1 бесплатный переброс',
            bldstn_reactive_text = 'Реактивные Джокеры',
            bldstn_disable_reactive_anim = 'Отключить Реактивные Анимации',
            bldstn_plus_planet = 'Планеты',
        },
    },
    descriptions = {
        Joker = {
            j_bldstn_summerjoker = {
                name = 'Летний джокер',
                text = {
                  'Каждая карта {C:hearts}Черви{} в руке дает',
                  '{X:mult,C:white}X#1#{} множитель',
                },
            },
            j_bldstn_winterjoker = {
                name = 'Зимний джокер',
                text = {
                  'Все карты {C:clubs}Трефы{} становятся',
                  '{C:attention}Стеклянными картами{}',
                },
            },
            j_bldstn_springjoker = {
                name = 'Весенний джокер',
                text = {
                    'Если сыгранная рука содержит {C:attention}2{} карты',
                    'и {C:attention}правая карта{} является {C:diamonds}Бубна{},',
                    'преобразовать {C:attention}левую карту{} в {C:attention}правую карту',
                },
            },
            j_bldstn_autumnjoker = {
                name = 'Осенний джокер',
                text = {
                  'Этот джокер получает {X:mult,C:white}X#1#{} множитель',
                  'за каждую оцененную карту',
                  'с мастью {C:spades}Пики{}',
                  '{C:inactive}(В настоящее время {X:mult,C:white}X#2#{} {C:inactive}множитель)',
                },
            },
            j_bldstn_seasonsjoker = {
                name = 'Джокер сезонов',
                text = {
                    'Все карты считаются всеми мастями',
                    'Карты не могут быть ослаблены',
                },
                unlock = {
                    'Откройте все 4 джокера сезонов'
                },
            },
            j_bldstn_timejoker = {
                name = 'Джокер времени',
                text = {
                    'Когда выбрана {C:attention}слепая карта{},',
                    'установите {C:attention}базовое требование по очкам{} на {C:attention}базовое{}',
                    '{C:attention}требование по очкам{} на {C:attention}2{} {C:attention}анте{} раньше.',
                },
            },
            j_bldstn_piackacardjoker = {
                name = 'Выберите карту, любую карту',
                text = {
                    '{C:attention}Активно:{} Выберите карту для вытягивания',
                    '{C:inactive}(Один раз за раунд)',
                    '{C:attention}Пассивно:{} {C:attention}+1{} размер руки',
                },
            },
            j_bldstn_onepunchjoker = {
                name = 'Джокер одного удара',
                text = {
                    '{C:attention}Активно:{} {X:mult,C:white}X#2#{} множитель',
                    '{C:inactive}(Один раз за раунд)',
                    '{C:inactive}(#1#)',
                    '{C:attention}Пассивно:{} {X:mult,C:white}X1{} множитель',
                },
            },
            j_bldstn_electricjoker = {
                name = 'Электрическая коробка',
                text = {
                    '{C:attention}Активно:{} {C:green}#1# из #2#{} шанса',
                    'создать {V:1}"Суперзаряженный чертеж"{}',
                    '{C:inactive}(Один раз за магазин)',
                    "\n",
                    '{C:attention}Пассивно:{} Суперзаряжается',
                    '{V:1, T:j_bldstn_superchargedblueprint}"Суперзаряженный чертеж"{}',
                },
            },
            j_bldstn_superchargedblueprint = {
                name = 'Суперзаряженный чертеж',
                text = {
                    '{C:attention}Активно:{} {C:green}#1# из #2#{} шанса',
                    'создать {V:1}"Электрическую коробку"{}',
                    '{C:inactive}(Один раз за магазин)',
                    "\n",
                    '{C:attention}Пассивно:{} Перезапуск до 3 джокеров',
                    'между этим {C:attention}джокером{} и',
                    '{V:1, T:j_bldstn_electricjoker}"Электрической коробкой"{} 3 раза, разделить',
                    'на столько равных частей, насколько возможно',
                    '{C:inactive}(Должны быть оба)',
                },
            },
            j_bldstn_safejoker = {
                name = 'Сейф',
                text = {
                    '{C:attention}Активно:{} Выберите до 3 {C:attention}джокеров{}',
                    'для помещения в сейф',
                    '{C:inactive}(Джокеры в сейфе не будут',
                    '{C:inactive}увеличиваться, оцениваться, активироваться или',
                    '{C:inactive}учитываться в лимите джокеров)',
                },
            },
            j_bldstn_tridentjoker = {
                name = 'Трезубец',
                text = {
                    '{X:mult,C:white}X#1#{} множитель',
                    'Уменьшается на {C:red}1{}',
                    'после игры руки',
                    '{C:inactive}(Сброс в конце раунда)',
                },
            },
            j_bldstn_lightningstonejoker = {
                name = 'Грозовой Камень',
                text = {
                    'В конце раунда шанс {C:green}#3# из #2#{}',
                    'получить {C:money}'.. localize('$') .. '#1#',
                },
            },
            j_bldstn_seastonejoker = {
                name = 'Морской Камень',
                text = {
                    '{C:green}#3# из #2#{} шанс получить {C:chips}+#1#{} фишек',
                    'при наборе {C:clubs}Треф{}'
                },
            },
            j_bldstn_plasmastonejoker = {
                name = 'Плазменный Камень',
                text = {
                    'Каждые {C:attention}2{} переброса есть',
                    '{C:green}#3# из #2#{} шанс получить',
                    '{C:attention}1{} бесплатный {C:green}переброс',
                    '{C:inactive}(#1#/2 перебросов)'
                },
            },
            j_bldstn_rosestonejoker = {
                name = 'Розовый Камень',
                text = {
                    '{C:green}#2# из #1#{} шанс создать {C:tarot}Карту Таро',
                    'после розыгрыша руки',
                    '{C:inactive}(Должно быть место)',
                },
            },
            j_bldstn_sapphirestonejoker = {
                name = 'Сапфировый Камень',
                text = {
                    "{C:green}#3# из #2#{} шанс, что",
                    "сыгранные карты с",
                    "{C:hearts}Черви{} дадут",
                    "{X:chips,C:white} X#1# {} Фишек при подсчёте очков",
                },
            },
            j_bldstn_alwaysluckyjoker = {
                name = 'Всегда везучий',
                text = {
                    'Все {C:green,E:1,S:1.1}вероятности{} карты',
                    'справа от неё {C:attention}гарантированы',
                },
            },
            j_bldstn_galaxyjoker = {
                name = '{C:bldstn_galaxyg1}Галактический {C:bldstn_galaxyg2}Джокер',
                text = {
                    'Предложите идеи, что этот джокер может делать',
                    'в комментариях, и лучшая будет добавлена!',
                    'Этот джокер не появляется в игре.',
                },
            },
            j_bldstn_blackholejoker = {
                name = '{C:bldstn_blackholeg1}Чёрная{C:bldstn_blackholeg1}Дыра {C:bldstn_blackholeg2}Джокер',
                text = {
                    'Предложите идеи, что этот джокер может делать',
                    'в комментариях, и лучшая будет добавлена!',
                    'Этот джокер не появляется в игре.',
                },
            },
            j_bldstn_supernovajoker = {
                name = '{C:bldstn_supernovag1}Сверхновая {C:bldstn_supernovag2}Джокер',
                text = {
                    'Предложите идеи, что этот джокер может делать',
                    'в комментариях, и лучшая будет добавлена!',
                    'Этот джокер не появляется в игре.',
                },
            },
        },
        Tarot = {
            c_bldstn_ajokertarot = {
                name = "Шутка",
                text = {
                    "Улучшает {C:attention}1{} выбранную карту",
                    "в карту {C:attention}Джокер",
                }
            },
            c_bldstn_isthisyourcardtarot = {
                name = "Это ваша карта?",
                text = {
                    'Улучшает {C:attention}1{} выбранную карту',
                    'в карту {C:green}Черта{} и',
                    'добавляет {C:green}Черту "Это ваша карта?"{}',
                }
            },
            c_bldstn_redotarot = {
                name = "Переделать",
                text = {
                    'Сбрасывает все {C:green}черты{} до',
                    '3 выбранных карт {C:green}Черта{}',
                }
            },
            c_bldstn_copycattarot = {
                name = "Копия",
                text = {
                    'Улучшает {C:attention}1{} выбранную карту',
                    'в карту {C:green}Черта{} и',
                    'добавляет {C:green}Черту Копия{}',
                }
            },
            c_bldstn_utopiatarot = {
                name = "Утопия",
                text = {
                    'Если используется в {C:attention}слепой{},',
                    'сократить вдвое {C:attention}требование к счету{}. ',
                    'Если используется в {C:attention}другом случае{},',
                    'получите {C:money}'.. localize('$') ..'10',
                }
            },
        },
        Spectral = {
            c_bldstn_monsterspectral = {
                name = "Монстр",
                text = {
                    "Улучшает {C:attention}1{} выбранную карту",
                    "в карту {C:green}Черта{} и",
                    "добавляет {C:green}Черту Монстр{}. ",
                    "{C:inactive}(Только если карта не имеет",
                    "{C:inactive}черты {C:green}Ангел{}{})",
                }
            },
            c_bldstn_angelspectral = {
                name = "Ангел",
                text = {
                    "Улучшает {C:attention}1{} выбранную карту",
                    "в карту {C:green}Черта{} и",
                    "добавляет {C:green}Черту Ангел{}. ",
                    "{C:inactive}(Только если карта не имеет",
                    "{C:inactive}черты {C:green}Монстр{}{})",
                }
            },
            c_bldstn_powerspectral = {
                name = "Сила",
                text = {
                    "Создаёт случайного",
                    "{V:1}Джокера Силы{C:attention}{},",
                    "устанавливает деньги на {C:money}$0",
                }
            },
            c_bldstn_voucherspectral = {
                name = "Купон+",
                text = {
                    "Создаёт случайный купон",
                    "в магазине до следующей ставки",
                }
            },
        },
        Enhanced = {
            m_bldstn_jokercard = {
                name = "Карта Джокер",
                text = {
                    "Считается за все масти и",
                    "самый высокий выделенный ранг",
                }
            },
            m_bldstn_traitcard = {
                name = "Карта Черты",
                text = {
                    "{C:green}#1#",
                    "{C:green}#2#",
                    "{C:green}#3#",
                }
            },
            m_bldstn_traitcardinfo = {
                name = "Карта Черты",
                text = {
                    "Добавляйте {C:green}черты{} к картам {C:green}Черта",
                    "для получения новых способностей!",
                    '{C:inactive}(Максимум 3)',
                }
            },
            m_bldstn_isthisyourcardenhancement = {
                name = "Черта 'Это ваша карта?'",
                text = {
                    "Всегда вытягивается первой",
                }
            },
            m_bldstn_monsterenhancement = {
                name = "Черта Монстра",
                text = {
                    'Если сыгранная рука содержит эту',
                    '{C:attention}карту{} и ровно {C:attention}1{} другую {C:attention}карту,',
                    'съесть другую {C:attention}карту{} и',
                    'получить случайную {C:dark_edition}редакцию',
                }
            },
            m_bldstn_angelenhancement = {
                name = "Черта Ангела",
                text = {
                    'Если эта {C:attention}карта{} единственная',
                    'в руке, {C:attention}копировать{} эту {C:attention}карту{}',
                    'в вашу колоду с случайной {C:dark_edition}редакцией',
                }
            },
            m_bldstn_copycatenhancement = {
                name = "Черта Копия",
                text = {
                    'Копирует {C:attention}ранг{}, {C:attention}масть{},',
                    '{C:dark_edition}редакцию{} и {C:attention}печать{} карты',
                    'справа от нее, когда она сыграна',
                }
            },
        },
    },
}