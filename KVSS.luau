local Players = game:GetService("Players")
local a = instance.new("BoolValue", Players.localPlayer)

function toggleESP(value)
	function setHighLight()
		for _, player in ipairs(Players:GetChildren()) do
			if player.Character == nil then continue end
			
			if player.Character:FindFirstChild("HighLight") then
				
				player.Character.HighLight.Enabled = value
				
			else
				
				local ins = instance.new("HighLight", player.Character)
				ins.Adornee = player.Character
				ins.DepthMode = Enum.HighLightDepthMode.AlwaysOnTop
				
			end
		end
	end
	while true do
		setHighLight()
		wait(1)
	end
end
local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
local Players = game:GetService("Players")
local a = instance.new("BoolValue", Players.localPlayer)

function toggleESP(value)
	function setHighLight()
		for _, player in ipairs(Players:GetChildren()) do
			if player.Character == nil then continue end
			
			if player.Character:FindFirstChild("HighLight") then
				
				player.Character.HighLight.Enabled = value
				
			else
				
				local ins = instance.new("HighLight", player.Character)
				ins.Adornee = player.Character
				ins.DepthMode = Enum.HighLightDepthMode.AlwaysOnTop
				
			end
		end
	end
	while true do
		setHighLight()
		wait(1)
	end
end

local Window = Rayfield:CreateWindow({
    Name = "Basic esp and aimbot",
    LoadingTitle = "loding",
    LoadingSubtitle = "by ExcusemeSir_6713",
    ConfigurationSaving = {
        Enabled = true,
        FolderName = "ESP_6713",
        FileName = "ESP_1367"
    },
    Discord = {
        Enabled = false,
        Invite = "vegax",
        RememberJoins = true,
    },
    KeySystem = true,
    KeySettings = {
        Title = "Key is srry",
        Subtitle = "Skibid",
        Note = "why",
        FileName = "pneumoultramicroscopicossilcovulcanoconiose",
        SaveKey = true,
		GrabKeyFromSite = true,
        Key = {"https://pastebin.com/raw/3yh8UbV2"}
    },
})

local MainTab = Window:CreateTab("🏠 Home", nil) -- Title, Image
local MainSection = MainTab:CreateSection("ESP")

local Toggle = MainTab:CreateToggle({
   Name = "ESP",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file; make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = toggleESP,
})
