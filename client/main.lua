CreateThread(function()
    if Config.UsePed then
        for k, v in pairs(Config.Ped) do
            exports["qb-target"]:SpawnPed({
                model = v.model,
                coords = v.coords,
                minusOne = true,
                freeze = true,
                invincible = true,
                blockevents = true,
                animDict = v.animDict,
                anim = v.anim,
                flag = 1,
                scenario = 'WORLD_HUMAN_STAND_MOBILE',
                target = {
                    options = {
                        {
                            type = "client",
                            event = "px-frontdesk:dispatch",
                            icon = "fas fa-sign-in-alt",
                            label = Config.Label,
                        }
                    },
                    distance = 2.5,
                },
                spawnNow = true,
                currentpednumber = 0,
            })
        end
    else
        for k, v in pairs(Config.Target) do
            exports['qb-target']:AddCircleZone("FrontDesk", v.coords, 1.5, {
                name = "frontdeskalert",
                debugPoly = v.DebugPoly,
                }, {
                options = {
                    {
                    num = 1,
                    type = "client",
                    event = "px-frontdesk:dispatch",
                    icon = v.Icon,
                    label = Config.Label,
                    targeticon = 'fa-solid fa-eye',
                    }
                },
                distance = 2.5,
            })
        end
    end
end)

RegisterNetEvent('px-frontdesk:dispatch')
AddEventHandler('px-frontdesk:dispatch', function()
    exports['ps-dispatch']:FrontDesk('FrontDesk')
end)