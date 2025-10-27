assert(SMODS.load_file("src/jokers.lua"))()
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

SMODS.Atlas {
    key = "labubu1", -- matches what you used above
    path = "labubu1.png",
    px = 69, py = 93
}

SMODS.Atlas({
    key = "fours", -- matches what you used above
    path = "fours.png",
    px = 71, 
    py = 95,
})

SMODS.Atlas({
    key = "doom", -- matches what you used above
    path = "doom.png",
    px = 71, 
    py = 95,
})
