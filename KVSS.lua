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
