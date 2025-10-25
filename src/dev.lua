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
    apply = function(self)
        G.E_MANAGER:add_event(Event({
            func = function()
                -- Make all cards rank 4
                for _, card in ipairs(G.playing_cards) do
                    assert(SMODS.change_base(card, nil, self.config.only_one_rank))
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
    end
}
