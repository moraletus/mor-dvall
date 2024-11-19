local QBCore = exports['qb-core']:GetCoreObject()

local minutes = 5 -- Dakika Cinsinden ( Örnek olarak 5 dakika olarak ayarladım )
local interval = minutes * 60 * 1000

CreateThread(function()
    while true do
        Wait(interval)
        araclarinaminakoy()
    end
end)

--------------------------------------------------------------------------------------------------------------
araclarinaminakoy = function()
    TriggerClientEvent("QBCore:Notify", -1, "Sunucudaki tüm araçlar 30 saniye sonra çekilecektir.", "error")
    Wait(15000)
    TriggerClientEvent("QBCore:Notify", -1, "Sunucudaki tüm araçlar 15 saniye sonra çekilecektir.", "error")
    Wait(5000)
    TriggerClientEvent("QBCore:Notify", -1, "Sunucudaki tüm araçlar 10 saniye sonra çekilecektir.", "error")
    Wait(5000)
    TriggerClientEvent("QBCore:Notify", -1, "Sunucudaki tüm araçlar 5 saniye sonra çekilecektir.", "error")
    Wait(1000)
    TriggerClientEvent("QBCore:Notify", -1, "Sunucudaki tüm araçlar 4 saniye sonra çekilecektir.", "error")
    Wait(1000)
    TriggerClientEvent("QBCore:Notify", -1, "Sunucudaki tüm araçlar 3 saniye sonra çekilecektir.", "error")
    Wait(1000)
    TriggerClientEvent("QBCore:Notify", -1, "Sunucudaki tüm araçlar 2 saniye sonra çekilecektir.", "error")
    Wait(1000)
    TriggerClientEvent("QBCore:Notify", -1, "Sunucudaki tüm araçlar 1 saniye sonra çekilecektir.", "error")
    Wait(1000)
    TriggerClientEvent("aracisil:dvall", -1)
    TriggerClientEvent("QBCore:Notify", -1, "Sunucudaki tüm araçlar çekilmiştir, iyi savaşlar.", "error")
end
--------------------------------------------------------------------------------------------------------------
 QBCore.Commands.Add("dvall", "Araçları siler.",  { }, false, function(source, args)
    araclarinaminakoy()
 end, "god")
