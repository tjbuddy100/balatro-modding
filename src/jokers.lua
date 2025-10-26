-- src/jokers.lua

SMODS.Joker {
    key = "four", -- unique internal ID
    name = "Four", -- display name
    atlas = "four", -- refers to your PNG atlas in /assets
    pos = {x = 0, y = 0}, -- location on sprite sheet (0,0 if single image)
    rarity = 1, -- 1 = common, 2 = uncommon, 3 = rare
    cost = 5,
    blueprint_compat = true,
    perishable_compat = true,
    config = {},

    -- Joker description
    loc_txt = {
        name = "Four",
        text = {
            "Gives {X:mult,C:white}X{C:mult}4{} Mult"
        }
    },

    -- Gameplay effect
    calculate = function(self, card, context)
        if context.joker_main then
            return 
            {xmult = 4,
            message = "x4 Mult"-- Alternatively, use SMODS.format_loc( ...
            }
        end
    end
}
print("✅ Registered Joker:", "j_" .. SMODS.current_mod.id .. "_ethan_four")
