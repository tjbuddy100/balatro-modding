SMODS.Back{
    name = "Deck of fours",
    key = "fours",
    pos = {x = 1, y = 3},
    config = {only_one_rank = '4', joker = 'BRUTUS'},
    loc_txt = {
        name ="Deck of fours",
        text={
            "Start with a Deck",
            "full of {C:attention}Fours{}",
        },
    },
    discovered = true,
    unlocked = true,
    apply = function(self, back)
        G.E_MANAGER:add_event(Event({
            func = function()
                
				if G.jokers then
			        
                    local card =  SMODS.create_card({set = "Joker", area = G.jokers, key = 'brut', key_append = 'dev'})
                    card:add_to_deck()
					card:start_materialize()
					G.jokers:emplace(card)
                    
                end
                for _, card in ipairs(G.playing_cards) do
                    assert(SMODS.change_base(card, nil, self.config.only_one_rank))
                end
                return true
            end
        }))
    end
}