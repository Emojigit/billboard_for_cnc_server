minetest.register_node("billboard:bb_white_white", {
		description = "Billboard white_white",
		drawtype = "signlike",
                visual_scale = 3.0,
		tiles = {
                                "bb_white_white.png"
                            },
		inventory_image = "bb_white_white.png",
		wield_image = "bb_white_white.png",
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
                    output = "billboard:bb_white_white",
                    recipe = {
                                        {"group:stick", "group:stick", "group:stick"},
                                        {"default:sign_wall_wood", "wool:white", "wool:white"},
                                        {"group:stick", "group:stick", "group:stick"}
                                }
})

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
<<<<<<< HEAD
                visual_scale = 3.0,
		tiles = {
                                "bb_black_yellow.png"
                            },
		inventory_image = "bb_black_yellow.png",
		wield_image = "bb_black_yellow.png",
=======
                visual_scale = 3,
		tiles = {
                                "bb_black_yellow.png"                         -- up
                            },
		inventory_image = "bb_black_yellow.png",
		wield_image = "bb_black_yellow.png",
		wield_scale = {x=1, y=1, z=1},
>>>>>>> 078c4ad7d9c517c512600f2bc91d3fd7b7874bef
		paramtype = "light",
		paramtype2 = "wallmounted",
		sunlight_propagates = true,
		walkable = false,
		light_source = 1, -- reflecting a bit of light might be expected
		selection_box = {
<<<<<<< HEAD
                                                type = "wallmounted",
                                            },
		groups = {choppy=2,dig_immediate=3,attached_node=1, picture=1},
=======
		type = "wallmounted",
		wall_side = {-0.45, -1.5, -2.5, -.4, 1.5, 2.5}, -- NodeBox
		},
		groups = {choppy=2,dig_immediate=3,attached_node=1},
>>>>>>> 078c4ad7d9c517c512600f2bc91d3fd7b7874bef
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
