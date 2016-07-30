dofile(minetest.get_modpath("billboard") .. "/nodes.lua")

for i,n in ipairs(bb_boardlist) do
    
    minetest.register_node("billboard:bb_".. n[1].."_"..n[2].."_"..n[3], {
                    description = "Billboard " ..n[1].."_"..n[2].."_"..n[3],
                    drawtype = "signlike",
                    visual_scale = 3.0,
                    tiles = {
                                    "bb_"..n[1].."_"..n[2].."_"..n[3]..".png"
                                },
                    inventory_image = "bb_"..n[1].."_"..n[2].."_"..n[3]..".png",
                    wield_image = "bb_"..n[1].."_"..n[2].."_"..n[3]..".png",
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
                        output = "billboard:bb_"..n[1].."_"..n[2].."_"..n[3],
                        recipe = {
                                            {"group:stick", "group:stick", "group:stick"},
                                            {"default"..n[1], "wool:"..n[2], "wool:"..n[3]},
                                            {"group:stick", "group:stick", "group:stick"}
                                    }
    })

end
