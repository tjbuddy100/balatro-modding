
assert(SMODS.load_file("src/jokers.lua"))()
assert(SMODS.load_file("src/dev.lua"))()

-- load.lua
SMODS.Atlas {
    key = "four", -- matches what you used above
    path = "four.png",
    px = 69, py = 93
}

print("✅ Loaded custom jokers from src/jokers.lua and src/dev.lua")
for k, v in pairs(G.P_CENTERS) do
    if k:find("j_dev") then
        print("✅ Found Joker in registry:", k)
    end
end