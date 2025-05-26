--Straight out of chat gpt so blame it for any mistakes

return {
    misc = {
        dictionary = {
            bldstn_inactive_text = "Inactivo",
            bldstn_trait_text = 'Rasgo',
            bldstn_riseangels_text = '¡Levántense, mis ángeles!',
            bldstn_yum_text = '¡Delicioso!',
            k_bldstn_power = 'Poder',
            bldstn_addsafe_text = 'Agregar a la caja fuerte',
            bldstn_adddeck_text = 'Agregar al mazo',
            bldstn_safe_text1 = 'Agrega el comodín a su izquierda presionando \'Agregar a la caja fuerte\'',
            bldstn_safe_text2 = 'Agrega un comodín al mazo seleccionándolo y presionando \'Agregar al mazo\'',
            bldstn_jokers_text = 'Comodines',
            bldstn_draw_text = '¡Sacar!',
            bldstn_electricbox_spawned = '¡Caja eléctrica generada!',
            bldstn_scbp_spawned = '¡Plano Súper Cargado generado!',
            bldstn_activate_text = 'Activar',
            bldstn_ityc_text = '¿Es esta tu carta?',
            bldstn_monster_text = 'Monstruo',
            bldstn_angel_text = 'Ángel',
            bldstn_copycat_text = 'Imitador',
            bldstn_keep_text = 'Guardar',
            bldstn_free_reroll = '+1 Reintento Gratis',
        },
    },
    descriptions = {
        Joker = {
            j_bldstn_summerjoker = {
                name = 'Comodín de Verano',
                text = {
                  'Cada carta {C:hearts}Corazón{} que se tenga',
                  'en la mano da {X:mult,C:white}X#1#{} Mult',
                },
            },
            j_bldstn_winterjoker = {
                name = 'Comodín de Invierno',
                text = {
                  'Todas las cartas {C:clubs}Trébol{} se convierten en',
                  '{C:attention}Cartas de Vidrio{}',
                },
            },
            j_bldstn_springjoker = {
                name = 'Comodín de Primavera',
                text = {
                    'Si la mano jugada tiene {C:attention}2{} cartas',
                    'y la carta {C:attention}derecha{} es {C:diamonds}Diamante{},',
                    'convierte la carta {C:attention}izquierda{}',
                    '{C:attention}en la carta{} {C:attention}derecha{}',
                },
            },
            j_bldstn_autumnjoker = {
                name = 'Comodín de Otoño',
                text = {
                  'Este comodín gana {X:mult,C:white}X#1#{} Mult',
                  'por cada carta anotada',
                  'con el palo de {C:spades}Espada{}',
                  '{C:inactive}(Actualmente {X:mult,C:white}X#2#{} {C:inactive}Mult)',
                },
            },
            j_bldstn_seasonsjoker = {
                name = 'Comodín de las Estaciones',
                text = {
                    'Todas las cartas se consideran todos los palos',
                    'Las cartas no pueden ser debilitadas',
                },
                unlock = {
                    'Descubre los 4 comodines de las estaciones'
                },
            },
            j_bldstn_timejoker = {
                name = 'Comodín del Tiempo',
                text = {
                    'Cuando se selecciona {C:attention}ciego{},',
                    'establece el {C:attention}requisito de puntuación base{} a {C:attention}base{}',
                    '{C:attention}requisito de puntuación{} de {C:attention}2{} {C:attention}antes{} antes.',
                },
            },
            j_bldstn_piackacardjoker = {
                name = 'Toma una carta, cualquier carta',
                text = {
                    '{C:attention}Activo:{} Toma una carta para sacar',
                    '{C:inactive}(Una vez por ronda)',
                    '{C:attention}Pasivo:{} {C:attention}+1{} tamaño de mano',
                },
            },
            j_bldstn_onepunchjoker = {
                name = 'Comodín de un golpe',
                text = {
                    '{C:attention}Activo:{} {X:mult,C:white}X#2#{} mult',
                    '{C:inactive}(Una vez por ronda)',
                    '{C:inactive}(#1#)',
                    '{C:attention}Pasivo:{} {X:mult,C:white}X1{} mult',
                },
            },
            j_bldstn_electricjoker = {
                name = 'Caja Eléctrica',
                text = {
                    '{C:attention}Activo:{} {C:green}1 en #2#{} oportunidad de',
                    'generar {V:1}"Plano Súper Cargado"{}',
                    '{C:inactive}(Una vez por tienda)',
                    "\n",
                    '{C:attention}Pasivo:{} Súper Carga',
                    '{V:1, T:j_bldstn_superchargedblueprint}"Plano Súper Cargado"{}',
                },
            },
            j_bldstn_superchargedblueprint = {
                name = 'Plano Súper Cargado',
                text = {
                    '{C:attention}Activo:{} {C:green}1 en #2#{} oportunidad de',
                    'generar {V:1}"Caja Eléctrica"{}',
                    '{C:inactive}(Una vez por tienda)',
                    "\n",
                    '{C:attention}Pasivo:{} Vuelve a activar hasta 3 comodines',
                    'entre este {C:attention}comodín{} y',
                    '{V:1, T:j_bldstn_electricjoker}"Caja Eléctrica"{} 3 veces, dividido',
                    'de manera lo más equitativa posible',
                    '{C:inactive}(Debe tener ambos)',
                },
            },
            j_bldstn_safejoker = {
                name = 'Caja Fuerte',
                text = {
                    '{C:attention}Activo:{} Selecciona hasta 3 {C:attention}comodines{}',
                    'para poner en la caja fuerte',
                    '{C:inactive}(Los comodines en la caja fuerte no',
                    '{C:inactive}se incrementan, puntúan, activan o',
                    '{C:inactive}cuentan para el límite de comodines)',
                },
            },
            j_bldstn_tridentjoker = {
                name = 'Tridente',
                text = {
                    '{X:mult,C:white}X#1#{} Mult',
                    'Se reduce en {C:red}1{}',
                    'después de jugar una mano',
                    '{C:inactive}(se reinicia al final de la ronda)',
                },
            },
            j_bldstn_lightningstonejoker = {
                name = 'Piedra Rayo',
                text = {
                    'Al final de la ronda {C:green}1 en #2#{}',
                    'probabilidad de ganar {C:money}'.. localize('$') .. '#1#',
                },
            },
            j_bldstn_seastonejoker = {
                name = 'Piedra Marina',
                text = {
                    '{C:green}1 en #2#{} de ganar {C:chips}+#1#{} Fichas',
                    'cuando se anota un {C:clubs}Trébol{}'
                },
            },
            j_bldstn_plasmastonejoker = {
                name = 'Piedra Plasma',
                text = {
                    'Cada {C:attention}2{} Reintentos hay',
                    'una probabilidad de {C:green}1 en #2#{} de ganar',
                    '{C:attention}1{} {C:green}Reintento{} gratis',
                    '{C:inactive}(#1#/2 Reintentos)'
                },
            },
        },
        Tarot = {
            c_bldstn_ajokertarot = {
                name = "Una broma",
                text = {
                    "Mejora {C:attention}1{} carta seleccionada",
                    "a una carta de {C:attention}Comodín",
                }
            },
            c_bldstn_isthisyourcardtarot = {
                name = "¿Es esta tu carta?",
                text = {
                    'Mejora {C:attention}1{} carta seleccionada',
                    'a una carta de {C:green}Rasgo{} y',
                    'agrega {C:green}Rasgo ¿Es esta tu carta?{}',
                }
            },
            c_bldstn_redotarot = {
                name = "Rehacer",
                text = {
                    'Restablece todos los {C:green}rasgos{} de hasta',
                    'a {C:attention}3{} cartas seleccionadas de {C:green}Rasgo',
                }
            },
            c_bldstn_copycattarot = {
                name = "Imitador",
                text = {
                    'Mejora {C:attention}1{} carta seleccionada',
                    'a una carta de {C:green}Rasgo{} y',
                    'agrega {C:green}Rasgo Imitador{}',
                }
            },
            c_bldstn_utopiatarot = {
                name = "Utopía",
                text = {
                    'Si se usa mientras está en un {C:attention}ciego{},',
                    'la mitad del {C:attention}requisito de puntuación{}. ',
                    'Si se usa en cualquier otro {C:attention}lugar{},',
                    'gana {C:money}'.. localize('$') ..'10',
                }
            },
        },
        Spectral = {
            c_bldstn_monsterspectral = {
                name = "Monstruo",
                text = {
                    "Mejora {C:attention}1{} carta seleccionada",
                    "a una carta de {C:green}Rasgo{} y",
                    "agrega {C:green}Rasgo Monstruo{}. ",
                    "{C:inactive}(Solo si la carta no tiene",
                    "{C:inactive}el {C:green}Rasgo Ángel{}{C:inactive})",
                }
            },
            c_bldstn_angelspectral = {
                name = "Ángel",
                text = {
                    "Mejora {C:attention}1{} carta seleccionada",
                    "a una carta de {C:green}Rasgo{} y",
                    "agrega {C:green}Rasgo Ángel{}. ",
                    "{C:inactive}(Solo si la carta no tiene",
                    "{C:inactive}el {C:green}Rasgo Monstruo{}{C:inactive})",
                }
            },
        },
        Enhanced = {
            m_bldstn_jokercard = {
                name = "Carta de Comodín",
                text = {
                    "Cuenta como todos los palos y",
                    "el rango resaltado más alto",
                }
            },
            m_bldstn_traitcard = {
                name = "Carta de Rasgo",
                text = {
                    "{C:green}#1#",
                    "{C:green}#2#",
                    "{C:green}#3#",
                }
            },
            m_bldstn_traitcardinfo = {
                name = "Carta de Rasgo",
                text = {
                    "Agrega {C:green}rasgos{} a las cartas de {C:green}Rasgo",
                    "¡para obtener nuevas habilidades!",
                    '{C:inactive}(máximo 3)',
                }
            },
            m_bldstn_isthisyourcardenhancement = {
                name = "Rasgo ¿Es esta tu carta?",
                text = {
                    "Siempre se saca primero",
                }
            },
            m_bldstn_monsterenhancement = {
                name = "Rasgo Monstruo",
                text = {
                    'Si la mano jugada contiene esta',
                    '{C:attention}carta{} y exactamente {C:attention}1{} otra {C:attention}carta,',
                    'come la otra carta {C:attention}y{}',
                    'gana una {C:dark_edition}edición{} aleatoria',
                }
            },
            m_bldstn_angelenhancement = {
                name = "Rasgo Ángel",
                text = {
                    'Si solo esta {C:attention}carta{} es',
                    'jugada, {C:attention}copia{} esta {C:attention}carta{}',
                    'en tu mazo con una {C:dark_edition}edición{} aleatoria',
                }
            },
            m_bldstn_copycatenhancement = {
                name = "Rasgo Imitador",
                text = {
                    'Copia el {C:attention}rango{}, {C:attention}palo{},',
                    '{C:dark_edition}edición{} y {C:attention}sello{} de la',
                    '{C:attention}carta{} a su derecha cuando se juega',
                }
            },
        },
    },
}