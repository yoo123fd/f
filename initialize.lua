warn("Is this running?")
getgenv().Variables = {}

Variables.Players = game:GetService("Players")
Variables.ReplicatedStorage = game:GetService("ReplicatedStorage")
Variables.Client = Variables.Players.LocalPlayer
Variables.Character = Variables.Client.Character or Variables.Client.CharacterAdded:Wait()

Variables.Client.CharacterAdded:Connect(function(Character)
    Variables.Character = Character 
end)

Variables.Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/UI-Libraries/main/Vynixius/Source.lua"))()
Variables.Window = Variables.Library:AddWindow({
    title = {
        "tobiware",
        "Football Fusion 2"
    },
    default = true,
    theme = {
        Accent = Color3.fromRGB(255, 128, 0),
		TopbarColor = Color3.fromRGB(20, 20, 20),
		SidebarColor = Color3.fromRGB(15, 15, 15),
		BackgroundColor = Color3.fromRGB(10, 10, 10),
		SectionColor = Color3.fromRGB(20, 20, 20),
		TextColor = Color3.fromRGB(255, 255, 255),
		Objects = {},
    }
})

Variables.CatchingTab = Variables.Window:AddTab("Catching")
Variables.Physics = Variables.Window:AddTab("Physics") 
Variables.Kicking = Variables.Window:AddTab("Kicking")
warn("Okay!")
-- // Bootup

Variables.Mags = loadstring(game:HttpGet("https://raw.githubusercontent.com/yoo123fd/f/master/Modules/Catching/Mags.lua"))()
Variables.Grapher = loadstring(game:HttpGet("https://raw.githubusercontent.com/yoo123fd/f/master/Modules/Catching/Grapher.lua"))()
Variables.Aimbot = loadstring(game:HttpGet("https://raw.githubusercontent.com/yoo123fd/f/master/Modules/Kicking/Aimbot.lua"))()
Variables.Boost = loadstring(game:HttpGet("https://raw.githubusercontent.com/yoo123fd/f/master/Modules/Physics/Boost.lua"))()
Variables.DynamicJump = loadstring(game:HttpGet("https://raw.githubusercontent.com/yoo123fd/f/master/Modules/Physics/DynamicJump.lua"))()
warn("G!")