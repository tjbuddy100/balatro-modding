-- src/jokers.lua

SMODS.Joker {
    key = "four", -- unique internal ID
    name = "Four", -- display name
    atlas = "four", -- refers to your PNG atlas in /assets
    pos = {x = 0, y = 0}, -- location on sprite sheet (0,0 if single image)
    rarity = 3, -- 1 = common, 2 = uncommon, 3 = rare
    cost = 5,
    blueprint_compat = true,
    perishable_compat = true,
    blueprint_compat = true,
    always_discovered = true,
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
SMODS.Joker {
    key = "brut",
    atlas = "brut",
    name = "Brutus",
	loc_txt = {
		name = 'balls',
		text = {
			"no bitches???"
		}
	},
    blueprint_compat = true,
    always_discovered = true,
    pos = { x = 0, y = 0 },
    rarity = 1,
    blueprint_compat = true,
    cost = 2,
    config = { extra = { x_mult = 40} },
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.x_mult} }
    end,
    calculate = function(self, card, context)
        if context.joker_main then
            return{
                mult = mult ^ card.ability.extra.x_mult
            }
        end
    end
}
    SMODS.Joker {
    key = "oldBrut",
    atlas = "oldBrut",
	loc_txt = {
		name = 'Old Brutus',
		text = {
			"Oh no..."
		}
	},
    pos = { x = 0, y = 0 },
    rarity = 4,
    blueprint_compat = true,
    always_discovered = true,
    cost = 2,
    config = { extra = {x_mult = 0}, },
        -- Gameplay effect
    calculate = function(self, card, context)
        if context.joker_main then
            return 
            {xmult = card.ability.extra.x_mult,
            message = "x" .. tostring(card.ability.extra/x_mult)
            }
        end
    end
}

    SMODS.Joker {
    key = "labubu1", -- unique internal ID
    name = "Labubu", -- display name
    atlas = "labubu1", -- refers to your PNG atlas in /assets
    pos = {x = 0, y = 0}, -- location on sprite sheet (0,0 if single image)
    rarity = 1, -- 1 = common, 2 = uncommon, 3 = rare
    cost = 5,
    blueprint_compat = true,
    perishable_compat = true,
    always_discovered = true,
    config = {},

    -- Joker description
    loc_txt = {
        name = "Labubu",
        text = {
            "It is rumored that if you collect 5 Labubus, you will gain infinite power..."
            }
    },
}
