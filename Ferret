local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()

local Window = Library.CreateLib("Ferret Hub | Da Hood", "Ocean")

local Player = game.Players.LocalPlayer
local Character = Player.Character

local Movement = Window:NewTab("Movement")
local MovementSection = Movement:NewSection("OP Stuff")

local TPS = Window:NewTab("TPS")
local TPSection = TPS:NewSection("TPSection")

MovementSection:NewButton("Speed [X]", "OP Module", function()
   
   local userInput = game:service('UserInputService')
            local runService = game:service('RunService')
            
            userInput.InputBegan:connect(function(Key)
                if Key.KeyCode == Enum.KeyCode.X then
                    Enabled = not Enabled
                    if Enabled == true then
                        repeat
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame + game.Players.LocalPlayer.Character.Humanoid.MoveDirection * getgenv().Multiplier
                            runService.Stepped:wait()
                        until Enabled == false
                    end
                end
            end)
   
end)

MovementSection:NewTextBox("Speed Multiplier", " ", function(value)
    getgenv().Multiplier = value / 2
end)

local Choices = {
    "Iphone Shop"
}

TPSection:NewButton("I-Phone Store", " ", function()
    Player.Character.HumanoidRootPart.CFrame = CFrame.new(-105, 22, -871)
    Player.Character.HumanoidRootPart.CFrame = Player.Character.HumanoidRootPart.CFrame * CFrame.Angles(0, 90, 0)
end)
