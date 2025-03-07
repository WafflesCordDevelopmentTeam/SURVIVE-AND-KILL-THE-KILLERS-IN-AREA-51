-- Configuration Table
local config = {
    teleportInterval = 2,  -- Interval for teleportation in seconds
    commandPrefix = ".",  -- Prefix for commands (e.g., .stop)
    teleportAboveOffset = Vector3.new(0, 5, 0),  -- Position offset for teleportation above parts
    teleportingEnabled = true,  -- If teleporting should be enabled initially
    stopMessage = "Teleportation has been stopped.",  -- Message displayed when teleportation is stopped
    chatMessageBlue = "BlueApp is nnatsukawa",  -- Chat message for BlueApp
    chatMessageCreator = "Get All Badges Script Made By KadeM",  -- Chat message for creator
    commands = {  -- Command list
        stop = { 
            description = "Stops the teleportation loop.",
            action = function(player)
                stopTeleporting()
                task.wait(2)  -- Add delay before sending the message
                game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(config.stopMessage, "All")
            end
        },
        start = { 
            description = "Starts the teleportation loop.",
            action = function(player)
                teleportToBadgesAndWeapons()
                task.wait(2)  -- Add delay before sending the message
                game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Teleportation has started.", "All")
            end
        },
        status = {
            description = "Displays the current teleportation status.",
            action = function(player)
                task.wait(2)  -- Add delay before sending the message
                if isTeleporting then
                    game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Teleportation is active.", "All")
                else
                    game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Teleportation is stopped.", "All")
                end
            end
        },
        cmds = {
            description = "Displays all available commands.",
            action = function(player)
                showHelpInChat()
            end
        }
    }
}

-- Define a variable to control the teleportation loop
local isTeleporting = config.teleportingEnabled

-- Define a function that teleports the player every config.teleportInterval seconds to all items in AREA51
local function teleportToBadgesAndWeapons()
    -- Teleport immediately to everything in workspace.AREA51
    while isTeleporting do
        -- Loop through all parts in workspace.AREA51
        for _, part in pairs(workspace.AREA51:GetChildren()) do
            if part:IsA("BasePart") then
                local partPosition = part.Position
                local teleportPosition = partPosition + config.teleportAboveOffset
                -- Use LeftLeg as reference for positioning
                game.Players.LocalPlayer.Character.LeftLeg.CFrame = CFrame.new(teleportPosition)
                task.wait(config.teleportInterval)  -- Wait according to config.teleportInterval
            end
        end

        task.wait(config.teleportInterval)  -- Wait before looping again if there are no more parts in AREA51
    end
end

-- Function to stop teleporting
local function stopTeleporting()
    isTeleporting = false
end

-- Display the available commands in the chat
local function showHelpInChat()
    local commandsList = "Available Commands:\n"
    for cmd, data in pairs(config.commands) do
        commandsList = commandsList .. config.commandPrefix .. cmd .. ": " .. data.description .. "\n"
    end
    task.wait(2)  -- Add delay before sending the message
    game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(commandsList, "All")
end

-- Define the onChatted function to handle player chat messages
local function onChatted(message)
    -- Only respond if the message is from the current player
    if message:lower():sub(1, #config.commandPrefix) == config.commandPrefix then
        local command = message:lower():sub(#config.commandPrefix + 1)
        
        -- Check if the command exists in the config commands list
        if config.commands[command] then
            -- Execute the command action
            config.commands[command].action(game.Players.LocalPlayer)
        else
            -- Send a message for an invalid command
            task.wait(2)  -- Add delay before sending the message
            game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Invalid command. Type '.cmds' for available commands.", "All")
        end
    end
end

-- Connect the chat event to the onChatted function
game.Players.LocalPlayer.Chatted:Connect(onChatted)

-- Send the initial messages in the chat for everyone
task.wait(2)  -- Add delay before sending the messages
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(config.chatMessageCreator, "All")
task.wait(2)  -- Add delay before sending the second message
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(config.chatMessageBlue, "All")

-- IF U WANNA DM ME ON DISCORD @nnatsukawa & THANK YOU FOR USING THE SCRIPT
-- SCRIPT MADE BY KADEM 
-- IF U WANNA DM ME ON DISCORD @nnatsukawa & THANK YOU FOR USING THE SCRIPT
-- SCRIPT MADE BY KADEM 
-- IF U WANNA DM ME ON DISCORD @nnatsukawa & THANK YOU FOR USING THE SCRIPT
-- SCRIPT MADE BY KADEM 
-- IF U WANNA DM ME ON DISCORD @nnatsukawa & THANK YOU FOR USING THE SCRIPT
-- SCRIPT MADE BY KADEM 
-- IF U WANNA DM ME ON DISCORD @nnatsukawa & THANK YOU FOR USING THE SCRIPT
-- SCRIPT MADE BY KADEM 
-- IF U WANNA DM ME ON DISCORD @nnatsukawa & THANK YOU FOR USING THE SCRIPT
-- SCRIPT MADE BY KADEM 
-- IF U WANNA DM ME ON DISCORD @nnatsukawa & THANK YOU FOR USING THE SCRIPT
-- SCRIPT MADE BY KADEM 
-- IF U WANNA DM ME ON DISCORD @nnatsukawa & THANK YOU FOR USING THE SCRIPT
-- SCRIPT MADE BY KADEM 
-- IF U WANNA DM ME ON DISCORD @nnatsukawa & THANK YOU FOR USING THE SCRIPT
-- SCRIPT MADE BY KADEM 
-- IF U WANNA DM ME ON DISCORD @nnatsukawa & THANK YOU FOR USING THE SCRIPT
-- SCRIPT MADE BY KADEM 
-- IF U WANNA DM ME ON DISCORD @nnatsukawa & THANK YOU FOR USING THE SCRIPT
-- SCRIPT MADE BY KADEM 
-- IF U WANNA DM ME ON DISCORD @nnatsukawa & THANK YOU FOR USING THE SCRIPT
-- SCRIPT MADE BY KADEM 
-- IF U WANNA DM ME ON DISCORD @nnatsukawa & THANK YOU FOR USING THE SCRIPT
-- SCRIPT MADE BY KADEM 
-- IF U WANNA DM ME ON DISCORD @nnatsukawa & THANK YOU FOR USING THE SCRIPT
-- SCRIPT MADE BY KADEM 
-- IF U WANNA DM ME ON DISCORD @nnatsukawa & THANK YOU FOR USING THE SCRIPT
-- SCRIPT MADE BY KADEM 
-- IF U WANNA DM ME ON DISCORD @nnatsukawa & THANK YOU FOR USING THE SCRIPT
-- SCRIPT MADE BY KADEM 
-- IF U WANNA DM ME ON DISCORD @nnatsukawa & THANK YOU FOR USING THE SCRIPT
-- SCRIPT MADE BY KADEM 
-- IF U WANNA DM ME ON DISCORD @nnatsukawa & THANK YOU FOR USING THE SCRIPT
-- SCRIPT MADE BY KADEM 
-- IF U WANNA DM ME ON DISCORD @nnatsukawa & THANK YOU FOR USING THE SCRIPT
-- SCRIPT MADE BY KADEM 
-- IF U WANNA DM ME ON DISCORD @nnatsukawa & THANK YOU FOR USING THE SCRIPT
-- SCRIPT MADE BY KADEM 
-- IF U WANNA DM ME ON DISCORD @nnatsukawa & THANK YOU FOR USING THE SCRIPT
-- SCRIPT MADE BY KADEM 
-- IF U WANNA DM ME ON DISCORD @nnatsukawa & THANK YOU FOR USING THE SCRIPT
-- SCRIPT MADE BY KADEM 