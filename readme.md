# DEPEDENCY
- qb-core
- ps-dispatch V2


# 1.
``ps-dispatch/shared/config.lua``
put this in array Config.Blips
```lua
['frontdesk'] = { -- Need to match the codeName in alerts.lua
        radius = 0,
        sprite = 119,
        color = 1,
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
        code = '10-35',
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
```

# 3.
add exports to ``ps-dispatch/fxmanifest.lua``
```lua
exports 'FrontDesk'
```