local Mags = {}

--// UI Setup
do
    local MagSection = Variables.CatchingTab:AddSection("Mags")
    MagSection:AddToggle("Enabled", {flag = "Mags_Enabled"}, function() end)
    MagSection:AddSlider("Distance", 1, 40, 8, {flag = "Mags_Distance"}, function() end) 
    MagSection:AddBind("Toggle key", Enum.KeyCode.Q, {flag = "Mags_ToggleKey", toggleable = true, fireontoggle = true}, function()
        print("yes!")
    end)
end

return Mags 