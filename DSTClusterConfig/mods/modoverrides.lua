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

  -- Wormhole Marks
  -- https://steamcommunity.com/sharedfiles/filedetails/?id=362175979
  ["workshop-362175979"]={ configuration_options={ ["Draw over FoW"]="disabled" }, enabled=true },

  -- Extra Equip Slots
  -- https://steamcommunity.com/sharedfiles/filedetails/?id=375850593
  ["workshop-375850593"]={ configuration_options={  }, enabled=true },
  
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

  -- No Thermal Stone Durability
  -- https://steamcommunity.com/sharedfiles/filedetails/?id=466732225
  ["workshop-466732225"]={ configuration_options={  }, enabled=true },

  -- Global Pause
  -- https://steamcommunity.com/sharedfiles/filedetails/?id=758532836
  ["workshop-758532836"]={
    configuration_options={
      AUTOPAUSECONSOLE=false,
      AUTOPAUSEMAP=false,
      AUTOPAUSESINGLEPLAYER=true,
      ENABLECLIENTPAUSING=false,
      ENABLEHOTKEY=false,
      KEYBOARDTOGGLEKEY="P" 
    },
    enabled=true 
  }
}