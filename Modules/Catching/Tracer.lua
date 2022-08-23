local Tracer = {}

--// UI Setup
--// UI Setup
do
    local TracerSection = Variables.CatchingTab:AddSection("Tracer")
    TracerSection:AddToggle("Enabled", {flag = "Tracer_Enabled"}, function() end)
end

return Tracer 