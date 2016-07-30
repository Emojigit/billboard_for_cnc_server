#*Billboards for Minetest*

Forked from
https://github.com/crazyginger72/billboard.git

This Mod adds signlike Billboards and different sizes with Craftrecipes.
You only need a Texture for the Billboard.
To add a Billboard, save the Texture in textures, rename the image in shape of:

bb_<itemname>_<color>_<color>.png

then add an Entry in Nodes like:

{ itemname, color, color, size }

then craft your Billboard in Minetest.

#*Depends:*

default  
wool  

#*Craftrecipes:*

Wo = Wool  
DI = Item from default:  
Si = wooden Sign   

St St St  
DI Wo Wo  
St St St  

#*License:*

WTFPL

#*Screenshot:*

![Screenshot 1] (textures/Screenshot.png)
