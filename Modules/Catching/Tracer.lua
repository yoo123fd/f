local Tracer = {}

--// UI Setup
--// UI Setup
do
    local TracerSection = Variables.CatchingTab:AddSection("Tracer")
    TracerSection:AddToggle("Enabled", {flag = "Tracer_Enabled"}, function() end)
end

function Tracer:AttachBall(Ball)
    local RootPart = Variables.Character and Variables.Character.PrimaryPart
    if RootPart then
        if Ball then
            local Tracer = Drawing.new("Line")
            Tracer.Visible = false
            Tracer.Color = Color3.fromRGB(255, 0, 0)
            Tracer.Thickness = 1
            Tracer.Transparency = 1

            local con; con = game:GetService("RunService").RenderStepped:Connect(function()
                if RootPart.Parent ~= nil and Ball.Parent ~= nil then
                    local Vector, OnScreen = workspace.CurrentCamera:WorldToViewportPoint(Ball.Position)
                    local Vector2_, OnScreen2 = workspace.CurrentCamera:WorldToViewportPoint(RootPart.Position)

                    if OnScreen and OnScreen2 then
                        Tracer.From = Vector2.new(Vector2_.X, Vector2_.Y)
                        Tracer.To = Vector2.new(Vector.X, Vector.Y)
                        Tracer.Visible = true 
                    else
                        Tracer.Visible = false
                    end
                else
                    con:Disconnect()
                    Tracer.Visible = false
                end
            end)
        end
    end
end

do
    workspace.ChildAdded:Connect(function(child)
        if child.Name == "Football" and Variables.CatchingTab.Flags["Tracer_Enabled"] then
            Tracer:AttachBall(child)
        end
    end)
end

return Tracer 