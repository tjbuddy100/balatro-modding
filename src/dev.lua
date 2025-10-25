SMODS.Back {
    key = "red",
    loc_txt = {
		name = 'balls',
		text = {
			"no bitches?"
		}
	},
    pos = { x = 0, y = 0 },
    config = { discards = 1 },
    loc_vars = function(self, info_queue, back)
        return { vars = { self.config.discards } }
    end,
    apply = function(self)
        G.E_MANAGER:add_event(Event({
            trigger = 'after',
            delay = 0.2,
            func = function()
                if G.jokers then
                    --everything is referenced as j_modname_jokerName, deck is d_modname_deckName
                    local card = SMODS.create_card({set = "Joker", area = G.jokers, key = "j_dev_brut"})
                    card:add_to_deck()
                    card:start_materialize()
                    G.jokers:emplace(card)
                end
                return true
            end
        }))
    end,
    
}
