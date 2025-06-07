return {
    misc = {
        dictionary = {
            bldstn_inactive_text = "Inactive",
            bldstn_trait_text = 'Trait',
            bldstn_riseangels_text = 'Rise My Angels!',
            bldstn_yum_text = 'Yum!',
            k_bldstn_power = 'Power',
            bldstn_addsafe_text = 'Add to safe',
            bldstn_adddeck_text = 'Add to deck',
            bldstn_safe_text1 = 'Add the joker to it\'s left by pressing \'Add to safe\'',
            bldstn_safe_text2 = 'Add a joker to the deck by selecting it and pressing \'Add to deck\'',
            bldstn_jokers_text = 'Jokers',
            bldstn_draw_text = 'Draw!',
            bldstn_electricbox_spawned = 'Electric Box Spawned!',
            bldstn_scbp_spawned = 'Super Charged Blueprint Spawned!',
            bldstn_activate_text = 'Activate',
            bldstn_ityc_text = 'Is This Your Card',
            bldstn_monster_text = 'Monster',
            bldstn_angel_text = 'Angel',
            bldstn_copycat_text = 'Copycat',
            bldstn_keep_text = 'Keep',
            bldstn_free_reroll = '+1 Free Reroll',
            bldstn_reactive_text = 'Reactive Jokers',
            bldstn_disable_reactive_anim = 'Disable Reactive Animations',
            bldstn_plus_planet = 'Planets',
        },
    },
    descriptions = {
        Joker = {
            j_bldstn_summerjoker = {
                name = 'Summer Joker',
                text = {
                  'Each {C:hearts}Heart{} card held',
                  'in hand gives {X:mult,C:white}X#1#{} Mult',
                },
            },
            j_bldstn_winterjoker = {
                name = 'Winter Joker',
                text = {
                  'All {C:clubs}Club{} cards become',
                  '{C:attention}Glass Cards{}',
                },
            },
            j_bldstn_springjoker = {
                name = 'Spring Joker',
                text = {
                    'If played hand has {C:attention}2{} cards',
                    'and the {C:attention}right card{} is {C:diamonds}Diamond{},',
                    'convert the {C:attention}left{}',
                    '{C:attention}card{} into the {C:attention}right card',
                },
            },
            j_bldstn_autumnjoker = {
                name = 'Autumn Joker',
                text = {
                  'This joker gains {X:mult,C:white}X#1#{} Mult',
                  'for every scored card',
                  'with {C:spades}Spade{} suit',
                  '{C:inactive}(Currently {X:mult,C:white}X#2#{} {C:inactive}Mult)',
                },
            },
            j_bldstn_seasonsjoker = {
                name = 'Seasons Joker',
                text = {
                    'All cards considered all suits',
                    'Cards can\'t be debuffed',
                },
                unlock = {
                    'Discover all 4 seasons jokers'
                },
            },
            j_bldstn_timejoker = {
                name = 'Time Joker',
                text = {
                    'When {C:attention}blind{} is selected,',
                    'set {C:attention}base score requirement{} to {C:attention}base{}',
                    '{C:attention}score requirement{} of {C:attention}2{} {C:attention}antes{} before.',
                },
            },
            j_bldstn_piackacardjoker = {
                name = 'Pick a card, any card',
                text = {
                    '{C:attention}Active:{} Pick a card to draw',
                    '{C:inactive}(Once per round)',
                    '{C:attention}Passive:{} {C:attention}+1{} hand size',
                },
            },
            j_bldstn_onepunchjoker = {
                name = 'One Punch Joker',
                text = {
                    '{C:attention}Active:{} {X:mult,C:white}X#2#{} mult',
                    '{C:inactive}(Once per round)',
                    '{C:inactive}(#1#)',
                    '{C:attention}Passive:{} {X:mult,C:white}X1{} mult',
                },
            },
            j_bldstn_electricjoker = {
                name = 'Electric Box',
                text = {
                    '{C:attention}Active:{} {C:green}#1# in #2#{} chance to',
                    'spawn {V:1}"Super Charged Blueprint"{}',
                    '{C:inactive}(Once per shop)',
                    "\n",
                    '{C:attention}Passive:{} Super Charges',
                    '{V:1, T:j_bldstn_superchargedblueprint}"Super Charged Blueprint"{}',
                },
            },
            j_bldstn_superchargedblueprint = {
                name = 'Super Charged Blueprint',
                text = {
                    '{C:attention}Active:{} {C:green}#1# in #2#{} chance to',
                    'spawn {V:1}"Electric Box"{}',
                    '{C:inactive}(Once per shop)',
                    "\n",
                    '{C:attention}Passive:{} Retrigger up to 3 jokers',
                    'in-between this {C:attention}joker{} and',
                    '{V:1, T:j_bldstn_electricjoker}"Electric Box"{} 3 times, divided',
                    'as equaly as possible',
                    '{C:inactive}(Must have both)',
                },
            },
            j_bldstn_safejoker = {
                name = 'Safe',
                text = {
                    '{C:attention}Active:{} Select up to 3 {C:attention}jokers{}',
                    'to put in the safe',
                    '{C:inactive}(jokers in the safe won\'t',
                    '{C:inactive}scale up, score, activate or',
                    '{C:inactive}count for the joker limit)',
                },
            },
            j_bldstn_tridentjoker = {
                name = 'Trident',
                text = {
                    '{X:mult,C:white}X#1#{} Mult',
                    'Reduces by {C:red}1{}',
                    'after playing a hand',
                    '{C:inactive}(reset at end of round)',
                },
            },
            j_bldstn_lightningstonejoker = {
                name = 'Lightningstone',
                text = {
                    'At end of round {C:green}#3# in #2#{}',
                    'chance to gain {C:money}'.. localize('$') .. '#1#',
                },
            },
            j_bldstn_seastonejoker = {
                name = 'Seastone',
                text = {
                    '{C:green}#3# in #2#{} to gain {C:chips}+#1#{} Chips',
                    'when {C:clubs}Clubs{} is scored'
                },
            },
            j_bldstn_plasmastonejoker = {
                name = 'Plasmastone',
                text = {
                    'Every {C:attention}2{} Rerolls there is',
                    'a {C:green}#3# in #2#{} chance to gain',
                    '{C:attention}1{} free {C:green}Reroll',
                    '{C:inactive}(#1#/2 Rerolls)'
                },
            },
            j_bldstn_rosestonejoker = {
                name = 'Rosestone',
                text = {
                    '{C:green}#2# in #1#{} chance to create a {C:tarot}Tarot',
                    'card after hand played',
                    '{C:inactive}(Must have room)',
                },
            },
            j_bldstn_sapphirestonejoker = {
                name = 'Sapphirestone',
                text = {
                    "{C:green}#3# in #2#{} chance for",
                    "played cards with",
                    "{C:hearts}Heart{} suit to give",
                    "{X:chips,C:white} X#1# {} Chips when scored",
                },
            },
            j_bldstn_alwaysluckyjoker = {
                name = 'Always Lucky',
                text = {
                    'All {C:green,E:1,S:1.1}probabilities{} of the card',
                    'to it\'s right are {C:attention}guaranteed',
                },
            },
            j_bldstn_galaxyjoker = {
                name = '{C:bldstn_galaxyg1}Galaxy {C:bldstn_galaxyg2}Joker',
                text = {
                    'Give me some ideas for what this joker can do',
                    'in the comments, and the best one will be {C:attention}added!',
                    '{C:inactive}This joker doesn\'t apear in game.',
                },
            },
            j_bldstn_blackholejoker = {
                name = '{C:bldstn_blackholeg1}Black{C:bldstn_blackholeg1}Hole {C:bldstn_blackholeg2}Joker',
                text = {
                    'Give me some ideas for what this joker can do',
                    'in the comments, and the best one will be {C:attention}added!',
                    '{C:inactive}This joker doesn\'t apear in game.',
                },
            },
            j_bldstn_supernovajoker = {
                name = '{C:bldstn_supernovag1}Supernova {C:bldstn_supernovag2}Joker',
                text = {
                    'Give me some ideas for what this joker can do',
                    'in the comments, and the best one will be {C:attention}added!',
                    '{C:inactive}This joker doesn\'t apear in game.',
                },
            },
        },
        Tarot = {
            c_bldstn_ajokertarot = {
                name = "A Joke",
                text = {
                    "Enhanced {C:attention}1{} selected",
                    "card to a",
                    "{C:attention}Joker card",
                }
            },
            c_bldstn_isthisyourcardtarot = {
                name = "Is This Your Card",
                text = {
                    'Enhances {C:attention}1{} selected card',
                    'to a {C:green}Trait card{} and',
                    'adds {C:green}Is This Your Card Trait{}',
                }
            },
            c_bldstn_redotarot = {
                name = "Redo",
                text = {
                    'Reset all {C:green}traits{} on up',
                    'to {C:attention}3{} selected {C:green}Trait cards',
                }
            },
            c_bldstn_copycattarot = {
                name = "Copycat",
                text = {
                    'Enhances {C:attention}1{} selected card',
                    'to a {C:green}Trait card{} and',
                    'adds {C:green}Copycat Trait{}',
                }
            },
            c_bldstn_utopiatarot = {
                name = "Utopia",
                text = {
                    'If used while in a {C:attention}blind{},',
                    'halve the {C:attention}score requirement{}.',
                    'If used anywhere {C:attention}else{},',
                    'gain {C:money}'.. localize('$') ..'10',
                }
            },
        },
        Spectral = {
            c_bldstn_monsterspectral = {
                name = "Monster",
                text = {
                    "Enhances {C:attention}1{} selected card",
                    "to a {C:green}Trait card{} and",
                    "adds {C:green}Monster Trait{}.",
                    "{C:inactive}(Only if card doesn\'t",
                    "{C:inactive}have {C:green}Angel Trait{}{C:inactive})",
                }
            },
            c_bldstn_angelspectral = {
                name = "Angel",
                text = {
                    "Enhances {C:attention}1{} selected card",
                    "to a {C:green}Trait card{} and",
                    "adds {C:green}Angel Trait{}.",
                    "{C:inactive}(Only if card doesn\'t",
                    "{C:inactive}have {C:green}Monster Trait{}{C:inactive})",
                }
            },
            c_bldstn_powerspectral = {
                name = "Power",
                text = {
                    "Creates a random",
                    "{V:1}Power{C:attention} Joker{},",
                    "sets money to {C:money}$0",
                }
            },
            c_bldstn_voucherspectral = {
                name = "Voucher+",
                text = {
                    "Spawns a random voucher",
                    "in shop, until next ante",
                }
            },
        },
        Enhanced = {
            m_bldstn_jokercard = {
                name = "Joker Card",
                text = {
                    "Counts as all suits and",
                    "highest highlighted rank",
                }
            },
            m_bldstn_traitcard = {
                name = "Trait Card",
                text = {
                    "{C:green}#1#",
                    "{C:green}#2#",
                    "{C:green}#3#",
                }
            },
            m_bldstn_traitcardinfo = {
                name = "Trait Card",
                text = {
                    "Add {C:green}traits{} to {C:green}Trait cards",
                    "to gain new abilities!",
                    '{C:inactive}(3 max)',
                }
            },
            m_bldstn_isthisyourcardenhancement = {
                name = "Is This Your Card Trait",
                text = {
                    "Always drawn first",
                }
            },
            m_bldstn_monsterenhancement = {
                name = "Monster Trait",
                text = {
                    'If played hand contains this',
                    '{C:attention}card{} and exactly {C:attention}1{} other {C:attention}card,',
                    'eat the other {C:attention}card{} and',
                    'gain a random {C:dark_edition}edition',
                }
            },
            m_bldstn_angelenhancement = {
                name = "Angel Trait",
                text = {
                    'If only this {C:attention}card{} is',
                    'played, {C:attention}copy{} this {C:attention}card{}',
                    'into your deck with a random {C:dark_edition}edition',
                }
            },
            m_bldstn_copycatenhancement = {
                name = "Copycat Trait",
                text = {
                    'Copies {C:attention}rank{}, {C:attention}suit{},',
                    '{C:dark_edition}edition{} and {C:attention}seal{} of the',
                    '{C:attention}card{} to it\'s right when played',
                }
            },
        },
    },
}