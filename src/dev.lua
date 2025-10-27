
SMODS.Back {
    name = "Deck of Fours",
    key = "fours",
    atlas = "fours",
    pos = {x = 0, y = 0},
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
            trigger = 'after',
            delay = 0.2,
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
                area = G.jokers,
                })
                G.jokers:emplace(joker)
                return true
            end
        }))
    end
}

SMODS.Back {
    name = "Deck of Doom",
    key = "doom",
    atlas = "doom",
    pos = {x = 0, y = 0},
    config = {},
    loc_txt = {
        name = "Deck of Doom",
        text = {
            "Doom."
        },
    },
    apply = function(self)
        G.E_MANAGER:add_event(Event({
            trigger = 'after',
            delay = 0.2,
            func = function()

                -- ✅ Spawn the old brutus joker properly
                -- Create the specific Joker by its key
                local joker = SMODS.create_card({
                set = "Joker",
                key = "j_dev_oldBrut",
                area = G.jokers,
                stickers = {'eternal'},
                edition = 'e_negative',
                force_stickers = true
                })
                G.jokers:emplace(joker)
                
                return true
            end
        }))
    end
}
