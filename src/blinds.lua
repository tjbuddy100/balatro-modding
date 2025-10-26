-- custom blinds

--[[ The Champ: hands will only score if there is a clear "champ". 
champ is the highest face card
must be unique (cannot have another card of the same rank)
duplicates of lower face cards are ok
]]--
SMODS.Blind {
    key = "champ",
    dollars = "5";
    mult = "2";


    boss = {min = 1},
    boss_colour = HEX('A33795'),

    calculate = function(self, blind, context)
        if not blind.disabled and context.scoring_hand and #context.scoring_hand > 0 then

            -- top face is the highest face card, 0 for none, j = 1, q = 2, k = 3
            local jc = 0
            local qc = 0
            local kc = 0

            for _, card in pairs(context.scoring_hand) do
                local id = card.base.value
                if id == 'J' then
                    jc = jc + 1
                end
                if id == 'Q' then
                    qc = qc + 1
                end
                if id == 'K' then
                    kc = kc + 1
                end
            end

            if kc ~= 1 then
                return {debuff = true}
            end
            if qc ~= 1 then
                return {debuff = true}
            end
            if jc ~= 1 then
                return {debuff = true}
            end


        end
        

    end
}

-- The Ox
SMODS.Blind {
    key = "oxo",
    dollars = 5,
    mult = 2,
    pos = { x = 0, y = 2 },
    boss = { min = 1 },
    boss_colour = HEX("b95b08"),
    loc_vars = function(self)
        return { vars = { localize(G.GAME.current_round.most_played_poker_hand, 'poker_hands') } }
    end,
    collection_loc_vars = function(self)
        return { vars = { localize('ph_most_played') } }
    end,
    calculate = function(self, blind, context)
        if not blind.disabled then
            if context.debuff_hand then
                blind.triggered = false
                if context.scoring_name == G.GAME.current_round.most_played_poker_hand then
                    blind.triggered = true
                    if not context.check then
                        ease_dollars(-G.GAME.dollars, true) -- `return {dollars = -G.GAME.dollars}` lacks the ability to set the amount instantly
                        blind:wiggle()
                    end
                end
            end
        end
    end
}