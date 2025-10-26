--- STEAMODDED HEADER
--- MOD_NAME: Balabubu
--- MOD_ID: Balabubu
--- MOD_AUTHOR: [Kyler08281, TJbuddy, EthanJ, TeddyD]
--- MOD_DESCRIPTION: Balabubu
--- VERSION: 1.0.0

----------------------------------------------
------------ MOD CODE -------------------------
sendDebugMessage("=== SMODS.INIT CHECK IN DEV.LUA ===")
sendDebugMessage("SMODS exists: " .. tostring(SMODS ~= nil))
if SMODS then
    sendDebugMessage("SMODS.INIT exists: " .. tostring(SMODS.INIT ~= nil))
end
function SMODS.INIT.Colors()

    local r = math.random(3)
    local balabubu = SMODS.findModByID("Balabubu")
    local png_path = "" 
    if(r == 1) then
        png_path = "balatro.png"
    elseif(r == 2) then
        png_path = "buh.png"
    else
        png_path = "balala.png"
    end
    local balabubu_balatro = SMODS.Sprite:new("balatro", balabubu.path, png_path, 333, 216, "asset_atli")
    
    balabubu_balatro:register()

end

----------------------------------------------
------------ END MOD CODE ----------------------