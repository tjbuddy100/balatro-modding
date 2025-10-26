assert(SMODS.load_file("src/jokers.lua"))()
assert(SMODS.load_file("src/j_brut.lua"))()
assert(SMODS.load_file("src/dev.lua"))()
assert(SMODS.load_file("src/blinds.lua"))()

sendDebugMessage("🎯 DEV MOD: load.lua executing - FIRST THING")

-- load.lua
SMODS.Atlas {
    key = "four", -- matches what you used above
    path = "four.png",
    px = 69, py = 93
}

SMODS.Atlas {
    key = "brut", -- matches what you used above
    path = "brutus.png",
    px = 69, py = 93
}

SMODS.Atlas {
    key = "oldBrut", -- matches what you used above
    path = "oldBrutus.png",
    px = 69, py = 93
}
