--- STEAMODDED HEADER
--- MOD_NAME: Bloodstone
--- MOD_ID: BloodstoneMod
--- MOD_AUTHOR: [GiantX]
--- MOD_DESCRIPTION: Adds new jokers, consumables and enhancements to Balatro.
--- PREFIX: bldstn
----------------------------------------------
------------MOD CODE -------------------------

function G.UIDEF.use_and_sell_buttons(card)
    local sell = nil
    local use = nil
    local active = nil
    if card.area and card.area.config.type == 'joker' then
        sell = {n=G.UIT.C, config={align = "cr"}, nodes={
            {n=G.UIT.C, config={ref_table = card, align = "cr",padding = 0.1, r=0.08, minw = 1.25, hover = true, shadow = true, colour = G.C.UI.BACKGROUND_INACTIVE, one_press = true, button = 'sell_card', func = 'can_sell_card'}, nodes={
            {n=G.UIT.B, config = {w=0.1,h=0.6}},
            {n=G.UIT.C, config={align = "tm"}, nodes={
                {n=G.UIT.R, config={align = "cm", maxw = 1.25}, nodes={
                {n=G.UIT.T, config={text = localize('b_sell'),colour = G.C.UI.TEXT_LIGHT, scale = 0.4, shadow = true}}
                }},
                {n=G.UIT.R, config={align = "cm"}, nodes={
                {n=G.UIT.T, config={text = localize('$'),colour = G.C.WHITE, scale = 0.4, shadow = true}},
                {n=G.UIT.T, config={ref_table = card, ref_value = 'sell_cost_label',colour = G.C.WHITE, scale = 0.55, shadow = true}}
                }}
            }}
            }},
        }}
    end
    if card.area and card.area.config.type == 'joker' and card.config.center.rarity == 'bldstn_power' then
        active = {n=G.UIT.C, config={align = "cr"}, nodes={
            {n=G.UIT.C, config={ref_table = card, align = "cr",padding = 0.1, r=0.08, minw = 1.25, hover = true, shadow = true, colour = G.C.UI.BACKGROUND_INACTIVE, one_press = false, button = 'active_button', func = 'activate_power'}, nodes={
            {n=G.UIT.B, config = {w=0.1,h=0.5}},
            {n=G.UIT.C, config={align = "cm"}, nodes={
                {n=G.UIT.R, config={align = "cm", maxw = 1.25}, nodes={
                {n=G.UIT.T, config={text = G.localization.misc.dictionary.bldstn_activate_text,colour = G.C.WHITE, scale = 0.6, shadow = true}}
                }}
            }}
            }},
        }}
    end
    if card.ability.consumeable then
        if card.ability.name == 'c_bldstn_isthisyourcardtarot' or
           card.ability.name == 'c_bldstn_redotarot' or
           card.ability.name == 'c_bldstn_copycattarot' or
           card.ability.name == 'c_bldstn_monsterspectral' or
           card.ability.name == 'c_bldstn_angelspectral' then
           if (card.area == G.pack_cards and G.pack_cards) then
                return {
                n=G.UIT.ROOT, config = {padding = -0.1, colour = G.C.CLEAR}, nodes={
                    {n=G.UIT.R, config={ref_table = card, r = 0.08, padding = 0.1, align = "bm", minw = 0.5*card.T.w - 0.15, minh = 0.6, maxw = 0.7*card.T.w - 0.15, hover = true, shadow = true, colour = G.C.UI.BACKGROUND_INACTIVE, one_press = true, button = 'trait_enhancement', func = 'can_use_consumeable_trait'}, nodes={
                    {n=G.UIT.T, config={text = localize('b_use'),colour = G.C.UI.TEXT_LIGHT, scale = 0.55, shadow = true}}
                    }},
                    {n=G.UIT.R, config={ref_table = card, r = 0.08, padding = 0.1, align = "bm", minw = 0.4, minh = 0.5, maxw = 0.9*card.T.w - 0.15, hover = true, shadow = true, colour = G.C.UI.BACKGROUND_INACTIVE, one_press = true, button = 'keep_in_hand', func = 'can_keep_consumeable'}, nodes={
                    {n=G.UIT.T, config={text = localize('bldstn_keep_text'),colour = G.C.UI.TEXT_LIGHT, scale = 0.45, shadow = true}}
                    }},
                    {n = G.UIT.R, config = {align = "bm", w = 7.7 * card.T.w}},
					{n = G.UIT.R, config = {align = "bm", w = 7.7 * card.T.w}},
					{n = G.UIT.R, config = {align = "bm", w = 7.7 * card.T.w}},
                }}
           end
           use = 
           {n=G.UIT.C, config={align = "cr"}, nodes={
               {n=G.UIT.C, config={my_data = {G.hand.highlighted[1]}, ref_table = card, align = "cr",maxw = 1.25, padding = 0.1, r=0.08, minw = 1.25, minh = (card.area and card.area.config.type == 'joker') and 0 or 1, hover = true, shadow = true, colour = G.C.UI.BACKGROUND_INACTIVE, one_press = true, button = 'trait_enhancement', func = 'can_use_consumeable_trait'}, nodes={
               {n=G.UIT.B, config = {w=0.1,h=0.6}},
               {n=G.UIT.T, config={text = localize('b_use'),colour = G.C.UI.TEXT_LIGHT, scale = 0.55, shadow = true}}
               }}
           }}
        else
            if (card.area == G.pack_cards and G.pack_cards) then
                return {
                n=G.UIT.ROOT, config = {padding = 0, colour = G.C.CLEAR}, nodes={
                    {n=G.UIT.R, config={mid = true}, nodes={
                    }},
                    {n=G.UIT.R, config={ref_table = card, r = 0.08, padding = 0.1, align = "bm", minw = 0.5*card.T.w - 0.15, minh = 0.8*card.T.h, maxw = 0.7*card.T.w - 0.15, hover = true, shadow = true, colour = G.C.UI.BACKGROUND_INACTIVE, one_press = true, button = 'use_card', func = 'can_use_consumeable'}, nodes={
                    {n=G.UIT.T, config={text = localize('b_use'),colour = G.C.UI.TEXT_LIGHT, scale = 0.55, shadow = true}}
                    }},
                }}
            end
            use = 
            {n=G.UIT.C, config={align = "cr"}, nodes={
                {n=G.UIT.C, config={ref_table = card, align = "cr",maxw = 1.25, padding = 0.1, r=0.08, minw = 1.25, minh = (card.area and card.area.config.type == 'joker') and 0 or 1, hover = true, shadow = true, colour = G.C.UI.BACKGROUND_INACTIVE, one_press = true, button = 'use_card', func = 'can_use_consumeable'}, nodes={
                {n=G.UIT.B, config = {w=0.1,h=0.6}},
                {n=G.UIT.T, config={text = localize('b_use'),colour = G.C.UI.TEXT_LIGHT, scale = 0.55, shadow = true}}
                }}
            }}
        end
    elseif card.area and card.area == G.pack_cards then
    return {
        n=G.UIT.ROOT, config = {padding = 0, colour = G.C.CLEAR}, nodes={
        {n=G.UIT.R, config={ref_table = card, r = 0.08, padding = 0.1, align = "bm", minw = 0.5*card.T.w - 0.15, maxw = 0.9*card.T.w - 0.15, minh = 0.3*card.T.h, hover = true, shadow = true, colour = G.C.UI.BACKGROUND_INACTIVE, one_press = true, button = 'use_card', func = 'can_select_card'}, nodes={
            {n=G.UIT.T, config={text = localize('b_select'),colour = G.C.UI.TEXT_LIGHT, scale = 0.45, shadow = true}}
        }},
    }}
    end
    local t = {
        n=G.UIT.ROOT, config = {padding = 0, colour = G.C.CLEAR}, nodes={
        {n=G.UIT.C, config={padding = 0.15, align = 'cl'}, nodes={
            {n=G.UIT.R, config={align = 'cl'}, nodes={
            active
            }},
            {n=G.UIT.R, config={align = 'cl'}, nodes={
            sell
            }},
            {n=G.UIT.R, config={align = 'cl'}, nodes={
            use
            }},
        }},
    }}
    return t
end

G.FUNCS.trait_enhancement = function(e)
    local card = G.hand.highlighted[1]
    local save_text = {'', '', ''}
    local save_booleans = {false, false, false}
    local save_traits_count = 0

    if G.hand.highlighted[1].config.center == G.P_CENTERS.m_bldstn_traitcard then save_text = {card.ability.extra.text[1], card.ability.extra.text[2], card.ability.extra.text[3]}; save_traits_count = card.ability.extra.traits; save_booleans = {card.ability.extra.isthisyourcard, card.ability.extra.monster, card.ability.extra.angel, card.ability.extra.copycat} end

    G.FUNCS.use_card(e)

    if e.config.ref_table.ability.name == 'c_bldstn_isthisyourcardtarot' then
        G.E_MANAGER:add_event(Event({
            func = function()
                local last = 0
                for i = 1, 3 do
                    if save_text[i] == '' then last = i; break end
                end
                for i = 1, 3 do
                    if last == i then card.ability.extra.text[i] = localize('bldstn_ityc_text')
                    else card.ability.extra.text[i] = save_text[i] end
                end
                card.ability.extra.isthisyourcard = true
                card.ability.extra.monster = save_booleans[2]
                card.ability.extra.angel = save_booleans[3]
                card.ability.extra.copycat = save_booleans[4]
                card.ability.extra.traits = save_traits_count + 1
                return true
            end
        }))
    end
    if e.config.ref_table.ability.name == 'c_bldstn_redotarot' then
        G.E_MANAGER:add_event(Event({
            func = function()
                for i = 1, #G.hand.highlighted do
                    G.hand.highlighted[i].ability.extra.text = {'', '', ''}
                    G.hand.highlighted[i].ability.extra.isthisyourcard = false
                    G.hand.highlighted[i].ability.extra.monster = false
                    G.hand.highlighted[i].ability.extra.angel = false
                    G.hand.highlighted[i].ability.extra.copycat = false
                    card.ability.extra.traits = 0
                end
                return true
            end
        }))
    end
    if e.config.ref_table.ability.name == 'c_bldstn_monsterspectral' then
        G.E_MANAGER:add_event(Event({
            func = function()
                local last = 0
                for i = 1, 3 do
                    if save_text[i] == '' then last = i; break end
                end
                for i = 1, 3 do
                    if last == i then card.ability.extra.text[i] = localize('bldstn_monster_text')
                    else card.ability.extra.text[i] = save_text[i] end
                end
                card.ability.extra.isthisyourcard = save_booleans[1]
                card.ability.extra.monster = true
                card.ability.extra.angel = save_booleans[3]
                card.ability.extra.copycat = save_booleans[4]
                card.ability.extra.traits = save_traits_count + 1
                return true
            end
        }))
    end
    if e.config.ref_table.ability.name == 'c_bldstn_angelspectral' then
        G.E_MANAGER:add_event(Event({
            func = function()
                local last = 0
                for i = 1, 3 do
                    if save_text[i] == '' then last = i; break end
                end
                for i = 1, 3 do
                    if last == i then card.ability.extra.text[i] = localize('bldstn_angel_text')
                    else card.ability.extra.text[i] = save_text[i] end
                end
                card.ability.extra.isthisyourcard = save_booleans[1]
                card.ability.extra.monster = save_booleans[2]
                card.ability.extra.angel = true
                card.ability.extra.copycat = save_booleans[4]
                card.ability.extra.traits = save_traits_count + 1
                return true
            end
        }))
    end
    if e.config.ref_table.ability.name == 'c_bldstn_copycattarot' then
        G.E_MANAGER:add_event(Event({
            func = function()
                local last = 0
                for i = 1, 3 do
                    if save_text[i] == '' then last = i; break end
                end
                for i = 1, 3 do
                    if last == i then card.ability.extra.text[i] = localize('bldstn_copycat_text')
                    else card.ability.extra.text[i] = save_text[i] end
                end
                card.ability.extra.isthisyourcard = save_booleans[1]
                card.ability.extra.monster = save_booleans[2]
                card.ability.extra.angel = save_booleans[3]
                card.ability.extra.copycat = true
                card.ability.extra.traits = save_traits_count + 1
                return true
            end
        }))
    end
end

G.FUNCS.can_use_consumeable_trait = function(e)
    if e.config.ref_table:can_use_consumeable() then
        e.config.colour = G.C.RED
        e.config.button = 'trait_enhancement'
        if pcall(function () if G.hand.highlighted[1].ability.extra.isthisyourcard and e.config.ref_table.ability.name == 'c_bldstn_isthisyourcardtarot' then e.config.colour = G.C.UI.BACKGROUND_INACTIVE; e.config.button = nil; return end end ) then end
        if pcall(function () if (G.hand.highlighted[1].ability.extra.monster or G.hand.highlighted[1].ability.extra.angel) and e.config.ref_table.ability.name == 'c_bldstn_monsterspectral' then e.config.colour = G.C.UI.BACKGROUND_INACTIVE; e.config.button = nil; return end end ) then end
        if pcall(function () if (G.hand.highlighted[1].ability.extra.angel or G.hand.highlighted[1].ability.extra.monster) and e.config.ref_table.ability.name == 'c_bldstn_angelspectral' then e.config.colour = G.C.UI.BACKGROUND_INACTIVE; e.config.button = nil; return end end ) then end
        if pcall(function () if G.hand.highlighted[1].ability.extra.copycat and e.config.ref_table.ability.name == 'c_bldstn_copycattarot' then e.config.colour = G.C.UI.BACKGROUND_INACTIVE; e.config.button = nil; return end end ) then end
        if pcall(function () if G.hand.highlighted[1].config.center ~= G.P_CENTERS.m_bldstn_traitcard and e.config.ref_table.ability.name == 'c_bldstn_redotarot' then e.config.colour = G.C.UI.BACKGROUND_INACTIVE; e.config.button = nil; return end end ) then end
        if pcall(function () if G.hand.highlighted[1].ability.extra.traits >= 3 then e.config.colour = G.C.UI.BACKGROUND_INACTIVE; e.config.button = nil; return end end ) then end
    else
      e.config.colour = G.C.UI.BACKGROUND_INACTIVE
      e.config.button = nil
    end
end

G.FUNCS.keep_in_hand = function(e)
    if #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit then
        local copy_consumeable = create_card('Tarot', G.consumeables, nil, nil, nil, nil, e.config.ref_table.ability.name, nil)
        copy_consumeable:add_to_deck()
        G.consumeables:emplace(copy_consumeable)
        e.config.ref_table:remove()
        if G.GAME.pack_choices > 1 then G.GAME.pack_choices = G.GAME.pack_choices - 1
        else G.FUNCS.end_consumeable(nil, 0.2) end
    end
end

G.FUNCS.can_keep_consumeable = function(e)
    if #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit then
        e.config.colour = G.C.RED
        e.config.button = 'keep_in_hand'
    else
      e.config.colour = G.C.UI.BACKGROUND_INACTIVE
      e.config.button = nil
    end
end

G.FUNCS.activate_power = function(e)
    if  not (G.play and #G.play.cards > 0) and
        not (G.CONTROLLER.locked) and 
        not (G.GAME.STOP_USE and G.GAME.STOP_USE > 0) and
        e.config.ref_table.ability.extra.activateable then

        e.config.colour = G.C.RED
        e.config.button = 'active_button'

        if e.config.ref_table.ability.name == "j_bldstn_electricjoker" or e.config.ref_table.ability.name == "j_bldstn_superchargedblueprint" then
            if e.config.ref_table.ability.extra.is_ready_to_spawn then
                e.config.colour = G.C.RED
                e.config.button = 'active_button'
            else
                e.config.colour = G.C.UI.BACKGROUND_INACTIVE
                e.config.button = nil
            end
        end

    else
        e.config.colour = G.C.UI.BACKGROUND_INACTIVE
        e.config.button = nil
    end
end

G.FUNCS.active_button = function(e)
    --G.SETTINGS.paused = true
    if e.config.ref_table.ability.name == "j_bldstn_piackacardjoker" or
        e.config.ref_table.ability.name == "j_bldstn_onepunchjoker" or
        e.config.ref_table.ability.name == "j_bldstn_electricjoker" or
        e.config.ref_table.ability.name == "j_bldstn_superchargedblueprint" or
        e.config.ref_table.ability.name == "j_bldstn_safejoker" then
        for i = 1, #G.jokers.cards do
            G.jokers:remove_from_highlighted(G.jokers.cards[i])
        end
    end
    if e.config.ref_table.ability.name == "j_bldstn_piackacardjoker" then
        G.FUNCS.overlay_menu{definition = G.UIDEF.deck_info_pacac(false, e),}
    end
    if e.config.ref_table.ability.name == "j_bldstn_onepunchjoker" then
        e.config.ref_table.ability.extra.activated = true
        e.config.ref_table.ability.extra.activateable = false
        e.config.ref_table.ability.extra.activetext = localize('k_active_ex')
        local eval = function() return e.config.ref_table.ability.extra.activated end
        juice_card_until(e.config.ref_table, eval, true)
    end
    if e.config.ref_table.ability.name == "j_bldstn_electricjoker" then
        if e.config.ref_table.ability.extra.is_ready_to_spawn then
            e.config.ref_table.ability.extra.activateable = false
            if pseudorandom('j_bldstn_electricjoker'..G.SEED) < G.GAME.probabilities.normal / e.config.ref_table.ability.extra.chance_to_spawn then
                e.config.ref_table:juice_up()
                card_eval_status_text(e.config.ref_table, 'extra', nil, nil, nil, {message = G.localization.misc.dictionary.bldstn_scbp_spawned, colour = G.C.RED})
                local temp_card = {set = "Joker", area = G.shop_jokers, key = "j_bldstn_superchargedblueprint"}
                local new_card = SMODS.create_card(temp_card)
                G.shop_jokers:emplace(new_card)
                new_card:start_materialize()
                create_shop_card_ui(new_card)
            else
                e.config.ref_table:juice_up()
                card_eval_status_text(e.config.ref_table, 'extra', nil, nil, nil, {message = localize('k_nope_ex')})
            end
        end
    end
    if e.config.ref_table.ability.name == "j_bldstn_superchargedblueprint" then
        if e.config.ref_table.ability.extra.is_ready_to_spawn then
            e.config.ref_table.ability.extra.activateable = false
            if pseudorandom('j_bldstn_superchargedblueprint'..G.SEED) < G.GAME.probabilities.normal / e.config.ref_table.ability.extra.chance_to_spawn then
                e.config.ref_table:juice_up()
                card_eval_status_text(e.config.ref_table, 'extra', nil, nil, nil, {message = G.localization.misc.dictionary.bldstn_electricbox_spawned, colour = G.C.RED})
                local temp_card = {set = "Joker", area = G.shop_jokers, key = "j_bldstn_electricjoker"}
                local new_card = SMODS.create_card(temp_card)
                G.shop_jokers:emplace(new_card)
                new_card:start_materialize()
                create_shop_card_ui(new_card)
            else
                e.config.ref_table:juice_up()
                card_eval_status_text(e.config.ref_table, 'extra', nil, nil, nil, {message = localize('k_nope_ex')})
            end
        end
    end
    if e.config.ref_table.ability.name == "j_bldstn_safejoker" then
        if e.config.ref_table.ability.extra.joker_spot1 == "\"MANUAL_REPLACE\"" then
            local card2 = create_card('Joker', G.jokers, nil, nil, nil, nil, 'j_bldstn_placeholderjoker', '')
            local copy = copy_card(card2, nil, _scale)
            e.config.ref_table.ability.extra.joker_spot1 = copy
            e.config.ref_table.ability.extra.joker_spot2 = copy
            e.config.ref_table.ability.extra.joker_spot3 = copy
            copy:remove()
            card2:remove()
        end
        G.FUNCS.overlay_menu{definition = G.UIDEF.deck_info_safe(false, e),}
    end
end

function G.UIDEF.deck_info_pacac(_show_remaining, e)
  return create_UIBox_generic_options({contents ={create_tabs(
    {tabs = _show_remaining and {
        {
          label = localize('b_remaining'),
          chosen = true,
          tab_definition_function = G.UIDEF.view_deck_pacac,
          tab_definition_function_args = e,
        },
    } or {
      {
        label = localize('b_full_deck'),
        chosen = true,
        tab_definition_function = G.UIDEF.view_deck_pacac,
        tab_definition_function_args = e,
      },
    },
    tab_h = 8,
    snap_to_nav = true})}})
end

function G.UIDEF.view_deck_pacac(e)
  unplayed_only = true
  local deck_tables = {}
  remove_nils(G.playing_cards)
  G.VIEWING_DECK = true
  table.sort(G.playing_cards, function (a, b) return a:get_nominal('suit') > b:get_nominal('suit') end )
  local SUITS = {
    Spades = {},
    Hearts = {},
    Clubs = {},
    Diamonds = {},
  }
  local SUITS_copy = {
    Spades = {},
    Hearts = {},
    Clubs = {},
    Diamonds = {},
  }
  local suit_map = {'Spades', 'Hearts', 'Clubs', 'Diamonds'}
  for k, v in ipairs(G.playing_cards) do
    table.insert(SUITS[v.base.suit], v)
    table.insert(SUITS_copy[v.base.suit], v)
  end

  for j = 1, 4 do
    if SUITS[suit_map[j]][1] then
      local view_deck = CardArea(
        G.ROOM.T.x + 0.2*G.ROOM.T.w/2,G.ROOM.T.h,
        6.5*G.CARD_W,
        0.6*G.CARD_H,
        {card_limit = #SUITS[suit_map[j]], type = 'title', view_deck = true, highlight_limit = 1690, card_w = G.CARD_W*0.7, draw_layers = {'card'}})
      table.insert(deck_tables, 
      {n=G.UIT.R, config={align = "cm", padding = 0}, nodes={
        {n=G.UIT.O, config={object = view_deck}}
      }}
      )

      for i = 1, #SUITS[suit_map[j]] do
        if SUITS[suit_map[j]][i] then
          local greyed, _scale = nil, 0.7
          if unplayed_only and not ((SUITS[suit_map[j]][i].area and SUITS[suit_map[j]][i].area == G.deck)) then
              greyed = true
          else
              local copy = copy_card(SUITS[suit_map[j]][i],nil, _scale)
              SUITS_copy[suit_map[j]][i] = copy
              copy.greyed = greyed
              copy.T.x = view_deck.T.x + view_deck.T.w/2
              copy.T.y = view_deck.T.y

              copy:hard_set_T()
              view_deck:emplace(copy)
          end
        end
      end
    end
  end

  local t = 
  {n=G.UIT.ROOT, config={align = "cm", colour = G.C.CLEAR}, nodes={
    {n=G.UIT.R, config={align = "cm", padding = 0.05}, nodes={}},
    {n=G.UIT.R, config={align = "cm"}, nodes={
      {n=G.UIT.B, config={w = 0.2, h = 0.1}},
      {n=G.UIT.C, config={align = "cm", padding = 0.1, r = 0.1, colour = G.C.BLACK, emboss = 0.05}, nodes=deck_tables}}},
    {n=G.UIT.R, config={align = "cm", padding = 0.2}, nodes={
        {n=G.UIT.C, config={my_data = {SUITS, SUITS_copy, e},ref_table = deck_tables, align = "cm", minw = 3, minh = 1, r = 0.1, hover = true, shadow = true, colour = G.C.RED, button = 'draw_selected_card_pacac', func = 'check_highlighted', emboss = 0.05}, nodes={
        {n=G.UIT.T, config={align = "cm",text = G.localization.misc.dictionary.bldstn_draw_text, colour = G.C.WHITE, scale = 0.8, shadow = true}}}}
    }},
  }}
  return t
end

G.FUNCS.check_highlighted = function(e)
    if #e.config.ref_table[1].nodes[1].config.object.highlighted +
        #e.config.ref_table[2].nodes[1].config.object.highlighted +
        #e.config.ref_table[3].nodes[1].config.object.highlighted +
        #e.config.ref_table[4].nodes[1].config.object.highlighted == 1 then 
        e.config.colour = G.C.RED
        e.config.button = 'draw_selected_card_pacac'
    else
        e.config.colour = G.C.UI.BACKGROUND_INACTIVE
        e.config.button = nil
    end
end

G.FUNCS.draw_selected_card_pacac = function(e)
    local SUITS = e.config.my_data[1]
    local SUITS_copy = e.config.my_data[2]
    for i = 1, 4 do
        if #e.config.ref_table[i].nodes[1].config.object.highlighted == 1 then
            local highlighted_card = e.config.ref_table[i].nodes[1].config.object.highlighted[1]
            local count = 0
            for j = 1, #SUITS[highlighted_card.base.suit] do
                if SUITS_copy[highlighted_card.base.suit][j] == highlighted_card then
                    count = j
                end
            end
            --draw
            local new_card = SUITS[highlighted_card.base.suit][count]
            draw_card(G.deck, G.hand, 100, nil, nil , new_card)
            --active/inavtive
            e.config.my_data[3].config.ref_table.ability.extra.activateable = false
            --back
            G.FUNCS.exit_overlay_menu()
            break
        end
    end
end

function CardArea:can_highlight(card)
    if self.config.highlighted_limit == 1690 then
        return true
    end
    if G.CONTROLLER.HID.controller then 
        if  self.config.type == 'hand'
        then
                return true
        end
    else
        if  self.config.type == 'hand' or
            self.config.type == 'joker' or
            self.config.type == 'consumeable' or
            (self.config.type == 'shop' and self.config.highlighted_limit > 0)
        then
                return true
        end
    end
    return false
end

function G.UIDEF.deck_info_safe(_show_remaining, e)
  return create_UIBox_generic_options({contents ={create_tabs(
    {tabs = {
      {
        label = G.localization.misc.dictionary.bldstn_jokers_text,
        chosen = true,
        tab_definition_function = G.UIDEF.view_deck_safe,
        tab_definition_function_args = e,
      },
    },
    tab_h = 8,
    snap_to_nav = true})}})
end

function G.UIDEF.view_deck_safe(e)
    local deck_tables = {}

    local view_deck = CardArea(
    G.ROOM.T.x + 0.2*G.ROOM.T.w/2,G.ROOM.T.h,
    4.5*G.CARD_W,
    1.6*G.CARD_H,
    {card_limit = 3, type = 'title', view_deck = true, highlight_limit = 1690, card_w = G.CARD_W, draw_layers = {'card'}})
    table.insert(deck_tables, 
    {n=G.UIT.R, config={align = "cm", padding = 0}, nodes={
    {n=G.UIT.O, config={object = view_deck}}}})

    local copy = copy_card(e.config.ref_table.ability.extra.joker_spot1,nil, _scale)
    copy.greyed = greyed
    copy.T.x = view_deck.T.x + view_deck.T.w/2
    copy.T.y = view_deck.T.y
    copy:hard_set_T()
    view_deck:emplace(copy)

    local copy = copy_card(e.config.ref_table.ability.extra.joker_spot2,nil, _scale)
    copy.greyed = greyed
    copy.T.x = view_deck.T.x + view_deck.T.w/2
    copy.T.y = view_deck.T.y
    copy:hard_set_T()
    view_deck:emplace(copy)

    local copy = copy_card(e.config.ref_table.ability.extra.joker_spot3,nil, _scale)
    copy.greyed = greyed
    copy.T.x = view_deck.T.x + view_deck.T.w/2
    copy.T.y = view_deck.T.y
    copy:hard_set_T()
    view_deck:emplace(copy)

    local cardarea_cards = {view_deck.cards[1], view_deck.cards[2], view_deck.cards[3]}

    local t = 
    {n=G.UIT.ROOT, config={align = "cm", colour = G.C.CLEAR}, nodes={
    {n=G.UIT.R, config={align = "cm", padding = 0.05}, nodes={
    {n=G.UIT.T, config={text = G.localization.misc.dictionary.bldstn_safe_text1, colour = G.C.WHITE, scale = 0.5}}}},
    {n=G.UIT.R, config={align = "cm", padding = 0.05}, nodes={
    {n=G.UIT.T, config={text = G.localization.misc.dictionary.bldstn_safe_text2, colour = G.C.WHITE, scale = 0.5}}}},
    {n=G.UIT.R, config={align = "cm"}, nodes={
        {n=G.UIT.B, config={w = 0.2, h = 0.1}},
        {n=G.UIT.C, config={align = "cm", padding = 0.1, r = 0.1, colour = G.C.BLACK, emboss = 0.05}, nodes=deck_tables}}},
    {n=G.UIT.R, config={align = "cm", padding = 0.2}, nodes={
        {n=G.UIT.C, config={my_data = {e}, ref_table = deck_tables, align = "cm", minw = 3, minh = 1, r = 0.1, hover = true, shadow = true, colour = G.C.RED, button = 'add_to_safe', emboss = 0.05}, nodes={
        {n=G.UIT.T, config={align = "cm",text = G.localization.misc.dictionary.bldstn_addsafe_text, colour = G.C.WHITE, scale = 0.5, shadow = true}}}},
        {n=G.UIT.C, config={my_data = {e, cardarea_cards}, ref_table = deck_tables, align = "cm", minw = 3, minh = 1, r = 0.1, hover = true, shadow = true, colour = G.C.RED, button = 'add_to_deck_safe', emboss = 0.05}, nodes={
        {n=G.UIT.T, config={align = "cm",text = G.localization.misc.dictionary.bldstn_adddeck_text, colour = G.C.WHITE, scale = 0.5, shadow = true}}}}}},
    }}
    return t
end

G.FUNCS.add_to_safe = function(e)
    local other_card = nil
    for i = 1, #G.jokers.cards do
        if G.jokers.cards[i] == e.config.my_data[1].config.ref_table then other_card = G.jokers.cards[i-1] end
    end
    
    if not other_card or other_card == e.config.my_data[1].config.ref_table or other_card.ability.name == 'j_bldstn_safejoker' then return end

    local key1 = G.P_CENTER_POOLS["Joker"][other_card.ability.order].key
    if string.find(other_card.ability.name, 'bldstn') then key1 = other_card.ability.name end
    if e.config.my_data[1].config.ref_table.ability.extra.joker_spot1.ability.name == 'j_bldstn_placeholderjoker' then
        e.config.my_data[1].config.ref_table.ability.extra.joker_spot1 = other_card
        e.config.my_data[1].config.ref_table.ability.extra.joker_spot1_save = {name = other_card.ability.name, key = key1,edition = other_card.edition, sell = other_card.sell_cost,extra = get_extra(other_card)}
    elseif e.config.my_data[1].config.ref_table.ability.extra.joker_spot2.ability.name == 'j_bldstn_placeholderjoker' then
        e.config.my_data[1].config.ref_table.ability.extra.joker_spot2 = other_card
        e.config.my_data[1].config.ref_table.ability.extra.joker_spot2_save = {name = other_card.ability.name, key = key1,edition = other_card.edition, sell = other_card.sell_cost,extra = get_extra(other_card)}
    elseif e.config.my_data[1].config.ref_table.ability.extra.joker_spot3.ability.name == 'j_bldstn_placeholderjoker' then
        e.config.my_data[1].config.ref_table.ability.extra.joker_spot3 = other_card
        e.config.my_data[1].config.ref_table.ability.extra.joker_spot3_save = {name = other_card.ability.name, key = key1,edition = other_card.edition, sell = other_card.sell_cost,extra = get_extra(other_card)}
    else
        return
    end

    G.FUNCS.exit_overlay_menu()
    other_card:remove_from_deck(false)
    other_card:remove()
    G.FUNCS.overlay_menu{definition = G.UIDEF.deck_info_safe(false, e.config.my_data[1]),}
end

G.FUNCS.add_to_deck_safe = function(e)
    local highlighted_c = e.config.ref_table[1].nodes[1].config.object.highlighted
    local cardarea_cards1 = e.config.my_data[2][1]
    local cardarea_cards2 = e.config.my_data[2][2]
    local cardarea_cards3 = e.config.my_data[2][3] --does not let me do to inside the if statement so...
    if #highlighted_c == 1 and (G.jokers.config.card_limit > #G.jokers.cards or highlighted_c[1].edition.negative) then
        if highlighted_c[1].ability.name == 'j_bldstn_placeholderjoker' then return end
        G.FUNCS.exit_overlay_menu()

        local card2 = create_card('Joker', G.jokers, nil, nil, nil, nil, 'j_bldstn_placeholderjoker', '')
        local copy = copy_card(card2, nil, _scale)
        if highlighted_c[1] == cardarea_cards1 then
            e.config.my_data[1].config.ref_table.ability.extra.joker_spot1 = copy
            e.config.my_data[1].config.ref_table.ability.extra.joker_spot1_save = nil
            if e.config.my_data[1].config.ref_table.ability.extra.joker_spot1.edition then e.config.my_data[1].config.ref_table.ability.extra.joker_spot1.edition = nil end
        elseif highlighted_c[1] == cardarea_cards2 then
            e.config.my_data[1].config.ref_table.ability.extra.joker_spot2 = copy
            e.config.my_data[1].config.ref_table.ability.extra.joker_spot2_save = nil
            if e.config.my_data[1].config.ref_table.ability.extra.joker_spot2.edition then e.config.my_data[1].config.ref_table.ability.extra.joker_spot2.edition = nil end
        elseif highlighted_c[1] == cardarea_cards3 then
            e.config.my_data[1].config.ref_table.ability.extra.joker_spot3 = copy
            e.config.my_data[1].config.ref_table.ability.extra.joker_spot3_save = nil
            if e.config.my_data[1].config.ref_table.ability.extra.joker_spot3.edition then e.config.my_data[1].config.ref_table.ability.extra.joker_spot3.edition = nil end
        end
        copy:remove()
        card2:remove()

        G.E_MANAGER:add_event(Event({
        func = function() 
            local card = copy_card(highlighted_c[1], nil, _scale)
            card:add_to_deck()
            G.jokers:emplace(card)
            card:start_materialize()
            return true
        end}))
        G.FUNCS.overlay_menu{definition = G.UIDEF.deck_info_safe(false, e.config.my_data[1]),}
    end
end

function get_extra(card) --I tried to do it more efficiently but each card have diffrent config names and storing place
    if card.ability.name == 'Ceremonial Dagger' then return {card.ability.mult} end
    if card.ability.name == 'Loyalty Card' then return {card.ability.loyalty_remaining, card.ability.hands_played_at_create} end
    if card.ability.name == 'Ride the Bus' then return {card.ability.mult} end
    if card.ability.name == 'Egg' then return {card.ability.extra_value} end
    if card.ability.name == 'Runner' then return {card.ability.extra.chips} end
    if card.ability.name == 'Ice Cream' then return {card.ability.extra.chips} end
    if card.ability.name == 'Constellation' then return {card.ability.x_mult} end
    if card.ability.name == 'Green Joker' then return {card.ability.mult} end
    if card.ability.name == 'Red Card' then return {card.ability.mult} end
    if card.ability.name == 'Madness' then return {card.ability.x_mult} end
    if card.ability.name == 'Square Joker' then return {card.ability.extra.chips} end
    if card.ability.name == 'Vampire' then return {card.ability.x_mult} end
    if card.ability.name == 'Hologram' then return {card.ability.x_mult} end
    if card.ability.name == 'Rocket' then return {card.ability.extra.dollars} end
    if card.ability.name == 'Obelisk' then return {card.ability.x_mult} end
    if card.ability.name == 'Turtle Bean' then return {card.ability.extra.h_size} end
    if card.ability.name == 'Lucky Cat' then return {card.ability.x_mult} end
    if card.ability.name == 'Flash Card' then return {card.ability.mult} end
    if card.ability.name == 'Popcorn' then return {card.ability.mult} end
    if card.ability.name == 'Spare Trousers' then return {card.ability.mult} end
    if card.ability.name == 'Ramen' then return {card.ability.x_mult} end
    if card.ability.name == 'Seltzer' then return {card.ability.extra} end
    if card.ability.name == 'Castle' then return {card.ability.extra.chips} end
    if card.ability.name == 'Campfire' then return {card.ability.x_mult} end
    if card.ability.name == 'Glass Joker' then return {card.ability.x_mult} end
    if card.ability.name == 'Wee Joker' then return {card.ability.extra.chips} end
    if card.ability.name == 'Hit the Road' then return {card.ability.x_mult} end
    if card.ability.name == 'Invisible Joker' then return {card.ability.invis_rounds} end
    if card.ability.name == 'Caino' then return {card.ability.caino_xmult} end
    if card.ability.name == 'Yorick' then return {card.ability.x_mult, card.ability.yorick_discards} end
    if card.ability.name == 'j_bldstn_autumnjoker' then return {card.ability.extra.Cmult} end
    if card.ability.name == 'j_bldstn_tridentjoker' then return {card.ability.extra.xtra_mult} end
    if card.ability.name == 'j_bldstn_onepunchjoker' then return {card.ability.extra.activetext, card.ability.extra.activateable, card.ability.extra.activated} end
    if card.ability.name == 'j_bldstn_piackacardjoker' then return {card.ability.extra.activateable} end
    if card.ability.name == 'j_bldstn_electricjoker' then return {card.ability.extra.activetext, card.ability.extra.activateable} end
    if card.ability.name == 'j_bldstn_superchargedblueprint' then return {card.ability.extra.activetext, card.ability.extra.activateable} end
end

function set_safe_jokers()
    G.E_MANAGER:add_event(Event({
        func = function()

            local safe = find_joker('j_bldstn_safejoker')[1]
            if safe.ability.extra.joker_spot1 == "\"MANUAL_REPLACE\"" then
                local card2 = create_card('Joker', G.jokers, nil, nil, nil, nil, 'j_bldstn_placeholderjoker', '')
                local copy = copy_card(card2, nil, _scale)
                safe.ability.extra.joker_spot1 = copy
                safe.ability.extra.joker_spot1.edition = nil
                safe.ability.extra.joker_spot2 = copy
                safe.ability.extra.joker_spot2.edition = nil
                safe.ability.extra.joker_spot3 = copy
                safe.ability.extra.joker_spot3.edition = nil
                copy:remove()
                card2:remove()
            end

            for i = 1, #find_joker('j_bldstn_safejoker') do
                safe = find_joker('j_bldstn_safejoker')[i]

                if safe.ability.extra.joker_spot1_save then
                    local spot1 = create_card('Joker', G.jokers, nil, nil, nil, nil, safe.ability.extra.joker_spot1_save.key, '')
                    spot1.edition = safe.ability.extra.joker_spot1_save.edition
                    spot1.sell_cost = safe.ability.extra.joker_spot1_save.sell_cost
                    spot1:set_cost()
                    spot1:set_extra(safe.ability.extra.joker_spot1_save)
                    safe.ability.extra.joker_spot1 = spot1
                    spot1:remove()
                end

                if safe.ability.extra.joker_spot2_save then
                    local spot2 = create_card('Joker', G.jokers, nil, nil, nil, nil, safe.ability.extra.joker_spot2_save.key, '')
                    spot2.edition = safe.ability.extra.joker_spot2_save.edition
                    spot2.sell_cost = safe.ability.extra.joker_spot2_save.sell_cost
                    spot2:set_cost()
                    spot2:set_extra(safe.ability.extra.joker_spot2_save)
                    safe.ability.extra.joker_spot2 = spot2
                    spot2:remove()
                end

                if safe.ability.extra.joker_spot3_save then
                    local spot3 = create_card('Joker', G.jokers, nil, nil, nil, nil, safe.ability.extra.joker_spot3_save.key, '')
                    spot3.edition = safe.ability.extra.joker_spot3_save.edition
                    spot3.sell_cost = safe.ability.extra.joker_spot3_save.sell_cost
                    spot3:set_cost()
                    spot3:set_extra(safe.ability.extra.joker_spot3_save)
                    safe.ability.extra.joker_spot3 = spot3
                    spot3:remove()
                end

            end

            return true
        end
    }))
end

function Card:set_extra(spot_save)
    if self.ability.name == 'Ceremonial Dagger' then self.ability.mult = spot_save.extra[1] end
    if self.ability.name == 'Loyalty Card' then self.ability.loyalty_remaining = spot_save.extra[1]; self.ability.hands_played_at_create = spot_save.extra[2] end
    if self.ability.name == 'Ride the Bus' then self.ability.mult = spot_save.extra[1] end
    if self.ability.name == 'Egg' then self.ability.extra_value = spot_save.extra[1] end
    if self.ability.name == 'Runner' then self.ability.extra.chips = spot_save.extra[1] end
    if self.ability.name == 'Ice Cream' then self.ability.extra.chips = spot_save.extra[1] end
    if self.ability.name == 'Constellation' then self.ability.x_mult = spot_save.extra[1] end
    if self.ability.name == 'Green Joker' then self.ability.mult = spot_save.extra[1] end
    if self.ability.name == 'Red Card' then self.ability.mult = spot_save.extra[1] end
    if self.ability.name == 'Madness' then self.ability.x_mult = spot_save.extra[1] end
    if self.ability.name == 'Square Joker' then self.ability.extra.chips = spot_save.extra[1] end
    if self.ability.name == 'Vampire' then self.ability.x_mult = spot_save.extra[1] end
    if self.ability.name == 'Hologram' then self.ability.x_mult = spot_save.extra[1] end
    if self.ability.name == 'Rocket' then self.ability.extra.dollars = spot_save.extra[1] end
    if self.ability.name == 'Obelisk' then self.ability.x_mult = spot_save.extra[1] end
    if self.ability.name == 'Turtle Bean' then self.ability.extra.h_size = spot_save.extra[1] end
    if self.ability.name == 'Lucky Cat' then self.ability.x_mult = spot_save.extra[1] end
    if self.ability.name == 'Flash Card' then self.ability.mult = spot_save.extra[1] end
    if self.ability.name == 'Popcorn' then self.ability.mult = spot_save.extra[1] end
    if self.ability.name == 'Spare Trousers' then self.ability.mult = spot_save.extra[1] end
    if self.ability.name == 'Ramen' then self.ability.x_mult = spot_save.extra[1] end
    if self.ability.name == 'Seltzer' then self.ability.extra = spot_save.extra[1] end
    if self.ability.name == 'Castle' then self.ability.extra.chips = spot_save.extra[1] end
    if self.ability.name == 'Campfire' then self.ability.x_mult = spot_save.extra[1] end
    if self.ability.name == 'Glass Joker' then self.ability.x_mult = spot_save.extra[1] end
    if self.ability.name == 'Wee Joker' then self.ability.extra.chips = spot_save.extra[1] end
    if self.ability.name == 'Hit the Road' then self.ability.x_mult = spot_save.extra[1] end
    if self.ability.name == 'Invisible Joker' then self.ability.invis_rounds = spot_save.extra[1] end
    if self.ability.name == 'Caino' then self.ability.caino_xmult = spot_save.extra[1] end
    if self.ability.name == 'Yorick' then self.ability.x_mult = spot_save.extra[1]; self.ability.yorick_disselfs = spot_save.extra[2] end
    if self.ability.name == 'j_bldstn_autumnjoker' then self.ability.extra.Cmult = spot_save.extra[1] end
    if self.ability.name == 'j_bldstn_tridentjoker' then self.ability.extra.xtra_mult = spot_save.extra[1] end
    if self.ability.name == 'j_bldstn_onepunchjoker' then self.ability.extra.activetext = spot_save.extra[1]; self.ability.extra.activateable = spot_save.extra[2]; self.ability.extra.activated = spot_save.extra[3] end
    if self.ability.name == 'j_bldstn_piackacardjoker' then self.ability.extra.activateable = spot_save.extra[1] end
    if self.ability.name == 'j_bldstn_electricjoker' then self.ability.extra.activetext = spot_save.extra[1]; self.ability.extra.activateable = spot_save.extra[2]; end
    if self.ability.name == 'j_bldstn_superchargedblueprint' then self.ability.extra.activetext = spot_save.extra[1]; self.ability.extra.activateable = spot_save.extra[2]; end
end

function Card:is_suit(suit, bypass_debuff, flush_calc)
    if next(find_joker('j_bldstn_seasonsjoker')) then return true end
    if self.ability.name == 'm_bldstn_jokercard' then return true end

    if flush_calc then
        if self.ability.effect == 'Stone Card' then
            return false
        end
        if self.ability.name == "Wild Card" and not self.debuff then
            return true
        end
        if next(find_joker('Smeared Joker')) and (self.base.suit == 'Hearts' or self.base.suit == 'Diamonds') == (suit == 'Hearts' or suit == 'Diamonds') then
            return true
        end
        return self.base.suit == suit
    else
        if self.debuff and not bypass_debuff then return end
        if self.ability.effect == 'Stone Card' then
            return false
        end
        if self.ability.name == "Wild Card" then
            return true
        end
        if next(find_joker('Smeared Joker')) and (self.base.suit == 'Hearts' or self.base.suit == 'Diamonds') == (suit == 'Hearts' or suit == 'Diamonds') then
            return true
        end
        return self.base.suit == suit
    end
end

function Card:set_debuff(should_debuff)
    if next(find_joker('j_bldstn_seasonsjoker')) then self.debuff = false; return 'prevent_debuff' end

    if self.ability.perishable and self.ability.perish_tally <= 0 then 
        if not self.debuff then
            self.debuff = true
            if self.area == G.jokers then self:remove_from_deck(true) end
        end
        return
    end
    if should_debuff ~= self.debuff then
        if self.area == G.jokers then if should_debuff then self:remove_from_deck(true) else self:add_to_deck(true) end end
        self.debuff = should_debuff
    end
end

function Card:get_id()
    if SMODS.has_enhancement(self, 'm_bldstn_jokercard') and not self.debuff then
        local max_base = 0
        for k,v in ipairs(G.hand.highlighted) do
            if v.base.id > max_base and v ~= self then
                max_base = v.base.id
            end
        end
        for k,v in ipairs(G.play.cards) do
            if v.base.id > max_base and v ~= self then
                max_base = v.base.id
            end
        end
        if max_base == 0 then return 14 end
        return max_base
    end
    if self.ability.effect == 'Stone Card' and not self.vampired then
        return -math.random(100, 1000000)
    end
    return self.base.id
end

function Card:is_face(from_boss)
    if self.debuff and not from_boss then return end
    local id = self:get_id()
    if id == 11 or id == 12 or id == 13 or next(find_joker("Pareidolia")) then
        return true
    end
end

G.FUNCS.draw_from_deck_to_hand = function(e)
    if not (G.STATE == G.STATES.TAROT_PACK or G.STATE == G.STATES.SPECTRAL_PACK) and
        G.hand.config.card_limit <= 0 and #G.hand.cards == 0 then 
        G.STATE = G.STATES.GAME_OVER; G.STATE_COMPLETE = false 
        return true
    end
    local hand_space = e or math.min(#G.deck.cards, G.hand.config.card_limit - #G.hand.cards)
    if G.GAME.blind.name == 'The Serpent' and
        not G.GAME.blind.disabled and
        (G.GAME.current_round.hands_played > 0 or
        G.GAME.current_round.discards_used > 0) then
            hand_space = math.min(#G.deck.cards, 3)
    end
    delay(0.3)
    for i = 1, #G.deck.cards do
        if G.deck.cards[i].config.center == G.P_CENTERS.m_bldstn_traitcard then
            if G.deck.cards[i].ability.extra.isthisyourcard then
                draw_card(G.deck,G.hand, i*100/math.max(hand_space, 1),'up', true, G.deck.cards[i])
                hand_space = hand_space - 1
            end
        end
    end
    for i=1, hand_space do --draw cards from deckL
        if G.STATE == G.STATES.TAROT_PACK or G.STATE == G.STATES.SPECTRAL_PACK then 
            draw_card(G.deck,G.hand, i*100/math.max(hand_space, 1),'up', true)
        else
            draw_card(G.deck,G.hand, i*100/math.max(hand_space, 1),'up', true)
        end
    end
    for i = 1, #find_joker('Certificate') do --annoying certificate doesnt work when i use this function sooooooooo............
        for j = 1, find_joker('Certificate')[i].ability.extra.draw_extra_cards do
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                func = function() 
                    local _card = create_playing_card({
                        front = pseudorandom_element(G.P_CARDS, pseudoseed('cert_fr')), 
                        center = G.P_CENTERS.c_base}, G.hand, nil, nil, {G.C.SECONDARY_SET.Enhanced})
                    local seal_type = pseudorandom(pseudoseed('certsl'))
                    if seal_type > 0.75 then _card:set_seal('Red', true)
                    elseif seal_type > 0.5 then _card:set_seal('Blue', true)
                    elseif seal_type > 0.25 then _card:set_seal('Gold', true)
                    else _card:set_seal('Purple', true)
                    end
                    G.GAME.blind:debuff_card(_card)
                    G.hand:sort()
                    find_joker('Certificate')[i]:juice_up()
                    return true
                end}))
        end
    end
end

SMODS.current_mod.optional_features = function()
    return {
        retrigger_joker = true,
    }
end

SMODS.Rarity{
    key = 'power',
    loc_txt = {
	},
    pools = {
        ["Joker"] = { rate = 10 },
    },
    default_weight = 0.02,
	badge_colour = HEX('DF00FF')
}

--Jokers Atlas
SMODS.Atlas{
    key = 'jokersatlas',
    path = 'JokersAtlas.png',
    px = 71,
    py = 95
}

--Jokers Resprite Atlas
SMODS.Atlas{
    key = 'respriteatlas',
    path = 'JokersResprite.png',
    px = 71,
    py = 95
}

--Jokers Resprite Atlas
SMODS.Atlas{
    key = 'respriteatlas2',
    path = 'JokersResprite2.png',
    px = 71,
    py = 95
}

--Consumables Atlas
SMODS.Atlas{
    key = 'consumablesatlas',
    path = 'ConsumablesAtlas.png',
    px = 71,
    py = 95
}

--A Joke Tarot
SMODS.Consumable{
    set = 'Tarot',
    atlas = 'consumablesatlas',
    key = 'ajokertarot',
    effect = 'Enhance',
    config = {mod_conv = 'm_bldstn_jokercard', max_highlighted = 1},
    pos = {x = 0, y = 0},
    loc_vars = function(self,info_queue,center)
        info_queue[#info_queue+1] = G.P_CENTERS.m_bldstn_jokercard
    end,
}

--Joker Card Enhancement
SMODS.Enhancement({
    key = 'jokercard',
    atlas = 'consumablesatlas',
    pos = {x = 0, y = 1},
    replace_base_card = true,
    any_suit = true,
    overrides_base_rank = true,
    calculate = function(self, card, context)
	    if context.main_scoring and context.cardarea == G.play and not self.debuff then
            local nominalvalues = {2,3,4,5,6,7,8,9,10,10,10,10,11}
            card.base.id = card:get_id()
		    return {
			    chips = nominalvalues[card.base.id - 1],
		    }
	    end
    end,
})

--Trait Card
SMODS.Enhancement({
    key = 'traitcard',
    atlas = 'consumablesatlas',
    pos = {x = 1, y = 1},
    no_collection = true,
    overrides_base_rank = true,
    config = {
        extra = {
            text = {'', '', ''},
            traits = 0,
            draw_sprite = false,
            isthisyourcard = false,
            monster = false,
            angel = false,
            copycat = false,
        }
    },
    loc_vars = function(self,info_queue,center)
        if center.ability.extra.isthisyourcard then info_queue[#info_queue+1] = G.P_CENTERS.m_bldstn_isthisyourcardenhancement end
        if center.ability.extra.monster then info_queue[#info_queue+1] = G.P_CENTERS.m_bldstn_monsterenhancement end
        if center.ability.extra.angel then info_queue[#info_queue+1] = G.P_CENTERS.m_bldstn_angelenhancement end
        if center.ability.extra.copycat then info_queue[#info_queue+1] = G.P_CENTERS.m_bldstn_copycatenhancement end
        return {vars = {center.ability.extra.text[1], center.ability.extra.text[2], center.ability.extra.text[3]},}
    end,
    calculate = function(self, card, context)
        if context.destroy_card and not context.blueprint and card.ability.extra.monster and not card.debuff then
            if #context.full_hand == 2 and context.destroy_card ~= card then
                local other_card = nil
                local flag = false
                for i = 1, #context.full_hand do
                    if context.full_hand[i] ~= card then other_card = context.full_hand[i]
                    else flag = true end
                end
                if other_card and context.destroy_card == other_card and flag then
                    G.E_MANAGER:add_event(Event({
                        trigger = 'before',
                        func = (function()
                            local edition = poll_edition('monster', nil, true, true)
                            card:set_edition(edition, true)
                            return true
                    end)}))
                    card_eval_status_text(card, 'extra', nil, nil, nil, {message = localize('bldstn_yum_text'), colour = G.C.SECONDARY_SET.Tarot})
                    return { remove = true }
                end
            end
        end
        if context.before and context.cardarea == G.play and card.ability.extra.angel and not card.debuff then
            if #context.full_hand == 1 then
                G.playing_card = (G.playing_card and G.playing_card + 1) or 1
                local _card = copy_card(context.full_hand[1], nil, nil, G.playing_card)
                _card:add_to_deck()
                G.deck.config.card_limit = G.deck.config.card_limit + 1
                table.insert(G.playing_cards, _card)
                G.deck:emplace(_card)
                _card.states.visible = nil

                G.E_MANAGER:add_event(Event({
                    func = function()
                        _card:start_materialize()
                        return true
                    end
                }))
                G.E_MANAGER:add_event(Event({
                    trigger = 'before',
                    func = (function()
                        local edition = poll_edition('angel', nil, true, true)
                        _card:set_edition(edition, true)
                        return true
                end)}))
                return {
                    message = localize('bldstn_riseangels_text'),
                    colour = G.C.WHITE,
                    card = card,
                    playing_cards_created = {true}
                }
            end
        end
        if card.ability.extra.copycat and not card.debuff then
            if context.before then
                local other_card = nil
                for i = 1, #context.full_hand do
                    if context.full_hand[i] == card then other_card = context.full_hand[i + 1]; break end
                end
                if other_card then
                    local suit_prefix = string.sub(other_card.base.suit, 1, 1)..'_'
                    local rank_suffix = other_card.base.id == 14 and 2 or math.min(other_card.base.id, 14)
                    if rank_suffix < 10 then rank_suffix = tostring(rank_suffix)
                    elseif rank_suffix == 10 then rank_suffix = 'T'
                    elseif rank_suffix == 11 then rank_suffix = 'J'
                    elseif rank_suffix == 12 then rank_suffix = 'Q'
                    elseif rank_suffix == 13 then rank_suffix = 'K'
                    elseif rank_suffix == 14 then rank_suffix = 'A'
                    end
                    card:set_base(G.P_CARDS[suit_prefix..rank_suffix])
                    if other_card.edition then card:set_edition(other_card.edition, true) end
                    if other_card.seal then card:set_seal(other_card.seal, nil, true) end
                end
            end
        end
    end,
    set_card_type_badge = function(self, card, badges)
        badges[#badges+1] = create_badge(localize('bldstn_trait_text'), G.C.GREEN, G.C.WHITE, 1)
    end,
    in_pool = function(self,wawa,wawa2)
        return false
    end,
})

--Is This Your Card Tarot
SMODS.Consumable{
    set = 'Tarot',
    atlas = 'consumablesatlas',
    key = 'isthisyourcardtarot',
    effect = 'Enhance',
    config = {mod_conv = 'm_bldstn_traitcard', max_highlighted = 1},
    pos = {x = 1, y = 0},
    loc_vars = function(self,info_queue,center)
        info_queue[#info_queue+1] = G.P_CENTERS.m_bldstn_traitcardinfo
        info_queue[#info_queue+1] = G.P_CENTERS.m_bldstn_isthisyourcardenhancement
    end,
}

--Is This Your Card 'Enhancement' (for collection and info)
SMODS.Enhancement({
    key = 'isthisyourcardenhancement',
    atlas = 'consumablesatlas',
    pos = {x = 1, y = 1},
    overrides_base_rank = true,
    set_badges = function(self, card, badges)
        badges[#badges+1] = create_badge(localize('bldstn_trait_text'), G.C.GREEN, G.C.WHITE, 1)
    end,
    in_pool = function(self,wawa,wawa2)
        return false
    end,
})

--Trait Card Info 'Enhancement'
SMODS.Enhancement({
    key = 'traitcardinfo',
    atlas = 'consumablesatlas',
    pos = {x = 1, y = 1},
    no_collection = true,
    overrides_base_rank = true,
    set_badges = function(self, card, badges)
        badges[#badges+1] = create_badge(localize('bldstn_trait_text'), G.C.GREEN, G.C.WHITE, 1)
    end,
    in_pool = function(self,wawa,wawa2)
        return false
    end,
})

--Redo Tarot
SMODS.Consumable{
    set = 'Tarot',
    atlas = 'consumablesatlas',
    key = 'redotarot',
    effect = 'Enhance',
    config = {mod_conv = 'm_bldstn_traitcard', max_highlighted = 3},
    pos = {x = 2, y = 0},
    loc_vars = function(self,info_queue,center)
        info_queue[#info_queue+1] = G.P_CENTERS.m_bldstn_traitcardinfo
    end,
}

--Monster Spectral
SMODS.Consumable{
    set = 'Spectral',
    atlas = 'consumablesatlas',
    key = 'monsterspectral',
    effect = 'Enhance',
    config = {mod_conv = 'm_bldstn_traitcard', max_highlighted = 1},
    pos = {x = 5, y = 0},
    loc_vars = function(self,info_queue,center)
        info_queue[#info_queue+1] = G.P_CENTERS.m_bldstn_traitcardinfo
        info_queue[#info_queue+1] = G.P_CENTERS.m_bldstn_monsterenhancement
    end,
}

--Monster 'Enhancement' (for collection and info)
SMODS.Enhancement({
    key = 'monsterenhancement',
    atlas = 'consumablesatlas',
    pos = {x = 1, y = 1},
    overrides_base_rank = true,
    set_badges = function(self, card, badges)
        badges[#badges+1] = create_badge(localize('bldstn_trait_text'), G.C.GREEN, G.C.WHITE, 1)
    end,
    in_pool = function(self,wawa,wawa2)
        return false
    end,
})

--Angel Spectral
SMODS.Consumable{
    set = 'Spectral',
    atlas = 'consumablesatlas',
    key = 'angelspectral',
    effect = 'Enhance',
    config = {mod_conv = 'm_bldstn_traitcard', max_highlighted = 1},
    pos = {x = 6, y = 0},
    loc_vars = function(self,info_queue,center)
        info_queue[#info_queue+1] = G.P_CENTERS.m_bldstn_traitcardinfo
        info_queue[#info_queue+1] = G.P_CENTERS.m_bldstn_angelenhancement
    end,
}

--Angel 'Enhancement' (for collection and info)
SMODS.Enhancement({
    key = 'angelenhancement',
    atlas = 'consumablesatlas',
    pos = {x = 1, y = 1},
    overrides_base_rank = true,
    set_badges = function(self, card, badges)
        badges[#badges+1] = create_badge(localize('bldstn_trait_text'), G.C.GREEN, G.C.WHITE, 1)
    end,
    in_pool = function(self,wawa,wawa2)
        return false
    end,
})

--Copycat Tarot
SMODS.Consumable{
    set = 'Tarot',
    atlas = 'consumablesatlas',
    key = 'copycattarot',
    effect = 'Enhance',
    config = {mod_conv = 'm_bldstn_traitcard', max_highlighted = 1},
    pos = {x = 3, y = 0},
    loc_vars = function(self,info_queue,center)
        info_queue[#info_queue+1] = G.P_CENTERS.m_bldstn_traitcardinfo
        info_queue[#info_queue+1] = G.P_CENTERS.m_bldstn_copycatenhancement
    end,
}

--Copycat 'Enhancement' (for collection and info)
SMODS.Enhancement({
    key = 'copycatenhancement',
    atlas = 'consumablesatlas',
    pos = {x = 1, y = 1},
    overrides_base_rank = true,
    set_badges = function(self, card, badges)
        badges[#badges+1] = create_badge(localize('bldstn_trait_text'), G.C.GREEN, G.C.WHITE, 1)
    end,
    in_pool = function(self,wawa,wawa2)
        return false
    end,
})

--Utopia Tarot
SMODS.Consumable{
    set = 'Tarot',
    atlas = 'consumablesatlas',
    key = 'utopiatarot',
    pos = {x = 4, y = 0},
    use = function(self, card, area, copier)
        if G.deck.config.card_limit > #G.deck.cards and not G.pack_cards then
            G.E_MANAGER:add_event(Event({
                func = function()
                    card:juice_up()
                    G.GAME.blind.chips = G.GAME.blind.chips / 2
                    G.GAME.blind.chip_text = number_format(G.GAME.blind.chips)
                    return true
                end
            }))
        else
            G.E_MANAGER:add_event(Event({
                func = function()
                    play_sound('timpani')
                    card:juice_up()
                    ease_dollars(10, true)
                    return true
                end
            })) 
        end
    end,
    can_use = function(self, card)
        return true
    end,
}

--Summer Joker
SMODS.Joker{
    key = 'summerjoker',
    atlas = 'jokersatlas',
    rarity = 2,
    cost = 6,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    pos = {x = 0, y = 1},
    config = { 
      extra = {
        Xmult = 1.5
      }
    },
    loc_vars = function(self,info_queue,center)
        return {vars = {center.ability.extra.Xmult,},}
    end,
    check_for_unlock = function(self, args)
        if args.type == 'Xm' then
            unlock_card(self)
        end
        unlock_card(self)
    end,
    calculate = function(self, card, context)
        if context.individual and context.cardarea == G.hand and context.other_card:is_suit('Hearts') and not context.end_of_round then
			return {
				x_mult = card.ability.extra.Xmult,
				colour = localize{type = 'variable', key = 'a_xmult', vars = {card.ability.extra.Xmult}},
				card = card,
			}
		end
    end,
    in_pool = function(self,wawa,wawa2)
        return true
    end,
}

--Winter Joker
SMODS.Joker{
    key = 'winterjoker',
    atlas = 'jokersatlas',
    rarity = 2,
    cost = 6,
    blueprint_compat = false,
    eternal_compat = true,
    perishable_compat = true,
    pos = {x = 1, y = 1},
    config = { 
      extra = {
        setProb = false
      }
    },
    loc_vars = function(self,info_queue,center)
        info_queue[#info_queue+1] = G.P_CENTERS.m_glass
        return {vars = {},}
    end,
    check_for_unlock = function(self, args)
        if args.type == 'Xm' then
            unlock_card(self)
        end
        unlock_card(self)
    end,
    calculate = function(self,card,context)
        if context.cardarea == G.jokers and context.before and not context.blueprint_card and not context.retrigger_joker then
            for k, v in ipairs(context.scoring_hand) do
			    if v:is_suit("Clubs") then
                    card.ability.extra.setProb = true
                    v:set_ability(G.P_CENTERS.m_glass, nil, true)
                    G.E_MANAGER:add_event(Event({
                        func = function()
                            v:juice_up()
                            card:juice_up()
                            return true
                        end
                    })) 
                end
		    end
        end
    end,
    in_pool = function(self,wawa,wawa2)
        return true
    end,
}

--Spring Joker
SMODS.Joker{
    key = 'springjoker',
    atlas = 'jokersatlas',
    rarity = 2,
    cost = 6,
    blueprint_compat = false,
    eternal_compat = true,
    perishable_compat = true,
    pos = {x = 2, y = 1},
    config = { 
      extra = {
      }
    },
    check_for_unlock = function(self, args)
        if args.type == 'Xm' then
            unlock_card(self)
        end
        unlock_card(self)
    end,
    calculate = function(self,card,context)
        if context.before and context.cardarea == G.jokers and not context.blueprint_card and not context.retrigger_joker then
            if #context.full_hand == 2 and context.full_hand[2]:is_suit('Diamonds') then
                for i=1, #context.full_hand do
                    G.E_MANAGER:add_event(Event({trigger = 'after',delay = 0.1,func = function() context.full_hand[i]:flip();context.full_hand[i]:juice_up(0.3, 0.3);return true end }))
                    delay(0.6)
                    G.E_MANAGER:add_event(Event({trigger = 'after',delay = 0.1,func = function() context.full_hand[i]:flip();context.full_hand[i]:juice_up(0.3, 0.3);return true end }))
                end
                local rightmost = context.full_hand[2]
                G.E_MANAGER:add_event(Event({trigger = 'after',delay = 0.15,func = function()
                    if context.full_hand[1] ~= rightmost then
                        copy_card(rightmost, context.full_hand[1])
                        card:juice_up()
                    end
                return true end }))
            end
		end
    end,
    in_pool = function(self,wawa,wawa2)
        return true
    end,
}

--Autumn Joker
SMODS.Joker{
    key = 'autumnjoker',
    atlas = 'jokersatlas',
    rarity = 2,
    cost = 6,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    pos = {x = 3, y = 1},
    config = { 
      extra = {
        Xmult = 0.1,
        Cmult = 1.00
      }
    },
    check_for_unlock = function(self, args)
        if args.type == 'Xm' then
            unlock_card(self)
        end
        unlock_card(self)
    end,
    loc_vars = function(self,info_queue,center)
        return {vars = {center.ability.extra.Xmult, center.ability.extra.Cmult,},}
    end,
    calculate = function(self,card,context)
        if context.cardarea == G.jokers and context.before and not context.blueprint then
		    for k, v in ipairs(context.scoring_hand) do
			    if v:is_suit("Spades") then
                   card.ability.extra.Cmult = card.ability.extra.Cmult + card.ability.extra.Xmult
                end
		    end
        end
        if context.joker_main then
            return{
                card = card,
                Xmult_mod = card.ability.extra.Cmult,
                message = localize{type = 'variable', key = 'a_xmult', vars = {card.ability.extra.Cmult}},
                colour = G.C.MULT
            }
        end
    end,
    in_pool = function(self,wawa,wawa2)
        return true
    end,
}

--Seasons Joker
SMODS.Joker{
    key = 'seasonsjoker',
    atlas = 'jokersatlas',
    rarity = 3,
    cost = 8,
    unlocked = false,
    blueprint_compat = false,
    eternal_compat = true,
    perishable_compat = true,
    pos = {x = 4, y = 1},
    locked_loc_vars = function(self, info_queue, card)
        return {vars = {},}
    end,
    check_for_unlock = function(self, args)
        if G.P_CENTERS.j_bldstn_summerjoker.discovered and
            G.P_CENTERS.j_bldstn_winterjoker.discovered and
            G.P_CENTERS.j_bldstn_springjoker.discovered and
            G.P_CENTERS.j_bldstn_autumnjoker.discovered then
            unlock_card(self)
        end
    end,
    in_pool = function(self,wawa,wawa2)
        return true
    end,
}

--Pick a card, any card Joker
SMODS.Joker{
    key = 'piackacardjoker', --missclick and now can't change for some reason :( [pickacardjoker]
    atlas = 'jokersatlas',
    rarity = "bldstn_power",
    cost = 10,
    blueprint_compat = false,
    eternal_compat = true,
    perishable_compat = true,
    pos = {x = 7, y = 1},
    config = { 
      extra = {
          activateable = false,
      }
    },
    check_for_unlock = function(self, args)
        if args.type == 'Xm' then
            unlock_card(self)
        end
        unlock_card(self)
    end,
	calculate = function(self, card, context)
        if context.end_of_round then
            card.ability.extra.activateable = false
        end
        if context.setting_blind then
            card.ability.extra.activateable = true
        end
	end,
    add_to_deck = function(self, card, from_debuff)
		G.hand:change_size(1)
	end,
	remove_from_deck = function(self, card, from_debuff)
		G.hand:change_size(-1)
	end,
    in_pool = function(self,wawa,wawa2)
        return true
    end,
}

--One Punch Joker
SMODS.Joker{
    key = 'onepunchjoker',
    atlas = 'jokersatlas',
    rarity = "bldstn_power",
    cost = 10,
    unlocked = true,
    blueprint_compat = false,
    eternal_compat = true,
    perishable_compat = true,
    pos = {x = 8, y = 1},
    soul_pos = {x = 9, y = 1},
    config = {
      extra = {
          activetext = 'Inactive',
          activateable = true,
          x_mult_ = 11,
          activated = false,
      }
    },
    loc_vars = function(self,info_queue,center)
        if center.ability.extra.activetext == 'Inactive' then localize("bldstn_inactive_text") end
        return {vars = {center.ability.extra.activetext, center.ability.extra.x_mult_,},}
    end,
    check_for_unlock = function(self, args)
        if args.type == 'Xm' then
            unlock_card(self)
        end
        unlock_card(self)
    end,
	calculate = function(self, card, context)
        if context.setting_blind and not card.ability.extra.activated then
            card.ability.extra.activateable = true
        end
        if context.joker_main and card.ability.extra.activated then
            card.ability.extra.activated = false
            card.ability.extra.activated_this_turn = true
            card.ability.extra.activetext = localize('bldstn_inactive_text')
            return{
                card = card,
                Xmult_mod = card.ability.extra.x_mult_,
                message = localize{type = 'variable', key = 'a_xmult', vars = {card.ability.extra.x_mult_}},
                colour = G.C.MULT
            }
        end
	end,
    in_pool = function(self,wawa,wawa2)
        return true
    end,
}

--Electric Box
SMODS.Joker{
    key = 'electricjoker',
    atlas = 'jokersatlas',
    rarity = "bldstn_power",
    cost = 10,
    blueprint_compat = false,
    eternal_compat = true,
    perishable_compat = true,
    pos = {x = 0, y = 3},
	soul_pos = { x = 1, y = 3},
    config = {
      extra = {
          activetext = 'Inactive',
          activateable = true,
          chance_to_spawn = 5,
          is_ready_to_spawn = false,
      }
    },
    loc_vars = function(self,info_queue,center)
        info_queue[#info_queue+1] = G.P_CENTERS.j_bldstn_superchargedblueprint
        if center.ability.extra.activetext == 'Inactive' then localize("bldstn_inactive_text") end
        return {vars = {center.ability.extra.activetext,center.ability.extra.chance_to_spawn,center.ability.extra.retrigger, colours = {HEX('DF00FF'),},},}
    end,
    check_for_unlock = function(self, args)
        if args.type == 'Xm' then
            unlock_card(self)
        end
        unlock_card(self)
    end,
    update = function(self, card, dt)
        if G.shop_jokers and G.shop_jokers.cards and not next(find_joker('j_bldstn_superchargedblueprint')) then
            card.ability.extra.is_ready_to_spawn = true
        else
            card.ability.extra.is_ready_to_spawn = false
        end
    end,
	calculate = function(self, card, context)
        if context.setting_blind then
            card.ability.extra.activateable = true
        end
	end,
    in_pool = function(self,wawa,wawa2)
        return true
    end,
}

--Super Charged Blueprint
SMODS.Joker{
    key = 'superchargedblueprint',
    atlas = 'jokersatlas',
    rarity = "bldstn_power",
    cost = 10,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    pos = {x = 2, y = 3},
	soul_pos = { x = 3, y = 3},
    config = {
      extra = {
          activetext = 'Inactive',
          activateable = true,
          chance_to_spawn = 5,
          retrigger = 1,
          is_ready_to_spawn = false,
      }
    },
    loc_vars = function(self,info_queue,center)
        if center.ability.extra.activetext == 'Inactive' then localize("bldstn_inactive_text") end
        return {vars = {center.ability.extra.activetext,center.ability.extra.chance_to_spawn,center.ability.extra.retrigger,colours = {HEX('DF00FF'),},},}
    end,
    check_for_unlock = function(self, args)
        if args.type == 'Xm' then
            unlock_card(self)
        end
        unlock_card(self)
    end,
    update = function(self, card, dt)
        if G.shop_jokers and G.shop_jokers.cards and not next(find_joker('j_bldstn_electricjoker')) then
            card.ability.extra.is_ready_to_spawn = true
        else
            card.ability.extra.is_ready_to_spawn = false
        end

        if pcall(function () if #G.jokers.cards > 0 then end end) then
            local elecbox = 0
            local thisspbp = 0
            local jokers_to_boost = {}
            local other_jokers = {}
            for i = 1, #G.jokers.cards do
                if G.jokers.cards[i].ability.name == 'j_bldstn_electricjoker' and elecbox == 0 then elecbox = i
                elseif G.jokers.cards[i] == card then thisspbp = i
                elseif elecbox~= 0 and thisspbp == 0 and G.jokers.cards[i].config.center.blueprint_compat then table.insert(jokers_to_boost, G.jokers.cards[i])
                else table.insert(other_jokers, G.jokers.cards[i]) end
            end

            if #jokers_to_boost <= 3 then
                for i = 1, #jokers_to_boost do
                    if jokers_to_boost[i].children.center.atlas == G.ASSET_ATLAS["Joker"] then jokers_to_boost[i].children.center.atlas = G.ASSET_ATLAS['bldstn_respriteatlas'] end
                    if jokers_to_boost[i].children.center.atlas == G.ASSET_ATLAS["bldstn_jokersatlas"] then jokers_to_boost[i].children.center.atlas = G.ASSET_ATLAS['bldstn_respriteatlas2'] end
                end
            else
                for i = 1, #jokers_to_boost do
                    if jokers_to_boost[i].children.center.atlas == G.ASSET_ATLAS["bldstn_respriteatlas"] then jokers_to_boost[i].children.center.atlas = G.ASSET_ATLAS['Joker'] end
                    if jokers_to_boost[i].children.center.atlas == G.ASSET_ATLAS["bldstn_respriteatlas2"] then jokers_to_boost[i].children.center.atlas = G.ASSET_ATLAS['bldstn_jokersatlas'] end
                end
            end
            for i = 1, #other_jokers do
                if other_jokers[i].children.center.atlas == G.ASSET_ATLAS["bldstn_respriteatlas"] then other_jokers[i].children.center.atlas = G.ASSET_ATLAS["Joker"] end
                if other_jokers[i].children.center.atlas == G.ASSET_ATLAS["bldstn_respriteatlas2"] then other_jokers[i].children.center.atlas = G.ASSET_ATLAS["bldstn_jokersatlas"] end
            end
        end
    end,
	calculate = function(self, card, context)
        if context.setting_blind then
            card.ability.extra.activateable = true
        end

        local elecbox = 0
        local thisspbp = 0
        local joker_to_boost = 0
        local joker_count = 0
        local first_joker = nil
        for i = 1, #G.jokers.cards do
            if elecbox ~= 0 and first_joker == nil then first_joker = G.jokers.cards[i] end
            if G.jokers.cards[i].ability.name == 'j_bldstn_electricjoker' and elecbox == 0 then elecbox = i end
            if G.jokers.cards[i] == card then thisspbp = i end
            if G.jokers.cards[i] == context.other_card then joker_to_boost = i end
            if elecbox ~= 0 and thisspbp == 0 and G.jokers.cards[i].ability.name ~= 'j_bldstn_electricjoker' and G.jokers.cards[i] ~= card then joker_count = joker_count + 1 end
        end

        if elecbox >= thisspbp - 4 and elecbox ~= 0 and joker_to_boost > elecbox and joker_to_boost < thisspbp then --up to 3 cards between Electric box and scbp
            if context.retrigger_joker_check and not context.retrigger_joker then
                context.blueprint = (context.blueprint and (context.blueprint + 1)) or 1
                context.blueprint_card = card
                local retrigger = (4 - joker_count)
                if joker_count == 2 then
                    if context.other_card == first_joker then
                        retrigger = 2
                    else
                        retrigger = 1
                    end
                end
                return {
                    message = localize("k_again_ex"),
                    repetitions = retrigger,
                    card = card,
                    colour = G.C.UI.TEXT_DARK
                }
            end
        end
	end,
    in_pool = function(self,wawa,wawa2)
        return true
    end,
}

--Safe
SMODS.Joker{
    key = 'safejoker',
    atlas = 'jokersatlas',
    rarity = "bldstn_power",
    cost = 10,
    blueprint_compat = false,
    eternal_compat = true,
    perishable_compat = false,
    pos = {x = 4, y = 3},
    config = {
      extra = {
          activetext = localize('k_inactive_text'),
          activateable = true,
          joker_spot1 = nil,
          joker_spot2 = nil,
          joker_spot3 = nil,

          joker_spot1_save = nil,
          joker_spot2_save = nil,
          joker_spot3_save = nil,
      }
    },
    loc_vars = function(self,info_queue,center)
        return {vars = {center.ability.extra.activetext,center.ability.extra.x_mult_,},}
    end,
    check_for_unlock = function(self, args)
        if args.type == 'Xm' then
            unlock_card(self)
        end
        unlock_card(self)
    end,
    load = function(self, card, card_table, other_card)
        set_safe_jokers()
    end,
    add_to_deck = function(self, card, from_debuff)
        local card2 = create_card('Joker', G.jokers, nil, nil, nil, nil, 'j_bldstn_placeholderjoker', '')
        local copy = copy_card(card2, nil, _scale)
        card.ability.extra.joker_spot1 = copy
        card.ability.extra.joker_spot1.edition = nil
        card.ability.extra.joker_spot2 = copy
        card.ability.extra.joker_spot2.edition = nil
        card.ability.extra.joker_spot3 = copy
        card.ability.extra.joker_spot3.edition = nil
        copy:remove()
        card2:remove()
	end,
    in_pool = function(self,wawa,wawa2)
        return true
    end,
}

--Placeholder
SMODS.Joker{
    key = 'placeholderjoker',
    atlas = 'jokersatlas',
    rarity = "bldstn_power",
    unlocked = true,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = false,
    perishable_compat = false,
    no_collection = true,
    pos = {x = 5, y = 3},
    in_pool = function(self,wawa,wawa2)
        return false
    end,
}

--Trident
SMODS.Joker{
    key = 'tridentjoker',
    atlas = 'jokersatlas',
    rarity = 2,
    cost = 6,
    blueprint_compat = false,
    eternal_compat = true,
    perishable_compat = true,
    pos = {x = 6, y = 3},
    config = {
      extra = {
          xtra_mult = 3,
          flag = false
      }
    },
    loc_vars = function(self,info_queue,center)
        return {vars = {center.ability.extra.xtra_mult,},}
    end,
    check_for_unlock = function(self, args)
        if args.type == 'Xm' then
            unlock_card(self)
        end
        unlock_card(self)
    end,
    calculate = function(self, card, context)
        if context.end_of_round then
            card.ability.extra.xtra_mult = 3
        end
        if card.ability.extra.flag then card.ability.extra.xtra_mult = card.ability.extra.xtra_mult - 1; card.ability.extra.flag = false end
        if context.joker_main and card.ability.extra.xtra_mult > 1 then
            card.ability.extra.flag = true
            return{
                card = card,
                Xmult_mod = card.ability.extra.xtra_mult,
                message = localize{type = 'variable', key = 'a_xmult', vars = {card.ability.extra.xtra_mult}},
                colour = G.C.MULT
            }
        end
    end,
    in_pool = function(self,wawa,wawa2)
        return true
    end,
}

--Lightningstone
SMODS.Joker{
    key = 'lightningstonejoker',
    atlas = 'jokersatlas',
    rarity = 2,
    cost = 7,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    pos = {x = 7, y = 3},
    config = {
      extra = {
          money = 15,
          chance = 2,
      }
    },
    loc_vars = function(self,info_queue,center)
        return {vars = {center.ability.extra.money,center.ability.extra.chance,},}
    end,
    check_for_unlock = function(self, args)
        unlock_card(self)
    end,
    calculate = function(self, card, context)
        if pseudorandom('lightningstone') < G.GAME.probabilities.normal/card.ability.extra.chance and context.end_of_round and context.cardarea == G.jokers then
            return{
                dollars = card.ability.extra.money
            }
        end
    end,
    in_pool = function(self,wawa,wawa2)
        return true
    end,
}

--Seastone
SMODS.Joker{
    key = 'seastonejoker',
    atlas = 'jokersatlas',
    rarity = 2,
    cost = 7,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    pos = {x = 8, y = 3},
    config = {
      extra = {
          chips = 100,
          chance = 2,
      }
    },
    loc_vars = function(self,info_queue,center)
        return {vars = {center.ability.extra.chips,center.ability.extra.chance,},}
    end,
    check_for_unlock = function(self, args)
        unlock_card(self)
    end,
    calculate = function(self, card, context)
        if pseudorandom('seastone') < G.GAME.probabilities.normal/card.ability.extra.chance and context.individual and context.cardarea == G.play and context.other_card:is_suit("Clubs") then
            return{
                chips = card.ability.extra.chips
            }
        end
    end,
    in_pool = function(self,wawa,wawa2)
        return true
    end,
}

--Plasmastone
SMODS.Joker{
    key = 'plasmastonejoker',
    atlas = 'jokersatlas',
    rarity = 2,
    cost = 7,
    blueprint_compat = false,
    eternal_compat = true,
    perishable_compat = true,
    pos = {x = 9, y = 3},
    config = {
      extra = {
          rerolls = 0,
          chance = 2,
      }
    },
    loc_vars = function(self,info_queue,center)
        return {vars = {center.ability.extra.rerolls,center.ability.extra.chance,},}
    end,
    check_for_unlock = function(self, args)
        unlock_card(self)
    end,
    calculate = function(self, card, context)
        if context.reroll_shop then
            if card.ability.extra.rerolls >= 1 then
                if pseudorandom('plasmastone') < G.GAME.probabilities.normal/card.ability.extra.chance then
                    G.GAME.current_round.free_rerolls = G.GAME.current_round.free_rerolls + 1
                    calculate_reroll_cost(true)
                    card:juice_up()
                    card_eval_status_text(card, 'extra', nil, nil, nil, {message = G.localization.misc.dictionary.bldstn_free_reroll, colour = G.C.GREEN})
                end
                card.ability.extra.rerolls = 0
            elseif card.ability.extra.rerolls < 2 then
                card.ability.extra.rerolls = card.ability.extra.rerolls + 1
            end
        end
    end,
    in_pool = function(self,wawa,wawa2)
        return true
    end,
}

--Time Joker
SMODS.Joker{
    key = 'timejoker',
    atlas = 'jokersatlas',
    rarity = 4,
    cost = 20,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    pos = {x = 5, y = 1},
    soul_pos = {x = 6, y = 1},
    check_for_unlock = function(self, args)
        if args.type == 'Xm' then
            unlock_card(self)
        end
        unlock_card(self)
    end,
	calculate = function(self, card, context)
        if context.setting_blind then
            G.GAME.blind.chips = get_blind_amount(G.GAME.round_resets.ante - 2) * G.GAME.starting_params.ante_scaling
            if G.GAME.round_resets.blind_states.Big == 'Current' or G.GAME.round_resets.blind_states.Big == localize('Current') then G.GAME.blind.chips = G.GAME.blind.chips * 1.5 end
            if (G.GAME.round_resets.blind_states.Boss == 'Current' or G.GAME.round_resets.blind_states.Boss == localize('Current')) and G.GAME.blind.name ~= 'The Needle' then G.GAME.blind.chips = G.GAME.blind.chips * 2 end
            if G.GAME.blind.name == 'The Wall' then G.GAME.blind.chips = G.GAME.blind.chips * 2 end
            if G.GAME.blind.name == 'Violet Vessel' then G.GAME.blind.chips = G.GAME.blind.chips * 3 end
            G.GAME.blind.chip_text = number_format(G.GAME.blind.chips)
        end
	end,
    in_pool = function(self,wawa,wawa2)
        return true
    end,
}

SMODS.Joker:take_ownership('certificate', -- certificate doesn't work for some reason (super annoying) *took me way too long to fix this
    {
    config = {
      extra = {
          draw_extra_cards = 1,
      }
    },
	calculate = function(self, card, context)
        if context.setting_blind and context.blueprint_card then card.ability.extra.draw_extra_cards = card.ability.extra.draw_extra_cards + 1 end
	end
    },
    true
)

function CardArea:change_size(delta)
    if delta ~= 0 then 
        G.E_MANAGER:add_event(Event({
            func = function() 
                self.config.real_card_limit = (self.config.real_card_limit or self.config.card_limit) + delta
                self.config.card_limit = math.max(0, self.config.real_card_limit)
                if delta > 0 and #G.hand.cards < self.config.real_card_limit and self.config.real_card_limit > 1 and self == G.hand and self.cards[1] and (G.STATE == G.STATES.DRAW_TO_HAND or G.STATE == G.STATES.SELECTING_HAND) then 
                    local card_count = math.abs(delta)
                    for i=1, card_count do
                        draw_card(G.deck,G.hand, i*100/card_count,nil, nil , nil, 0.07)
                        G.E_MANAGER:add_event(Event({func = function() self:sort() return true end}))
                    end
                end
                if self == G.hand then check_for_unlock({type = 'min_hand_size'}) end
        return true
        end}))
    end
end

----------------------------------------------
------------MOD CODE END----------------------