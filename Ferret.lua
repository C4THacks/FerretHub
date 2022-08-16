local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()

local Window = Library.CreateLib("Ferret Hub | Nico's Nextbots")

local Player = game.Players.LocalPlayer
local Character = Player.Character

local Movement = Window:NewTab("Movement")
local MovementSection = Movement:NewSection("OP Stuff")

local TPS = Window:NewTab("TPS")
local TPSection = TPS:NewSection("TPSection")

local FunTab = Window:NewTab("Fun")
local FSection = FunTab:NewSection("Scary")

local VersionsTab = Window:NewTab("Versions")
local VSection = VersionsTab:NewSection("Versions")

MovementSection:NewButton("Speed [Z]", "OP Module", function()
   
   local userInput = game:service('UserInputService')
            local runService = game:service('RunService')
            
            userInput.InputBegan:connect(function(Key)
                if Key.KeyCode == Enum.KeyCode.Z then
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


MovementSection:NewTextBox("Speed Multiplier", " ", function(txt)
    getgenv().Multiplier = txt
end)

MovementSection:NewLabel("1-3 - Recommended Speed.")

MovementSection:NewToggle("Auto Sprint", " ", function(state)
    if state then
        Character.scripts.running.Value = true
        game.StarterPlayer.StarterPlayerScripts.options.runtoggle.Value = false
    else
        Character.scripts.running.Value = false
    end
end)

TPSection:NewButton("Garage Floor 1 ", " ", function()
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(275, 34, 278)
end)


TPSection:NewButton("Garage Floor 2 ", " ", function()
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(252, 57, 279)
end)



TPSection:NewButton("Garage Floor 3 ", " ", function()
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(260, 80, 277)
end)

FSection:NewButton("Disable Ragdoll", " ", function()
    game.StarterPlayer.StarterCharacterScripts.scripts.ragdoll.Enabled = false
end)

VSection:NewButton("Da Hood Version", "The Da Hood version of Ferret Hub.", function()
    local DHWindow = Library.CreateLib("Ferret Hub | Da Hood", "BloodTheme")
end)

FSection:NewButton("Teleport", " ", function()
    FSection:NewTextBox("Player to teleport to", " ", function(txt)
        if game.Workspace:WaitForChild(txt.Name) then
             Character.HumanoidRootPart.CFrame = game.Workspace:WaitForChild(txt.Name).HumanoidRootPart.CFrame 
        end
end)
end)
