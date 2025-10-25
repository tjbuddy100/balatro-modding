SMODS.Joker {
    key = "brut",
	loc_txt = {
		name = 'balls',
		text = {
			"no bitches?"
		}
	},
	pixel_size = { h = 200, w = 200 },
    pos = { x = 0, y = 0 },
    rarity = 1,
    blueprint_compat = true,
    cost = 2,
    config = { extra = { x_mult = 5 }, },
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.x_mult } }
    end,
    calculate = function(self, card, context)
		
        if context.joker_main then
            return {
                xmult = card.ability.extra.x_mult

            }
        end
    end
}