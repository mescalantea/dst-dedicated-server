--There are two functions that will install mods, ServerModSetup and ServerModCollectionSetup. Put the calls to the functions in this file and they will be executed on boot.

--ServerModSetup takes a string of a specific mod's Workshop id. It will download and install the mod to your mod directory on boot.
	--The Workshop id can be found at the end of the url to the mod's Workshop page.
	--Example: http://steamcommunity.com/sharedfiles/filedetails/?id=350811795
	--ServerModSetup("350811795")

--ServerModCollectionSetup takes a string of a specific mod's Workshop id. It will download all the mods in the collection and install them to the mod directory on boot.
	--The Workshop id can be found at the end of the url to the collection's Workshop page.
	--Example: http://steamcommunity.com/sharedfiles/filedetails/?id=379114180
	--ServerModCollectionSetup("379114180")

-- Simple Health Bar DST
-- https://steamcommunity.com/sharedfiles/filedetails/?id=1207269058
ServerModSetup("1207269058")

-- Wormhole Marks [DST Continued]
-- https://steamcommunity.com/sharedfiles/filedetails/?id=3571706033
ServerModSetup("3571706033")

-- Extra Equip Slots (Modified)
-- https://steamcommunity.com/sharedfiles/filedetails/?id=2075943614
ServerModSetup("2075943614")

-- Global Positions
-- https://steamcommunity.com/sharedfiles/filedetails/?id=378160973
ServerModSetup("378160973")

-- Imperishable Thermal Stone
-- https://steamcommunity.com/sharedfiles/filedetails/?id=670918115
ServerModSetup("670918115")