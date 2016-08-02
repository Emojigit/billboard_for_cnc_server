dofile(minetest.get_modpath("billboard") .. "/nodes.lua")

for i,n in ipairs(bb_boardlist) do

    -- No Title there?
    if n.title == nil then
        n.title = "Billboard ".. n.item1 .. "_" .. n.item2 .. "_" .. n.item3
    end
    
    -- For Recipe: Item isn't given?
    if n.item1 == nil then
        n.item1 = "sign_wall_wood"
    end
    if n.item2 == nil then
        n.item2 = "white"
    end
    if n.item3 == nil then
        n.item3 = "white"
    end
    
    -- scale isn't given or 0 (invalid)?
    if n.scale == nil or n.scale == 0 then
        n.scale = 1
    end
    -- scale has a negative value?
    if n.scale < 0 then 
        n.scale = n.scale * -1
    end
    
    -- no Imagetyp is given?
    if n.imgtyp == nil then
        n.imgtyp = "png"
    end
    
    -- Register the Node
    minetest.register_node("billboard:bb_".. n.item1 .."_"..n.item2 .."_"..n.item3, {
                    description = n.title,
                    drawtype = "signlike",
                    visual_scale = n.scale,
                    tiles = {
                                    "bb_"..n.item1.."_"..n.item2.."_"..n.item3.."."..n.imgtyp
                                },
                    inventory_image = "bb_"..n.item1.."_"..n.item2.."_"..n.item3.."."..n.imgtyp,
                    wield_image = "bb_"..n.item1.."_"..n.item2.."_"..n.item3.."."..n.imgtyp,
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
    
    -- Register the Recipe for the Node
    minetest.register_craft({
                        output = "billboard:bb_"..n.item1.."_"..n.item2.."_"..n.item3,
                        recipe = {
                                            {"group:stick", "group:stick", "group:stick"},
                                            {"default:"..n.item1, "wool:"..n.item2, "wool:"..n.item3},
                                            {"group:stick", "group:stick", "group:stick"}
                                    }
    })

end
