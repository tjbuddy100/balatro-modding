SMODS.Joker {
	key = 'brut',
	loc_txt = {
		name = 'Joker 2',
		text = {
			"{C:mult}+#1# {} Mult"
		}
	},
	config = { extra = { mult = 4 }},
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.mult } }
	end,
    discovered = true,
    unlocked = true,
	rarity = 1,
	cost = 2,
	calculate = function(self, card, context)
		if context.joker_main then
			return {
				mult_mod = card.ability.extra.mult,
				message = localize { type = 'variable', key = 'a_mult', vars = { card.ability.extra.mult } }
				}
		end
	end
}