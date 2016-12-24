data.raw["player"]["player"].light =
    {
      {
        minimum_darkness = 0.3,
        intensity = 0.9,
        size = 60,
      } -- ,
      -- {
        -- type = "oriented",
        -- minimum_darkness = 0.3,
        -- picture =
        -- {
          -- filename = "__core__/graphics/light-cone.png",
          -- priority = "medium",
          -- scale = 2,
          -- width = 200,
          -- height = 200
        -- },
        -- shift = {0, -13},
        -- size = 2,
        -- intensity = 0.6
      -- },
    }
	data.raw["car"]["car"].light =
    {
      {
        minimum_darkness = 0.3,
        intensity = 0.9,
        size = 60,
      }
   }
data.raw["car"]["tank"].light =
    {
      {
        minimum_darkness = 0.3,
        intensity = 0.9,
        size = 60,
      }
   }
data.raw["locomotive"]["diesel-locomotive"].front_light = 
   {
      {
        minimum_darkness = 0.3,
        intensity = 0.9,
        size = 60,
      },
      {
        minimum_darkness = 0.3,
        intensity = 0.9,
        size = 60,
      }
   }
data.raw["locomotive"]["diesel-locomotive"].stand_by_light = 
   {
      {
        minimum_darkness = 0.3,
        color = {b=1},
        shift = {-0.6, -3.5},
        size = 2,
        intensity = 0.5
      },
      {
        minimum_darkness = 0.3,
        color = {b=1},
        shift = {0.6, -3.5},
        size = 2,
        intensity = 0.5
      },
      {
      minimum_darkness = 0.3,
      intensity = 0.9,
      size = 60,
      },
      {
      minimum_darkness = 0.3,
      intensity = 0.9,
      size = 60,
      }
   }