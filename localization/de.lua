--Straight out of chat gpt so blame it for any mistakes

return {
    misc = {
        dictionary = {
            bldstn_inactive_text = "Inactief",
            bldstn_trait_text = 'Eigenschap',
            bldstn_riseangels_text = 'Sta op, mijn Engelen!',
            bldstn_yum_text = 'Jammie!',
            k_bldstn_power = 'Kracht',
            bldstn_addsafe_text = 'Toevoegen aan kluis',
            bldstn_adddeck_text = 'Toevoegen aan deck',
            bldstn_safe_text1 = 'Voeg de joker toe aan de linkerzijde door op \'Toevoegen aan kluis\' te drukken',
            bldstn_safe_text2 = 'Voeg een joker toe aan het deck door deze te selecteren en op \'Toevoegen aan deck\' te drukken',
            bldstn_jokers_text = 'Jokers',
            bldstn_draw_text = 'Trekken!',
            bldstn_electricbox_spawned = 'Elektrische Doos gegenereerd!',
            bldstn_scbp_spawned = 'Super Oplaadbare Blueprint gegenereerd!',
            bldstn_activate_text = 'Activeren',
            bldstn_ityc_text = 'Is dit jouw kaart?',
            bldstn_monster_text = 'Monster',
            bldstn_angel_text = 'Engel',
            bldstn_copycat_text = 'Kopieerkat',
            bldstn_keep_text = 'Bewaren',
            bldstn_free_reroll = '+1 Gratis Herrol',
            bldstn_reactive_text = 'Reactieve Jokers',
            bldstn_disable_reactive_anim = 'Reactieve Animaties Uitschakelen',
            bldstn_plus_planet = 'Planeten',
        },
    },
    descriptions = {
        Joker = {
            j_bldstn_summerjoker = {
                name = 'Zomer Joker',
                text = {
                  'Elke {C:hearts}Hart{} kaart in de hand geeft',
                  '{X:mult,C:white}X#1#{} Vermenigvuldiging',
                },
            },
            j_bldstn_winterjoker = {
                name = 'Winter Joker',
                text = {
                  'Alle {C:clubs}Klaver{} kaarten worden',
                  '{C:attention}Glazen Kaarten{}',
                },
            },
            j_bldstn_springjoker = {
                name = 'Lente Joker',
                text = {
                    'Als de gespeelde hand {C:attention}2{} kaarten bevat',
                    'en de {C:attention}rechte kaart{} een {C:diamonds}Ruit{} is,',
                    'zet de {C:attention}linker kaart{} om in de {C:attention}rechte kaart{}',
                },
            },
            j_bldstn_autumnjoker = {
                name = 'Herfst Joker',
                text = {
                  'Deze joker krijgt {X:mult,C:white}X#1#{} Vermenigvuldiging',
                  'voor elke gescoorde kaart',
                  'met {C:spades}Schoppen{} als symbool',
                  '{C:inactive}(Momenteel {X:mult,C:white}X#2#{} {C:inactive}Vermenigvuldiging)',
                },
            },
            j_bldstn_seasonsjoker = {
                name = 'Seizoenen Joker',
                text = {
                    'Alle kaarten worden beschouwd als alle symbolen',
                    'Kaarten kunnen niet worden verzwakt',
                },
                unlock = {
                    'Ontdek alle 4 seizoenen jokers'
                },
            },
            j_bldstn_timejoker = {
                name = 'Tijd Joker',
                text = {
                    'Wanneer {C:attention}blind{} wordt geselecteerd,',
                    'stel het {C:attention}basis score vereiste{} in op {C:attention}basis{}',
                    '{C:attention}score vereiste{} van {C:attention}2{} {C:attention}antes{} eerder.',
                },
            },
            j_bldstn_piackacardjoker = {
                name = 'Kies een kaart, welke kaart dan ook',
                text = {
                    '{C:attention}Actief:{} Kies een kaart om te trekken',
                    '{C:inactive}(Een keer per ronde)',
                    '{C:attention}Passief:{} {C:attention}+1{} handgrootte',
                },
            },
            j_bldstn_onepunchjoker = {
                name = 'One Punch Joker',
                text = {
                    '{C:attention}Actief:{} {X:mult,C:white}X#2#{} vermenigvuldiging',
                    '{C:inactive}(Een keer per ronde)',
                    '{C:inactive}(#1#)',
                    '{C:attention}Passief:{} {X:mult,C:white}X1{} vermenigvuldiging',
                },
            },
            j_bldstn_electricjoker = {
                name = 'Elektrische Doos',
                text = {
                    '{C:attention}Actief:{} {C:green}#1# in #2#{} kans om',
                    'te genereren {V:1}"Super Oplaadbare Blueprint"{}',
                    '{C:inactive}(Een keer per winkel)',
                    "\n",
                    '{C:attention}Passief:{} Super Oplaadt',
                    '{V:1, T:j_bldstn_superchargedblueprint}"Super Oplaadbare Blueprint"{}',
                },
            },
            j_bldstn_superchargedblueprint = {
                name = 'Super Oplaadbare Blueprint',
                text = {
                    '{C:attention}Actief:{} {C:green}#1# in #2#{} kans om',
                    'te genereren {V:1}"Elektrische Doos"{}',
                    '{C:inactive}(Een keer per winkel)',
                    "\n",
                    '{C:attention}Passief:{} Heractiveer tot 3 jokers',
                    'tussen deze {C:attention}joker{} en',
                    '{V:1, T:j_bldstn_electricjoker}"Elektrische Doos"{} 3 keer, verdeeld',
                    'zo gelijk mogelijk',
                    '{C:inactive}(Beide moeten aanwezig zijn)',
                },
            },
            j_bldstn_safejoker = {
                name = 'Kluis',
                text = {
                    '{C:attention}Actief:{} Selecteer tot 3 {C:attention}jokers{}',
                    'om in de kluis te plaatsen',
                    '{C:inactive}(Jokers in de kluis zullen niet',
                    '{C:inactive}vergroten, scoren, activeren of',
                    '{C:inactive}meegerekend worden voor de joker limiet)',
                },
            },
            j_bldstn_tridentjoker = {
                name = 'Drietand',
                text = {
                    '{X:mult,C:white}X#1#{} Vermenigvuldiging',
                    'Vermindert met {C:red}1{}',
                    'na het spelen van een hand',
                    '{C:inactive}(reset aan het einde van de ronde)',
                },
            },
            j_bldstn_lightningstonejoker = {
                name = 'Bliksemsteen',
                text = {
                    'Aan het einde van de ronde {C:green}#3# op #2#{}',
                    'kans om {C:money}'.. localize('$') .. '#1# te krijgen',
                },
            },
            j_bldstn_seastonejoker = {
                name = 'Zee steen',
                text = {
                    '{C:green}#3# op #2#{} kans om {C:chips}+#1#{} Chips te krijgen',
                    'wanneer {C:clubs}Klavers{} wordt gescoord'
                },
            },
            j_bldstn_plasmastonejoker = {
                name = 'Plasmasteen',
                text = {
                    'Elke {C:attention}2{} Herrollen is er',
                    'een {C:green}#3# op #2#{} kans om te krijgen',
                    '{C:attention}1{} gratis {C:green}Herrol',
                    '{C:inactive}(#1#/2 Herrollen)'
                },
            },
            j_bldstn_rosestonejoker = {
                name = 'Rozensteen',
                text = {
                    '{C:green}#2# op #1#{} kans om een {C:tarot}Tarotkaart te maken',
                    'na het spelen van een hand',
                    '{C:inactive}(Moet ruimte hebben)',
                },
            },
            j_bldstn_sapphirestonejoker = {
                name = 'Saffiersteen',
                text = {
                    "{C:green}#3# op #2#{} kans dat",
                    "gespeelde kaarten met",
                    "{C:hearts}Harten{} geven",
                    "{X:chips,C:white} X#1# {} Chips bij score",
                },
            },
            j_bldstn_alwaysluckyjoker = {
                name = 'Altijd Gelukkig',
                text = {
                    'Alle {C:green,E:1,S:1.1}kansen{} van de kaart',
                    'rechts ervan zijn {C:attention}gegarandeerd',
                },
            },
            j_bldstn_galaxyjoker = {
                name = '{C:bldstn_galaxyg1}Galaxy {C:bldstn_galaxyg2}Joker',
                text = {
                    'Geef me wat ideeën over wat deze joker kan doen',
                    'in de reacties, en de beste wordt toegevoegd!',
                    'Deze joker verschijnt niet in het spel.',
                },
            },
            j_bldstn_blackholejoker = {
                name = '{C:bldstn_blackholeg1}Zwart{C:bldstn_blackholeg1}Gat {C:bldstn_blackholeg2}Joker',
                text = {
                    'Geef me wat ideeën over wat deze joker kan doen',
                    'in de reacties, en de beste wordt toegevoegd!',
                    'Deze joker verschijnt niet in het spel.',
                },
            },
            j_bldstn_supernovajoker = {
                name = '{C:bldstn_supernovag1}Supernova {C:bldstn_supernovag2}Joker',
                text = {
                    'Geef me wat ideeën over wat deze joker kan doen',
                    'in de reacties, en de beste wordt toegevoegd!',
                    'Deze joker verschijnt niet in het spel.',
                },
            },
        },
        Tarot = {
            c_bldstn_ajokertarot = {
                name = "Een Grap",
                text = {
                    "Versterk {C:attention}1{} geselecteerde kaart",
                    "naar een {C:attention}Joker kaart",
                }
            },
            c_bldstn_isthisyourcardtarot = {
                name = "Is dit jouw kaart?",
                text = {
                    'Versterkt {C:attention}1{} geselecteerde kaart',
                    'naar een {C:green}Eigenschap kaart{} en',
                    'voegt {C:green}Eigenschap Is dit jouw kaart?{} toe',
                }
            },
            c_bldstn_redotarot = {
                name = "Opnieuw",
                text = {
                    'Reset alle {C:green}eigenschappen{} tot',
                    'maximaal {C:attention}3{} geselecteerde {C:green}Eigenschap kaarten',
                }
            },
            c_bldstn_copycattarot = {
                name = "Kopieerkat",
                text = {
                    'Versterkt {C:attention}1{} geselecteerde kaart',
                    'naar een {C:green}Eigenschap kaart{} en',
                    'voegt {C:green}Eigenschap Kopieerkat{} toe',
                }
            },
            c_bldstn_utopiatarot = {
                name = "Utopia",
                text = {
                    'Als gebruikt tijdens een {C:attention}blind{},',
                    'halveer de {C:attention}scorevereiste{}. ',
                    'Als gebruikt ergens {C:attention}anders{},',
                    'ontvang {C:money}'.. localize('$') ..'10',
                }
            },
        },
        Spectral = {
            c_bldstn_monsterspectral = {
                name = "Monster",
                text = {
                    "Versterkt {C:attention}1{} geselecteerde kaart",
                    "naar een {C:green}Eigenschap kaart{} en",
                    "voegt {C:green}Eigenschap Monster{} toe.",
                    "{C:inactive}(Alleen als de kaart niet",
                    "{C:inactive}de {C:green}Eigenschap Engel{} heeft)",
                }
            },
            c_bldstn_angelspectral = {
                name = "Engel",
                text = {
                    "Versterkt {C:attention}1{} geselecteerde kaart",
                    "naar een {C:green}Eigenschap kaart{} en",
                    "voegt {C:green}Eigenschap Engel{} toe.",
                    "{C:inactive}(Alleen als de kaart niet",
                    "{C:inactive}de {C:green}Eigenschap Monster{} heeft)",
                }
            },
            c_bldstn_powerspectral = {
                name = "Kracht",
                text = {
                    "Maakt een willekeurige",
                    "{V:1}Kracht Joker{C:attention} aan{},",
                    "stelt geld in op {C:money}$0",
                }
            },
            c_bldstn_voucherspectral = {
                name = "Voucher+",
                text = {
                    "Laat een willekeurige voucher verschijnen",
                    "in de winkel, tot de volgende inzet",
                }
            },
        },
        Enhanced = {
            m_bldstn_jokercard = {
                name = "Joker Kaart",
                text = {
                    "Telt als alle symbolen en",
                    "de hoogste gemarkeerde rang",
                }
            },
            m_bldstn_traitcard = {
                name = "Eigenschap Kaart",
                text = {
                    "{C:green}#1#",
                    "{C:green}#2#",
                    "{C:green}#3#",
                }
            },
            m_bldstn_traitcardinfo = {
                name = "Eigenschap Kaart",
                text = {
                    "Voeg {C:green}eigenschappen{} toe aan {C:green}Eigenschap kaarten",
                    "om nieuwe vaardigheden te verkrijgen!",
                    '{C:inactive}(maximaal 3)',
                }
            },
            m_bldstn_isthisyourcardenhancement = {
                name = "Eigenschap Is dit jouw kaart?",
                text = {
                    "Altijd eerst getrokken",
                }
            },
            m_bldstn_monsterenhancement = {
                name = "Eigenschap Monster",
                text = {
                    'Als de gespeelde hand deze kaart bevat',
                    '{C:attention}en precies {C:attention}1{} andere {C:attention}kaart,',
                    'eet de andere {C:attention}kaart{} en',
                    'krijg een willekeurige {C:dark_edition}editie',
                }
            },
            m_bldstn_angelenhancement = {
                name = "Eigenschap Engel",
                text = {
                    'Als alleen deze {C:attention}kaart{} is',
                    'gespeeld, {C:attention}kopieer{} deze {C:attention}kaart{}',
                    'in je deck met een willekeurige {C:dark_edition}editie',
                }
            },
            m_bldstn_copycatenhancement = {
                name = "Eigenschap Kopieerkat",
                text = {
                    'Kopieer {C:attention}rang{}, {C:attention}symbool{},',
                    '{C:dark_edition}editie{} en {C:attention}zegel{} van de',
                    '{C:attention}kaart{} aan de rechterkant wanneer gespeeld',
                }
            },
        },
    },
}