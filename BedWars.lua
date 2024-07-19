-- Based on Orion UI by hub but exitst owner

repeat task.wait() until game:IsLoaded()

OrionLib:MakeNotification({Name = "Metter Hub | Warning",Content = "I am not responsible for the fact that you can get banned! You do everything at your own risk!",Image = "rbxassetid://7733658504",Time = 7})

local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/ionlyusegithubformcmods/1-Line-Scripts/main/Mobile%20Friendly%20Orion')))()
local Window = OrionLib:MakeWindow({Name = "Metter Hub | BedWars", HidePremium = false, IntroEnabled = false, SaveConfig = false, ConfigFolder = "MetterHub"})
local Home = Window:MakeTab({
                    Name = "Home",
                    Icon = "http://www.roblox.com/asset/?id=4370345144",
                    PremiumOnly = false
})
                
local Universal = Window:MakeTab({
                    Name = "Universal",
                    Icon = "http://www.roblox.com/asset/?id=4370318685",
                    PremiumOnly = false
})

local BedWars = Window:MakeTab({
                    Name = "Bed Wars",
                    Icon = "http://www.roblox.com/asset/?id=4370318685",
                    PremiumOnly = false
})
                
Home:AddLabel("Thank you for using the Metter Hub!")

Universal:AddDropdown({
	Name = "Infinity Yield",
	Default = "",
	Options = {"Execute", "Copy"},
	Callback = function(Value)
if Value == "Execute" then
loadstring(game:HttpGet('https://raw.githubusercontent.com/ionlyusegithubformcmods/1-Line-Scripts/main/Infinite%20Yield%20but%20with%20secure%20dex'))()
elseif Value == "Copy" then
setclipboard("loadstring(game:HttpGet('https://raw.githubusercontent.com/ionlyusegithubformcmods/1-Line-Scripts/main/Infinite%20Yield%20but%20with%20secure%20dex'))()")
end
	end    
})

Universal:AddDropdown({
	Name = "Nameless Admin",
	Default = "",
	Options = {"Execute"},
	Callback = function(Value)
if Value == "Execute" then
loadstring(game:HttpGet("https://raw.githubusercontent.com/FilteringEnabled/NamelessAdmin/main/Source"))();
	end    
})

Universal:AddButton({
	Name = "Rejoin Server",
	Callback = function()
      		game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, game.JobId, game.Players.LocalPlayer)
  	end    
})

Home:AddButton({
	Name = "Destroy GUI",
	Callback = function()
      		OrionLib:Destroy()
  	end    
})

Home:AddButton({
	Name = "Our Discord server",
	Callback = function()
      		setclipboard("https://discord.gg/SxsumwaUJr")
  	end    
})

BedWars:AddDropdown({
	Name = "AlSploit",
	Default = "",
	Options = {"Execute"},
	Callback = function(Value)
if Value == "Execute" then
loadstring(game:HttpGet("https://raw.githubusercontent.com/AlSploit/AlSploit/main/AlSploit/Bedwars/Loader.lua",true))()
	end    
})

BedWars:AddDropdown({
	Name = "VoidVare Rise | PC Only",
	Default = "",
	Options = {"Execute"},
	Callback = function(Value)
if Value == "Execute" then
loadstring(game:HttpGet("https://raw.githubusercontent.com/VapeVoidware/RiseForRoblox/main/main.lua", true))()
	end    
})

BedWars:AddDropdown({
	Name = "VoidVare Vape",
	Default = "",
	Options = {"Execute"},
	Callback = function(Value)
if Value == "Execute" then
loadstring(game:HttpGet("https://raw.githubusercontent.com/VapeVoidware/vapevoidware/main/NewMainScript.lua", true))()
	end    
})

Universal:AddSlider({
	Name = "Walkspeed",
	Min = 20,
	Max = 1000,
	Default = 20,
	Color = Color3.fromRGB(140, 185, 255),
	Increment = 1,
	ValueName = "WS",
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
Walkspeed = Value
	end    
})

Universal:AddToggle({
	Name = "Keep Walkspeed",
	Default = false,
	Callback = function(Value)
KeepWalkspeed = Value
            while KeepWalkspeed do
                if game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") ~= nil and game.Players.LocalPlayer.Character.Humanoid.WalkSpeed ~= Walkspeed then
                    game.Players.LocalPlayer.Character:FindFirstChild("Humanoid").WalkSpeed = Walkspeed
                end
task.wait()
            end
	end    
})

Universal:AddSlider({
	Name = "Jumppower",
	Min = 50,
	Max = 1000,
	Default = 50,
	Color = Color3.fromRGB(255, 185, 140),
	Increment = 1,
	ValueName = "JP",
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
Jumppower = Value
	end    
})

Universal:AddToggle({
	Name = "Keep Jumppower",
	Default = false,
	Callback = function(Value)
KeepJumppower = Value
            while KeepJumppower do
                if game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") ~= nil and game.Players.LocalPlayer.Character.Humanoid.WalkSpeed ~= Jumppower then
                    game.Players.LocalPlayer.Character:FindFirstChild("Humanoid").WalkSpeed = Jumppower
                end
task.wait()
            end
	end    
})
end
for i,v in pairs(gethui().Orion:GetDescendants()) do
                    if v.ClassName == "Frame" and v.BackgroundTransparency < 0.3 then
v.BackgroundTransparency = 0.05
                    end
                end
for i,v in pairs(gethui().Orion:GetDescendants()) do
                    if v.ClassName == "Frame" and v.BackgroundTransparency < 0.3 and v.BackgroundColor3 == Color3.fromRGB(32, 32, 42) then
v.BackgroundTransparency = 1
                    end
                end
gethui().Orion.Name = "Metter Hub"
