local QBCore = exports['qb-core']:GetCoreObject()

RegisterNetEvent("aracisil:dvall")
AddEventHandler("aracisil:dvall", function()
    local vehicles = GetGamePool('CVehicle')
    for _, vehicle in ipairs(vehicles) do
        if not IsPedAPlayer(GetPedInVehicleSeat(vehicle, -1)) then 
            SetVehicleHasBeenOwnedByPlayer(vehicle, false)
            SetEntityAsMissionEntity(vehicle, true, true) 
            if DoesEntityExist(vehicle) then
                DeleteVehicle(vehicle)
                if DoesEntityExist(vehicle) then
                    DeleteEntity(vehicle)
                end
            end
        end
    end
end)
