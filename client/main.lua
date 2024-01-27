CreateThread(function()
    if Config.UsePed then
        exports["qb-target"]:SpawnPed({
            model = Config.Pedmodel,
            coords = Config.Pedcoords,
            minusOne = true,
            freeze = true,
            invincible = true,
            blockevents = true,
            animDict = Config.PedanimDict,
            anim = Config.Pedanim,
            flag = 1,
            scenario = Config.Pedscenario,
            target = {
                options = {
                    {
                        type = "client",
                        event = "px-frontdesk:dispatch",
                        icon = "fas fa-sign-in-alt",
                        label = Config.Label,
                    }
                },
                distance = 1.5,
            },
            spawnNow = true,
            currentpednumber = 0,
        })
    else
        exports['qb-target']:AddCircleZone("FrontDesk", Config.coords, 1.0, {
            name = "frontdeskalert",
            debugPoly = Config.DebugPoly,
            }, {
            options = {
                {
                num = 1,
                type = "client",
                event = "px-frontdesk:dispatch",
                icon = 'fas fa-sign-in-alt',
                label = Config.Label,
                targeticon = 'fa-solid fa-eye',
                }
            },
            distance = 2.5,
        })
    end
end)

RegisterNetEvent('px-frontdesk:dispatch')
AddEventHandler('px-frontdesk:dispatch', function()
    print('1')
    exports['ps-dispatch']:FrontDesk('FrontDesk')
end)
