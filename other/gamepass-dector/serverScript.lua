local MarketplaceService = game:GetService("MarketplaceService")
local Players = game:GetService("Players")

local gamePassID = 19941903 -- Change this to your game pass ID

local function onPlayerAdded(player)
	local hasPass = false

	-- Check if the player already owns the game pass
	local success, message = pcall(function()
		hasPass = MarketplaceService:UserOwnsGamePassAsync(player.UserId, gamePassID)
	end)

	-- If there's an error, issue a warning and exit the function
	if not success then
		warn("Error while checking if player has pass: " .. tostring(message))
		return
	end

	if hasPass then
		print(player.Name .. " owns the game pass with ID " .. gamePassID)
		-- Assign this player the ability or bonus related to the game pass
	end
end

-- Connect "PlayerAdded" events to the "onPlayerAdded()" function
Players.PlayerAdded:Connect(onPlayerAdded)
