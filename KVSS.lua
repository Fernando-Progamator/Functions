function toggle(value)
    local Players = game:GetService("Players")
  
  function highlightPlayer(playerCharacter)
  	if playerCharacter == nil then
  		return
  	end
  	cancel = false
  	for _, ins in ipairs(playerCharacter:GetChildren()) do
  		if ins:IsA("Highlight") then
  			cancel = true
  		end
  	end
  	if cancel == false then
  		local highlight = Instance.new("Highlight", playerCharacter)
  		highlight.Adornee = playerCharacter
  		highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
  	end
  end
  while value do
  	for _, player in ipairs(Players:GetChildren()) do
  		highlightPlayer(player.Character)
  	end
  	wait(1)
  end
    for _, player in ipairs(Players:GetChildren()) do
        if player.Character == nil then
            continue
        end
        for _, ins in ipairs(player.Character:GetChildren()) do
            if ins:IsA("HighLight") then
                ins:Destroy()
            end
        end
    end
end
