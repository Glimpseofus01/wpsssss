-- Sword Script
local tool = script.Parent
local player = game.Players:GetPlayerFromCharacter(tool.Parent)
local damage = 10 -- Amount of damage the weapon does

tool.Activated:Connect(function()
    local character = player.Character
    local humanoid = character:FindFirstChildOfClass("Humanoid")

    -- Check if the player is holding the tool
    if humanoid and tool then
        -- Perform a raycast to detect hit
        local mouse = player:GetMouse()
        local target = mouse.Target

        if target and target.Parent then
            local targetHumanoid = target.Parent:FindFirstChildOfClass("Humanoid")
            if targetHumanoid and targetHumanoid ~= humanoid then
                -- Apply damage
                targetHumanoid:TakeDamage(damage)
                print("Hit " .. target.Parent.Name .. " for " .. damage .. " damage!")
            end
        end
    end
end)
