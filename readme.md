# DEPEDENCY
- qb-core
- ps-dispatch V2


# 1.
``ps-dispatch/shared/config.lua``
put this in array Config.Blips
```lua
['frontdesk'] = { -- Need to match the codeName in alerts.lua
        radius = 0,
        sprite = 817,
        color = 2,
        scale = 1.5,
        length = 2,
        sound = 'Lose_1st',
        sound2 = 'GTAO_FM_Events_Soundset',
        offset = false,
        flash = false
    },
```
# 2.
``ps-dispatch/client/alert.lua``
put hiss on botom of the script
```lua
local function FrontDesk()
    local coords = GetEntityCoords(cache.ped)
    local dispatchData = {
        message = 'Someone calling at police office', -- add this into your locale
        codeName = 'frontdesk', -- this should be the same as in config.lua
        code = '',
        icon = 'fa-solid fa-person',
        priority = 2,
        coords = coords,
        street = GetStreetAndZone(coords),
        heading = GetPlayerHeading(),
        jobs = { 'leo', 'police' }
    }

    TriggerServerEvent('ps-dispatch:server:notify', dispatchData)
end
exports('FrontDesk', FrontDesk)

local function FrontDesk2()
    local coords = GetEntityCoords(cache.ped)
    local dispatchData = {
        message = 'Someone calling at DOJ Lobby', -- add this into your locale
        codeName = 'frontdesk', -- this should be the same as in config.lua
        code = '',
        icon = 'fa-solid fa-person',
        priority = 2,
        coords = coords,
        street = GetStreetAndZone(coords),
        heading = GetPlayerHeading(),
        jobs = { 'doj' }
    }

    TriggerServerEvent('ps-dispatch:server:notify', dispatchData)
end
exports('FrontDesk2', FrontDesk2)

local function FrontDesk3()
    local coords = GetEntityCoords(cache.ped)
    local dispatchData = {
        message = 'Someone calling at Hospital', -- add this into your locale
        codeName = 'frontdesk', -- this should be the same as in config.lua
        code = '',
        icon = 'fa-solid fa-person',
        priority = 2,
        coords = coords,
        street = GetStreetAndZone(coords),
        heading = GetPlayerHeading(),
        jobs = { 'ems', 'ambulance' }
    }

    TriggerServerEvent('ps-dispatch:server:notify', dispatchData)
end
exports('FrontDesk3', FrontDesk3)

local function FrontDesk4()
    local coords = GetEntityCoords(cache.ped)
    local dispatchData = {
        message = 'Someone calling at Fire Department office', -- add this into your locale
        codeName = 'frontdesk', -- this should be the same as in config.lua
        code = '',
        icon = 'fa-solid fa-person',
        priority = 2,
        coords = coords,
        street = GetStreetAndZone(coords),
        heading = GetPlayerHeading(),
        jobs = { 'fireman', 'firefighter' }
    }

    TriggerServerEvent('ps-dispatch:server:notify', dispatchData)
end
exports('FrontDesk4', FrontDesk4)
```

# 3.
add exports to ``ps-dispatch/fxmanifest.lua``
```lua
exports {
  'FrontDesk',
  'FrontDesk2',
  'FrontDesk3',
  'FrontDesk4'
}
```
