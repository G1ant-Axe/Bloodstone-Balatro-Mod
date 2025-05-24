--Straight out of chat gpt so blame it for any mistakes

return {
    misc = {
        dictionary = {
            bldstn_inactive_text = "Inactif",
            bldstn_trait_text = 'Caractéristique',
            bldstn_riseangels_text = 'Levez-vous, mes Anges !',
            bldstn_yum_text = 'Miam !',
            k_bldstn_power = 'Puissance',
            bldstn_addsafe_text = 'Ajouter à la sécurité',
            bldstn_adddeck_text = 'Ajouter au deck',
            bldstn_safe_text1 = 'Ajoutez le joker à sa gauche en appuyant sur \'Ajouter à la sécurité\'',
            bldstn_safe_text2 = 'Ajoutez un joker au deck en le sélectionnant et en appuyant sur \'Ajouter au deck\'',
            bldstn_jokers_text = 'Jokers',
            bldstn_draw_text = 'Tirer !',
            bldstn_electricbox_spawned = 'Boîte Électrique Générée !',
            bldstn_scbp_spawned = 'Plan Super Chargé Généré !',
            bldstn_activate_text = 'Activer',
            bldstn_ityc_text = 'Est-ce votre carte ?',
            bldstn_monster_text = 'Monstre',
            bldstn_angel_text = 'Ange',
            bldstn_copycat_text = 'Copieur',
            bldstn_keep_text = 'Garder',
        },
    },
    descriptions = {
        Joker = {
            j_bldstn_summerjoker = {
                name = 'Joker d\'été',
                text = {
                  'Chaque carte {C:hearts}Cœur{} en main donne',
                  '{X:mult,C:white}X#1#{} Multiplicateur',
                },
            },
            j_bldstn_winterjoker = {
                name = 'Joker d\'hiver',
                text = {
                  'Toutes les cartes {C:clubs}Trèfle{} deviennent',
                  '{C:attention}Cartes en verre{}',
                },
            },
            j_bldstn_springjoker = {
                name = 'Joker de printemps',
                text = {
                    'Si la main jouée contient {C:attention}2{} cartes',
                    'et que la {C:attention}carte de droite{} est un {C:diamonds}Carreau{},',
                    'convertir la {C:attention}carte de gauche{} en la {C:attention}carte de droite',
                },
            },
            j_bldstn_autumnjoker = {
                name = 'Joker d\'automne',
                text = {
                  'Ce joker gagne {X:mult,C:white}X#1#{} Multiplicateur',
                  'pour chaque carte marquée',
                  'avec l\'atout {C:spades}Pique{}',
                  '{C:inactive}(Actuellement {X:mult,C:white}X#2#{} {C:inactive}Multiplicateur)',
                },
            },
            j_bldstn_seasonsjoker = {
                name = 'Joker des saisons',
                text = {
                    'Toutes les cartes sont considérées comme tous les atouts',
                    'Les cartes ne peuvent pas être affaiblies',
                },
                unlock = {
                    'Découvrez tous les 4 jokers des saisons'
                },
            },
            j_bldstn_timejoker = {
                name = 'Joker du temps',
                text = {
                    'Lorsque {C:attention}aveugle{} est sélectionné,',
                    'réglez l\'{C:attention}exigence de score de base{} à {C:attention}base{}',
                    '{C:attention}exigence de score{} de {C:attention}2{} {C:attention}antes{} précédemment.',
                },
            },
            j_bldstn_piackacardjoker = {
                name = 'Choisissez une carte, n\'importe quelle carte',
                text = {
                    '{C:attention}Actif:{} Choisissez une carte à tirer',
                    '{C:inactive}(Une fois par tour)',
                    '{C:attention}Passif:{} {C:attention}+1{} taille de main',
                },
            },
            j_bldstn_onepunchjoker = {
                name = 'Joker One Punch',
                text = {
                    '{C:attention}Actif:{} {X:mult,C:white}X#2#{} multiplicateur',
                    '{C:inactive}(Une fois par tour)',
                    '{C:inactive}(#1#)',
                    '{C:attention}Passif:{} {X:mult,C:white}X1{} multiplicateur',
                },
            },
            j_bldstn_electricjoker = {
                name = 'Boîte électrique',
                text = {
                    '{C:attention}Actif:{} {C:green}1 sur #2#{} chance de',
                    'générer {V:1}"Plan super chargé"{}',
                    '{C:inactive}(Une fois par magasin)',
                    "\n",
                    '{C:attention}Passif:{} Super charge',
                    '{V:1, T:j_bldstn_superchargedblueprint}"Plan super chargé"{}',
                },
            },
            j_bldstn_superchargedblueprint = {
                name = 'Plan super chargé',
                text = {
                    '{C:attention}Actif:{} {C:green}1 sur #2#{} chance de',
                    'générer {V:1}"Boîte électrique"{}',
                    '{C:inactive}(Une fois par magasin)',
                    "\n",
                    '{C:attention}Passif:{} Réactive jusqu\'à 3 jokers',
                    'entre ce {C:attention}joker{} et',
                    '{V:1, T:j_bldstn_electricjoker}"Boîte électrique"{} 3 fois, réparti',
                    'aussi équitablement que possible',
                    '{C:inactive}(Doit avoir les deux)',
                },
            },
            j_bldstn_safejoker = {
                name = 'Coffre',
                text = {
                    '{C:attention}Actif:{} Sélectionnez jusqu\'à 3 {C:attention}jokers{}',
                    'à mettre dans le coffre',
                    '{C:inactive}(Les jokers dans le coffre ne seront pas',
                    '{C:inactive}augmentés, comptabilisés, activés ou',
                    '{C:inactive}pris en compte pour la limite de jokers)',
                },
            },
            j_bldstn_tridentjoker = {
                name = 'Trident',
                text = {
                    '{X:mult,C:white}X#1#{} Multiplicateur',
                    'Réduit de {C:red}1{}',
                    'après avoir joué une main',
                    '{C:inactive}(Réinitialisé à la fin du tour)',
                },
            },
        },
        Tarot = {
            c_bldstn_ajokertarot = {
                name = "Une Blague",
                text = {
                    "Améliore {C:attention}1{} carte sélectionnée",
                    "en une carte {C:attention}Joker",
                }
            },
            c_bldstn_isthisyourcardtarot = {
                name = "Est-ce votre carte ?",
                text = {
                    'Améliore {C:attention}1{} carte sélectionnée',
                    'en une carte {C:green}Caractéristique{} et',
                    'ajoute la {C:green}Caractéristique Est-ce votre carte ?{}',
                }
            },
            c_bldstn_redotarot = {
                name = "Recommencer",
                text = {
                    'Réinitialise toutes les {C:green}caractéristiques{} jusqu\'à',
                    '3 cartes {C:green}Caractéristique{} sélectionnées',
                }
            },
            c_bldstn_copycattarot = {
                name = "Copieur",
                text = {
                    'Améliore {C:attention}1{} carte sélectionnée',
                    'en une carte {C:green}Caractéristique{} et',
                    'ajoute la {C:green}Caractéristique Copieur{}',
                }
            },
            c_bldstn_utopiatarot = {
                name = "Utopie",
                text = {
                    'Si utilisé pendant un {C:attention}aveugle{},',
                    'réduisez de moitié l\'{C:attention}exigence de score{}. ',
                    'Si utilisé ailleurs {C:attention}autrement{},',
                    'gagnez {C:money}'.. localize('$') ..'10',
                }
            },
        },
        Spectral = {
            c_bldstn_monsterspectral = {
                name = "Monstre",
                text = {
                    "Améliore {C:attention}1{} carte sélectionnée",
                    "en une carte {C:green}Caractéristique{} et",
                    "ajoute la {C:green}Caractéristique Monstre{}. ",
                    "{C:inactive}(Seulement si la carte ne possède pas",
                    "{C:inactive}la {C:green}Caractéristique Ange{}{C:inactive})",
                }
            },
            c_bldstn_angelspectral = {
                name = "Ange",
                text = {
                    "Améliore {C:attention}1{} carte sélectionnée",
                    "en une carte {C:green}Caractéristique{} et",
                    "ajoute la {C:green}Caractéristique Ange{}. ",
                    "{C:inactive}(Seulement si la carte ne possède pas",
                    "{C:inactive}la {C:green}Caractéristique Monstre{}{C:inactive})",
                }
            },
        },
        Enhanced = {
            m_bldstn_jokercard = {
                name = "Carte Joker",
                text = {
                    "Compte comme tous les atouts et",
                    "le rang le plus élevé mis en valeur",
                }
            },
            m_bldstn_traitcard = {
                name = "Carte Caractéristique",
                text = {
                    "{C:green}#1#",
                    "{C:green}#2#",
                    "{C:green}#3#",
                }
            },
            m_bldstn_traitcardinfo = {
                name = "Carte Caractéristique",
                text = {
                    "Ajoutez des {C:green}caractéristiques{} aux cartes {C:green}Caractéristique",
                    "pour gagner de nouvelles capacités !",
                    '{C:inactive}(3 max)',
                }
            },
            m_bldstn_isthisyourcardenhancement = {
                name = "Caractéristique Est-ce votre carte ?",
                text = {
                    "Toujours tirée en premier",
                }
            },
            m_bldstn_monsterenhancement = {
                name = "Caractéristique Monstre",
                text = {
                    'Si la main jouée contient cette',
                    '{C:attention}carte{} et exactement {C:attention}1{} autre {C:attention}carte,',
                    'mangez l\'autre {C:attention}carte{} et',
                    'gagnez une {C:dark_edition}édition aléatoire',
                }
            },
            m_bldstn_angelenhancement = {
                name = "Caractéristique Ange",
                text = {
                    'Si seule cette {C:attention}carte{} est',
                    'jouée, {C:attention}copiez{} cette {C:attention}carte{}',
                    'dans votre deck avec une {C:dark_edition}édition aléatoire',
                }
            },
            m_bldstn_copycatenhancement = {
                name = "Caractéristique Copieur",
                text = {
                    'Copie la {C:attention}rang{}, {C:attention}suit{},',
                    '{C:dark_edition}édition{} et {C:attention}sceau{} de la',
                    '{C:attention}carte{} à sa droite lorsqu\'elle est jouée',
                }
            },
        },
    },
}