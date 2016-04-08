data:extend(
{
  {
    type = "technology",
    name = "alien-science-creation",
    icon = "__alien-science__/graphics/technology/alien-science-pack.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "alien-science-recipe"
      }
    },
    prerequisites = {"alien-technology"},
    unit =
    {
      count = 150,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1}
      },
      time = 20
    },
    order = "e-f-a"
  },
  {
    type = "technology",
    name = "alien-artifact-creation",
    icon = "__alien-science__/graphics/technology/alien-artifact.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "alien-artifact-recipe"
      }
    },
    prerequisites = {"alien-science-creation"},
    unit =
    {
      count = 200,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
        {"alien-science-pack", 1}
      },
      time = 20
    },
    order = "e-f-a"
  },
})