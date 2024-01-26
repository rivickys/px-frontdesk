Config = {}

-- Front Desk
Config.Label = 'Call Officer' -- Label on qb-target
Config.UsePed = false -- if true ped will spawn on the vector4 coords, or false using circle zone

Config.Target = {
    Icon = 'fas fa-sign-in-alt',
    coords = vector3(441.82, -992.44, 30.72), --Target Location
    DebugPoly = false, -- Debug Target Zone
}

Config.Ped = {
    model = 's_m_y_dwservice_02', -- Ped Model
    coords = vector4(426.36, -980.97, 30.71, 81.55),  -- Ped Location
    animDict = 'abigail_mcs_1_concat-0',
    anim = 'csb_abigail_dual-0',
}