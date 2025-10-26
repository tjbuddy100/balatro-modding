SMODS.Joker {
    key = "brut",
	loc_txt = {
		name = 'balls',
		text = {
			"raises everything to ^40. GoodLuck :)"
		}
	},
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