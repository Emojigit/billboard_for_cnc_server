minetest.register_node("bilboard:4x6", {
		description = "4x6 Bilboard",
		drawtype = "signlike",
        visual_scale = 5,
		tiles = {"bb.png"},
		inventory_image = "bb.png",
		wield_image = "bb.png",
		wield_scale = {x=1, y=1, z=1},
		paramtype = "light",
		paramtype2 = "wallmounted",
		sunlight_propagates = true,
		walkable = false,
		light_source = 1, -- reflecting a bit of light might be expected
		selection_box = {
		type = "wallmounted",
		wall_side = {-0.45, -1.5, -2.5, -.4, 1.5, 2.5}, -- NodeBox
		},
		groups = {choppy=2,dig_immediate=3,attached_node=1},
		legacy_wallmounted = true,

})
