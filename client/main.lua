CreateThread(function()
    if not Config.ox_target then
        if Config.UsePed then
            --Police
            exports["qb-target"]:SpawnPed({
                model = Config.Ped.Police.Model,
                coords = Config.Ped.Police.Coords,
                minusOne = Config.Ped.Police.MinusOne,
                freeze = true,
                invincible = true,
                blockevents = true,
                animDict = Config.Ped.Police.AnimDict,
                anim = Config.Ped.Police.Anim,
                flag = 1,
                scenario = Config.Ped.Police.Scenario,
                target = {
                    options = {
                        {
                            type = "client",
                            event = "px-frontdesk:dispatch",
                            icon = "fas fa-sign-in-alt",
                            label = Config.Label.Police,
                        }
                    },
                    distance = 1.5,
                },
                spawnNow = true,
                currentpednumber = 0,
            })
            -- Doj
            exports["qb-target"]:SpawnPed({
                model = Config.Ped.Doj.Model,
                coords = Config.Ped.Doj.Coords,
                minusOne = Config.Ped.Doj.MinusOne,
                freeze = true,
                invincible = true,
                blockevents = true,
                animDict = Config.Ped.Doj.AnimDict,
                anim = Config.Ped.Doj.Anim,
                flag = 1,
                scenario = Config.Ped.Doj.Scenario,
                target = {
                    options = {
                        {
                            type = "client",
                            event = "px-frontdesk:dispatch2",
                            icon = "fas fa-sign-in-alt",
                            label = Config.Label.Doj,
                        }
                    },
                    distance = 1.5,
                },
                spawnNow = true,
                currentpednumber = 0,
            })
            -- Ems
            exports["qb-target"]:SpawnPed({
                model = Config.Ped.Ems.Model,
                coords = Config.Ped.Ems.Coords,
                minusOne = Config.Ped.Ems.MinusOne,
                freeze = true,
                invincible = true,
                blockevents = true,
                animDict = Config.Ped.Ems.AnimDict,
                anim = Config.Ped.Ems.Anim,
                flag = 1,
                scenario = Config.Ped.Ems.Scenario,
                target = {
                    options = {
                        {
                            type = "client",
                            event = "px-frontdesk:dispatch3",
                            icon = "fas fa-sign-in-alt",
                            label = Config.Label.Ems,
                        }
                    },
                    distance = 1.5,
                },
                spawnNow = true,
                currentpednumber = 0,
            })
            -- FireDepartment
            exports["qb-target"]:SpawnPed({
                model = Config.Ped.FireDepartment.Model,
                coords = Config.Ped.FireDepartment.Coords,
                minusOne = Config.Ped.FireDepartment.MinusOne,
                freeze = true,
                invincible = true,
                blockevents = true,
                animDict = Config.Ped.FireDepartment.AnimDict,
                anim = Config.Ped.FireDepartment.Anim,
                flag = 1,
                scenario = Config.Ped.FireDepartment.Scenario,
                target = {
                    options = {
                        {
                            type = "client",
                            event = "px-frontdesk:dispatch4",
                            icon = "fas fa-sign-in-alt",
                            label = Config.Label.FireDepartment,
                        }
                    },
                    distance = 1.5,
                },
                spawnNow = true,
                currentpednumber = 0,
            })
        else
            -- Police
            exports['qb-target']:AddCircleZone("FrontDesk", Config.Coords.Police, Config.Target.Police.Radius, {
                name = "frontdeskalert",
                debugPoly = Config.DebugPoly,
                }, {
                options = {
                    {
                    num = 1,
                    type = "client",
                    event = "px-frontdesk:dispatch",
                    icon = Config.Target.Police.Icon,
                    label = Config.Label.Police,
                    targeticon = 'fa-solid fa-eye',
                    }
                },
                distance = Config.Target.Police.Distance,
            })
            -- Doj
            exports['qb-target']:AddCircleZone("FrontDesk2", Config.Coords.Doj, Config.Target.Doj.Radius, {
                name = "frontdeskalert",
                debugPoly = Config.DebugPoly,
                }, {
                options = {
                    {
                    num = 1,
                    type = "client",
                    event = "px-frontdesk:dispatch2",
                    icon = Config.Target.Doj.Icon,
                    label = Config.Label,
                    targeticon = 'fa-solid fa-eye',
                    }
                },
                distance = Config.Target.Doj.Distance,
            })
            -- Ems
            exports['qb-target']:AddCircleZone("FrontDesk3", Config.Coords.Ems, Config.Target.Ems.Radius, {
                name = "frontdeskalert",
                debugPoly = Config.DebugPoly,
                }, {
                options = {
                    {
                    num = 1,
                    type = "client",
                    event = "px-frontdesk:dispatch3",
                    icon = Config.Target.Ems.Icon,
                    label = Config.Label.Ems,
                    targeticon = 'fa-solid fa-eye',
                    }
                },
                distance = Config.Target.Ems.Distance,
            })
            -- FireDepartment
            exports['qb-target']:AddCircleZone("FrontDesk4", Config.Coords.FireDepartment, Config.Target.FireDepartment.Radius, {
                name = "frontdeskalert",
                debugPoly = Config.DebugPoly,
                }, {
                options = {
                    {
                    num = 1,
                    type = "client",
                    event = "px-frontdesk:dispatch4",
                    icon = Config.Target.FireDepartment.Icon,
                    label = Config.Label.FireDepartment,
                    targeticon = 'fa-solid fa-eye',
                    }
                },
                distance = Config.Target.FireDepartment.Distance,
            })
        end
    else
        --Police office
        exports.ox_target:addBoxZone({
            coords = Config.Coords.Police,
            size = vec3(2, 2, 2),
            rotation = 45,
            name = 'frontdeskalert',
            debug = drawZones,
            options = {
                {
                    distance = 0.8,
                    event = 'px-frontdesk:dispatch',
                    icon = 'fas fa-sign-in-alt',
                    label = Config.Label.Police,
                }
            }
        })
        -- DOJ
        exports.ox_target:addBoxZone({
            coords = Config.Coords.Doj,
            size = vec3(2, 2, 2),
            rotation = 45,
            name = 'frontdeskalert',
            debug = drawZones,
            options = {
                {
                    distance = 0.8,
                    event = 'px-frontdesk:dispatch2',
                    icon = 'fas fa-sign-in-alt',
                    label = Config.Label.Doj,
                }
            }
        })
        -- Ems
        exports.ox_target:addBoxZone({
            coords = Config.Coords.Ems,
            size = vec3(2, 2, 2),
            rotation = 45,
            name = 'frontdeskalert',
            debug = drawZones,
            options = {
                {
                    distance = 0.8,
                    event = 'px-frontdesk:dispatch3',
                    icon = 'fas fa-sign-in-alt',
                    label = Config.Label.Ems,
                }
            }
        })
        -- Fire Department
        exports.ox_target:addBoxZone({
            coords = Config.Coords.FireDepartment,
            size = vec3(2, 2, 2),
            rotation = 45,
            name = 'frontdeskalert',
            debug = drawZones,
            options = {
                {
                    distance = 0.8,
                    event = 'px-frontdesk:dispatch4',
                    icon = 'fas fa-sign-in-alt',
                    label = Config.Label.FireDepartment,
                }
            }
        })
    end
end)

RegisterNetEvent('px-frontdesk:dispatch')
AddEventHandler('px-frontdesk:dispatch', function()
    exports['ps-dispatch']:FrontDesk('FrontDesk')
end)

RegisterNetEvent('px-frontdesk:dispatch2')
AddEventHandler('px-frontdesk:dispatch2', function()
    exports['ps-dispatch']:FrontDesk2('FrontDesk2')
end)

RegisterNetEvent('px-frontdesk:dispatch3')
AddEventHandler('px-frontdesk:dispatch3', function()
    exports['ps-dispatch']:FrontDesk3('FrontDesk3')
end)

RegisterNetEvent('px-frontdesk:dispatch4')
AddEventHandler('px-frontdesk:dispatch4', function()
    exports['ps-dispatch']:FrontDesk4('FrontDesk4')
end)
