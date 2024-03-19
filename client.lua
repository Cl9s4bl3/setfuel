RegisterNetEvent('setFuel')
AddEventHandler('setFuel', function(fuelValue)
    local vehicle = GetVehiclePedIsIn(PlayerPedId(), false)
    if vehicle ~= 0 then

        if fuelValue >100 then
            --TriggerEvent('chat:addMessage', { args = { '^5SYSTEM', 'Invalid number! (0-100)'} })
            return exports["k5_notify"]:notify('Fuel', 'Invalid number! (0-100)', 'error')
        elseif fuelValue <1 then
            --TriggerEvent('chat:addMessage', { args = { '^5SYSTEM', 'Invalid number! (0-100)'} })
            return exports["k5_notify"]:notify('Fuel', 'Invalid number! (0-100)', 'error')
        end

        SetVehicleFuelLevel(vehicle, fuelValue + 0.0)
        --TriggerEvent('chat:addMessage', { args = { '^5SYSTEM', ' Vehicle fuel set to ' .. fuelValue } })
        exports["k5_notify"]:notify('Fuel', 'Successfully set vehicle fuel level to '..fuelValue, 'success')
    else
        --TriggerEvent('chat:addMessage', { args = { '^1SYSTEM', ' You are not in a vehicle.' } })
        exports["k5_notify"]:notify('Fuel', 'You are not in a vehicle', 'error')
    end
end)
