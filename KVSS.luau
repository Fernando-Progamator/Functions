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
