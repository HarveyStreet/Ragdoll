-- Made by Harvey Designs.
-- =============================================================
-- |  Only mess around in here if you know what you are doing! |
-- =============================================================
local rag = false
Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        if rag then
            SetPedToRagdoll(GetPlayerPed(-1), Config.GetupSpeed, Config.GetupSpeed, Config.ragtype, false, false, false)
        end
    end
end)

RegisterCommand('+rag', function()
    rag = true
end, false)

RegisterCommand('-rag', function()
    rag = false
end, false)

RegisterKeyMapping('+rag', 'Ragdoll', 'keyboard', 'F9')
