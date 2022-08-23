local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
getgenv().Variables = {
    Players = game:GetService("Players"),
    ReplicatedStorage = game:GetService("ReplicatedStorage"),
    Client = Players.LocalPlayer,
    Character = Players.LocalPlayer.Client.Character or Players.LocalPlayer.CharacterAdded:Wait()
}

Variables.Client.CharacterAdded:Connect(function(Character)
    Variables.Character = Character 
end)


local success