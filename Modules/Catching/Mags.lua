local UserInputService = game:GetService("UserInputService")
local Mags = {}

--// UI Setup
do
    local LastChanged = 0

    local MagSection = Variables.CatchingTab:AddSection("Mags")
    local place0 = MagSection:AddToggle("Enabled", {flag = "Mags_Enabled"}, function() end)
    local place1 = MagSection:AddSlider("Distance", 1, 40, 8, {flag = "Mags_Distance"}, function() end) 
    local place = MagSection:AddBind("Toggle key", Enum.KeyCode.Q, {flag = "Mags_ToggleKey"}, function()
        LastChanged = tick()
    end)

    UserInputService.InputBegan:Connect(function(input, gameProcessedEvent)
        if not gameProcessedEvent then
            if input.KeyCode == place.Bind and tick() - LastChanged >= .3 then
                place0:Set(not Variables.CatchingTab.Flags["Mags_Enabled"], false)
            end
        end
    end)
end

return Mags 