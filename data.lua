local F = "__TestFactorissimoLib__"

local FactoryLib = require("__FactorissimoLib__/remote-prototype-api.lua")

FactoryLib.add_factory{
    type = "factory",
    name = "factory-1",
    tier = 1,
    conditioned = false,
    outside_size = 8,
    inside_size = 30,
    max_health = 4000,
    color = {r = 200, g = 100, b = 40},
    graphics = {
        icon = F .. "/graphics/icon/factory-1.png",
        icon_size = 64,
        pictures = {
            picture = {
                layers = {
                    {
                        filename = F .. "/graphics/factory/factory-1-shadow.png",
                        width = 416 * 2,
                        height = 320 * 2,
                        scale = 0.5,
                        shift = {1.5, 0},
                        draw_as_shadow = true
                    },
                    {
                        filename = F .. "/graphics/factory/factory-1.png",
                        width = 416 * 2,
                        height = 320 * 2,
                        scale = 0.5,
                        shift = {1.5, 0},
                    }
                }
            },
        },
    },
    recipe = {
        energy_required = 30,
        ingredients = {
            {type = "item", name = "stone",        amount = 500},
            {type = "item", name = "iron-plate",   amount = 500},
            {type = "item", name = "copper-plate", amount = 200}
        },
    },
    technology = {
        name = "factory-architecture-t1",
        icon = F .. "/graphics/technology/factory-architecture-1.png",
        icon_size = 256,
        prerequisites = {"stone-wall", "logistics"},
        time = 30,
        count = 100,
        ingredients = {{"automation-science-pack", 1}},
    },    
    pattern = "01",
    connections_per_side = 4,
}

FactoryLib.add_factory{
    type = "factory",
    name = "conditioned-factory-1",
    tier = 1,
    conditioned = true,
    outside_size = 8,
    inside_size = 30,
    max_health = 4000,
    color = {r = 200, g = 100, b = 40},
    graphics = {
        icon = F .. "/graphics/icon/conditioned-factory-1.png",
        icon_size = 64,
        pictures = {
            picture = {
                layers = {
                    {
                        filename = F .. "/graphics/factory/factory-1-shadow.png",
                        width = 416 * 2,
                        height = 320 * 2,
                        scale = 0.5,
                        shift = {1.5, 0},
                        draw_as_shadow = true
                    },
                    {
                        filename = F .. "/graphics/factory/conditioned-factory-1.png",
                        width = 416,
                        height = 320,
                        scale = 1,
                        shift = {1.5, 0},
                    }
                }
            },
        },
    },
    recipe = {
        energy_required = 30,
        ingredients = {
            {type = "item", name = "stone",        amount = 500},
            {type = "item", name = "iron-plate",   amount = 500},
            {type = "item", name = "copper-plate", amount = 200}
        },
    },
    technology = {
        name = "conditioned-factory-architecture-t1",
        icon = F .. "/graphics/technology/factory-space-architecture.png",
        icon_size = 256,
        prerequisites = {"stone-wall", "logistics"},
        time = 30,
        count = 100,
        ingredients = {{"automation-science-pack", 1}},
    },    
    pattern = "01",
    connections_per_side = 4,
}

local space_age_patch_data = {
    recipe = {
        energy_required = 30,
        ingredients = {
            {type = "item", name = "stone",        amount = 500},
            {type = "item", name = "iron-plate",   amount = 500},
            {type = "item", name = "copper-plate", amount = 200}
        },
    },
    technology = {
        name = "factory-architecture-t1",
        icon = F .. "/graphics/technology/factory-architecture-1.png",
        icon_size = 256,
        prerequisites = {"stone-wall", "logistics"},
        time = 30,
        count = 100,
        ingredients = {{"automation-science-pack", 1}, {"logistic-science-pack", 1}},
    },
}

FactoryLib.alternatives.add_patch(
    "factory-data-factory-1", 
    space_age_patch_data, 
    "mod",          -- Тип условия
    {"space-age"}  -- Аргументы (имя мода)
)