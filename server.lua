ESX = nil

ESX = exports["es_extended"]:getSharedObject()

RegisterCommand("setfuel", function(source, args)
    local xPlayer = ESX.GetPlayerFromId(source)
    if xPlayer.getGroup() == 'admin' then
        local playerId = tonumber(args[1])
        local fuelValue = tonumber(args[2])
        
        if playerId and fuelValue then
            TriggerClientEvent("setFuel", playerId, fuelValue)
        else
            --TriggerClientEvent('chat:addMessage', source, { args = { '^1SYSTEM', ' Invalid usage. /setfuel [playerId] [fuelValue]' } })
            TriggerClientEvent("k5_notify:notify", source, 'Fuel', 'Invalid usage. /setfuel [playerId] [fuelValue]', 'error', 10000)
        end
    else
        --TriggerClientEvent('chat:addMessage', source, { args = { '^1SYSTEM', 'You do not have permission to use this command.' } })
        TriggerClientEvent("k5_notify:notify", source, 'Fuel', 'You do not have permission to use this command.', 'error', 10000)
    end
end, false)
