assert(SMODS.load_file("src/jokers.lua"))()
assert(SMODS.load_file("src/dev.lua"))()

sendDebugMessage("🎯 DEV MOD: load.lua executing - FIRST THING")

-- load.lua
SMODS.Atlas {
    key = "four", -- matches what you used above
    path = "four.png",
    px = 69, py = 93
}
-- Wait for Steamodded to be fully ready
sendDebugMessage("=== SMODS.INIT CHECK ===")
sendDebugMessage("SMODS exists: " .. tostring(SMODS ~= nil))
if SMODS then
    sendDebugMessage("SMODS.INIT exists: " .. tostring(SMODS.INIT ~= nil))
    sendDebugMessage("SMODS keys: " .. tostring(SMODS.INIT ~= nil))
end

