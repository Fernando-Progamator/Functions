local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
local Functions = loadstring(game:HttpGet('https://pastebin.com/raw/TkqFPMEN'))()
local Players = game:GetService("Players")
local ESPValue = instance.new("BoolValue", Players.localPlayer)
ESPValue.Value = false
function searchHighLight(Character)
    if Character == nil then return end
    for _, v in ipairs(Character) do
        if v:IsA("HighLight") then
            return v
        end
    end
    return nil
end
function toggleESP(value)
    ESPValue.Value = value
    function highlightManager()
        if value == false then
            for _, player in ipairs(Players:GetChildren()) do
                local HL = searchHighLight(player.Character)
                if HL then HL:Destroy() end
            end
        else
            for _, player in ipairs(Players:GetChildren()) do
                local HL = searchHighLight(player.Character)
                if HL then continue end
                if player.Character then
                    HL = instance.new("HighLight")
                    HL.Adornee = player.Character
                    HL.DepthMode = Enum.HighLightDepthMode.AlwaysOnTop
                else
                    continue
                end
            end
        end
    end
    while ESPValue.Value do
        highlightManager()
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
