
SMODS.Back {
    name = "Deck of Fours",
    key = "fours",
    pos = {x = 1, y = 3},
    config = {only_one_rank = '4'},
    loc_txt = {
        name = "Deck of Fours",
        text = {
            "Start with a Deck",
            "full of {C:attention}Fours{}",
            "and the {C:attention}Four{} Joker"
        },
    },
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
                -- Make all cards rank 4
                if G.jokers then
                    --everything is referenced as j_modname_jokerName, deck is d_modname_deckName
                    local card = SMODS.create_card({set = "Joker", area = G.jokers, key = "j_dev_brut"})
                    card:add_to_deck()
                    card:start_materialize()
                    G.jokers:emplace(card)
                end

                -- ✅ Spawn the Four Joker properly
                -- Create the specific Joker by its key
                local joker = SMODS.create_card({
                set = "Joker",
                key = "j_dev_four",
                area = G.jokers
                })
                G.jokers:emplace(joker)
                return true
            end
        }))
    end,
    
}

