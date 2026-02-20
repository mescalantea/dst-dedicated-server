-- Use this file to enable and configure your mods. The mod will only be available in the game
-- if you set "enabled=true"!!!
--
-- Also, during the container startup this file will be copied to both Master/ and Caves/ folders. What's setup here
-- will be available in both shards!
--
-- See the example below:

return {
  -- Simple Health Bar DST
  -- https://steamcommunity.com/sharedfiles/filedetails/?id=1207269058
  ["workshop-1207269058"]={ configuration_options={  }, enabled=true },

  -- Wormhole Marks [DST Continued]
  -- https://steamcommunity.com/sharedfiles/filedetails/?id=3571706033
  ["workshop-3571706033"]={ configuration_options={ ["Draw over FoW"]="disabled" }, enabled=true },
  
  -- Extra Equip Slots (Modified)
  -- https://steamcommunity.com/sharedfiles/filedetails/?id=2075943614
  ["workshop-2075943614"]={ configuration_options={  }, enabled=true },

  -- Global Positions
  -- https://steamcommunity.com/sharedfiles/filedetails/?id=378160973
  ["workshop-378160973"]={
    configuration_options={
      ENABLEPINGS=true,
      FIREOPTIONS=2,
      OVERRIDEMODE=false,
      SHAREMINIMAPPROGRESS=true,
      SHOWFIREICONS=true,
      SHOWPLAYERICONS=true,
      SHOWPLAYERSOPTIONS=2 
    },
    enabled=true 
  },

  
  -- Imperishable Thermal Stone
  -- https://steamcommunity.com/sharedfiles/filedetails/?id=670918115
  ["workshop-670918115"]={ configuration_options={  }, enabled=true },
}