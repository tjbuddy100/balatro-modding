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
    boss_colour = HEX("a33795"),

    calculate = function(self, blind, context)
        if not blind.disabled and context.scoring_hand and #context.scoring_hand > 0 then

            -- top face is the highest face card, 0 for none, j = 1, q = 2, k = 3
            local jc = 0
            local qc = 0
            local kc = 0

            for _, card in pairs(context.scoring_hand) do
                local id = card:get_id()
                if id == "J" then
                    jc = jc + 1
                end
                if id == "Q" then
                    qc = qc + 1
                end
                if id == "K" then
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