--
-- Disclaimer: mp warranty void if edited.
--

local order = { 
  default = 1,
  opposite = 2,
  itemcount = 3
}

return {
  ["car"] = {priority=order.default, "fuels-all", "ammo-bullets" },
  ["tank"] = {priority=order.default, slots={2,1,1}, "fuels-all", "ammo-bullets", "ammo-shells" },
  ["diesel-locomotive"] = {priority=order.default, group="locomotives", slots={1}, "fuels-all"},
  ["boiler"] = {priority=order.default, group="burners", limits={5}, "fuels-all"},
  ["burner-inserter"]= {priority=order.default, group="burners", limits={1}, "fuels-all"},
  ["burner-mining-drill"] = {priority=order.default, group="burners", limits={5}, "fuels-all"},
  ["stone-furnace"] = {priority=order.default, group="burners", limits={5}, "fuels-all"},
  ["steel-furnace"] = {priority=order.default, group="burners", limits={5}, "fuels-all"},
  ["gun-turret"]= {priority=order.default, group="turrets", limits= {10}, "ammo-bullets" }
}
