dofile(minetest.get_modpath("billboard") .. "/nodes.lua")

for i,n in ipairs(bb_boardlist) do
    
    minetest.register_node("billboard:bb_".. n[1].."_"..n[2], {
                    description = "Billboard " ..n[1].."_"..n[2],
                    drawtype = "signlike",
                    visual_scale = 3.0,
                    tiles = {
                                    "bb_"..n[1].."_"..n[2]..".png"
                                },
                    inventory_image = "bb_"..n[1].."_"..n[2]..".png",
                    wield_image = "bb_"..n[1].."_"..n[2]..".png",
                    paramtype = "light",
                    paramtype2 = "wallmounted",
                    sunlight_propagates = true,
                    walkable = false,
                    light_source = 1, -- reflecting a bit of light might be expected
                    selection_box = {
                                                    type = "wallmounted"
                                            },
                    groups = {choppy=2,dig_immediate=3,attached_node=1, picture=1},
                    legacy_wallmounted = true,
        
    })

    minetest.register_craft({
                        output = "billboard:bb_"..n[1].."_"..n[2],
                        recipe = {
                                            {"group:stick", "group:stick", "group:stick"},
                                            {"default:sign_wall_wood", "wool:"..n[1], "wool:"..n[2]},
                                            {"group:stick", "group:stick", "group:stick"}
                                    }
    })

end
--[[
minetest.register_node("billboard:bb_yellow_yellow", {
		description = "Billboard yellow_yellow",
		drawtype = "signlike",
                visual_scale = 3.0,
		tiles = {
                                "bb_yellow_yellow.png"
                            },
		inventory_image = "bb_yellow_yellow.png",
		wield_image = "bb_yellow_yellow.png",
		paramtype = "light",
		paramtype2 = "wallmounted",
		sunlight_propagates = true,
		walkable = false,
		light_source = 1, -- reflecting a bit of light might be expected
		selection_box = {
                                            type = "wallmounted",
                                            },
		groups = {choppy=2,dig_immediate=3,attached_node=1, picture=1},
		legacy_wallmounted = true,

})
minetest.register_craft({
                    output = "billboard:bb_yellow_yellow",
                    recipe = {
                                        {"group:stick", "group:stick", "group:stick"},
                                        {"default:sign_wall_wood", "wool:yellow", "wool:yellow"},
                                        {"group:stick", "group:stick", "group:stick"}
                                }
})

minetest.register_node("billboard:bb_black_yellow", {
		description = "Billboard black_yellow",
		drawtype = "signlike",
                visual_scale = 3.0,
		tiles = {
                                "bb_black_yellow.png"
                            },
		inventory_image = "bb_black_yellow.png",
		wield_image = "bb_black_yellow.png",
		paramtype = "light",
		paramtype2 = "wallmounted",
		sunlight_propagates = true,
		walkable = false,
		light_source = 1, -- reflecting a bit of light might be expected
		selection_box = {
                                                type = "wallmounted",
                                            },
		groups = {choppy=2,dig_immediate=3,attached_node=1, picture=1},
		legacy_wallmounted = true,

})
minetest.register_craft({
                    output = "billboard:bb_black_yellow",
                    recipe = {
                                        {"group:stick", "group:stick", "group:stick"},
                                        {"default:sign_wall_wood", "wool:black", "wool:yellow"},
                                        {"group:stick", "group:stick", "group:stick"}
                                }
})

minetest.register_node("billboard:bb_green_blue", {
		description = "Billboard green_blue",
		drawtype = "signlike",
                visual_scale = 3.0,
		tiles = {
                                "bb_green_blue.png"
                            },
		inventory_image = "bb_green_blue.png",
		wield_image = "bb_green_blue.png",
		paramtype = "light",
		paramtype2 = "wallmounted",
		sunlight_propagates = true,
		walkable = false,
		light_source = 1, -- reflecting a bit of light might be expected
		selection_box = {
                                                type = "wallmounted",
                                            },
		groups = {choppy=2,dig_immediate=3,attached_node=1, picture=1},
		legacy_wallmounted = true,

})
minetest.register_craft({
                    output = "billboard:bb_green_blue",
                    recipe = {
                                        {"group:stick", "group:stick", "group:stick"},
                                        {"default:sign_wall_wood", "wool:green", "wool:blue"},
                                        {"group:stick", "group:stick", "group:stick"}
                                }
})
]]
