Config = {}

-- Front Desk
Config.Label = { -- Targer Label
    Police = 'Call Officer',
    Doj = 'Call Doj Staff',
    Ems = 'Call Ems',
    FireDepartment = 'Call FireMan',
}
Config.UsePed = false -- if true ped will spawn on the vector4 coords, or false using circle zone
Config.ox_target = false -- set it true if you using ox_target, false if you using qb-target

Config.Coords = {  --Target Location
    Police = vector3(441.15, -981.13, 30.69),
    Doj = vector3(441.79, -992.45, 30.72),
    Ems = vector3(441.79, -992.45, 30.72),
    FireDepartment = vector3(441.79, -992.45, 30.72),
}
-- QB-TARGET
Config.DebugPoly = true -- Debug Target Zone qb-target
Config.Target = {
    Police = {
        Icon = 'fas fa-sign-in-alt',
        Radius = 1.0, -- Radius Circle Zone qb-target
        Distance = 0.8, -- Distance between player and target location
    },
    Doj = {
        Icon = 'fas fa-sign-in-alt',
        Radius = 1.0,
        Distance = 0.8,
    },
    Ems = {
        Icon = 'fas fa-sign-in-alt',
        Radius = 1.0,
        Distance = 0.8,
    },
    FireDepartment = {
        Icon = 'fas fa-sign-in-alt',
        Radius = 1.0,
        Distance = 0.8,
    }
}

Config.Ped = {
    Police = {
        Model = 's_m_y_dwservice_02', -- Ped Model
        Coords = vector4(-77.31, -816.17, 326.18, 176.59),  -- Ped Location
        AnimDict = 'abigail_mcs_1_concat-0',
        Anim = 'csb_abigail_dual-0',
        Scenario = 'WORLD_HUMAN_STAND_MOBILE',
        MinusOne = true
    },

    Doj = {
        Model = 's_m_y_dwservice_02',
        Coords = vector4(-75.3, -816.3, 326.18, 177.71),
        animDict = 'abigail_mcs_1_concat-0',
        anim = 'csb_abigail_dual-0',
        scenario = 'WORLD_HUMAN_STAND_MOBILE',
        MinusOne = true
    },

    Ems = {
        Model = 's_m_y_dwservice_02',
        Coords = vector4(-73.36, -816.62, 326.18, 128.01),
        animDict = 'abigail_mcs_1_concat-0',
        anim = 'csb_abigail_dual-0',
        scenario = 'WORLD_HUMAN_STAND_MOBILE',
        MinusOne = true
    },

    FireDepartment = {
        Model = 's_m_y_dwservice_02',
        Coords = vector4(-71.52, -819.53, 326.18, 126.93),
        animDict = 'abigail_mcs_1_concat-0',
        anim = 'csb_abigail_dual-0',
        scenario = 'WORLD_HUMAN_STAND_MOBILE',
        MinusOne = true
    },
}
