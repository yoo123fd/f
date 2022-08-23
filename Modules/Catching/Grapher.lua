local Grapher = {}

--// UI Setup
do
    local GrapherSection = Variables.CatchingTab:AddSection("Grapher")
    GrapherSection:AddToggle("Enabled", {flag = "Grapher_Enabled"}, function() end)
end

function Grapher:C()
    
end

return Grapher 