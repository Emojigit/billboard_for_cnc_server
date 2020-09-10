--[[
    
        ***********************************************
        * Description of an Entry for the Billboards:  *
        ***********************************************
   
            {
                title = Name for the Billboard, 
                If no Name is given: default = bb_item1_item2_item3
                
                Recipe to craft:
                item1 = 1. Item for the recipe
                item2 = 2. Item for the recipe
                item3 = 3. Item for the recipe
                
                If an Item missed, default for:
                item1 = sign_wall_wood
                item2 = white
                item3 = white
            
                Size of the Billboard in Blocks
                scale = number
                If no scale is given, the default number is 1
            
                filename = Filename for the Image
                If no filename is given, the filename = bb_item1_item2_item3
            
                Typ of the taken Image (must be in textures):
                imgtyp = "Typ"
                If no Typ is given, the typ is png.
            
            }

--]]

boardlist = 
        {
            {  
                title = "Hauptstraße", 
                item1 = "paper", 
                item2 = "black", 
                item3 = "white", 
                scale = 2.0, 
                filename = "Hauptstr",
                imgtyp = "png" 
            },
                
    } -- bb_boardlist
