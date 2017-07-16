--Define Axinite_Pickaxe crafting recipe
minetest.register_craft({
	output = "axinitium:axinite_pickaxe",
	recipe = {
		{"axinitium:axinite_block", "axinitium:axinite_block", "axinitium:axinite_block", ""},
		{"", "default:stick", "", ""},
		{"", "default:stick", "", ""}
	}
})

--Define Axinite Axe crafting recipe
minetest.register_craft({
	output = "axinitium:axinite_axe",
	recipe = {
		{"axinitium:axinite_block", "axinitium:axinite_block", "", ""},
		{"axinitium:axinite_block", "default:stick", "", ""},
		{"", "default:stick", "", ""}
	}
})

--Define Axinite shovel crafting recipe
minetest.register_craft({
	output = "axinitium:axinite_shovel",
	recipe = {
		{"", "axinitium:axinite_block", "", ""},
		{"", "default:stick", "", ""},
		{"", "default:stick", "", ""}
	}
})

--Define Axinite sword crafting recipe
minetest.register_craft({
	output = "axinitium:axinite_sword",
	recipe = {
		{"", "axinitium:axinite_block", "", ""},
		{"", "axinitium:axinite_block", "", ""},
		{"", "default:stick", "", ""}
	}
})

--Define Axinite Block crafting recipe
minetest.register_craft({
	output = "axinitium:axinite_block",
	recipe = {
		{"axinitium:axinite_ore_ingot", "axinitium:axinite_ore_ingot", "axinitium:axinite_ore_ingot"},
		{"axinitium:axinite_ore_ingot", "axinitium:axinite_ore_ingot", "axinitium:axinite_ore_ingot"},
		{"axinitium:axinite_ore_ingot", "axinitium:axinite_ore_ingot", "axinitium:axinite_ore_ingot"}
	}
})

minetest.register_craft({
	type = "shapeless",
	output = 'axinitium:axinite_ore_ingot 9',
	recipe = {'axinitium:axinite_block'},
})

--Define Axinite_Ore Smelt Recipe
minetest.register_craft({
	type = "cooking",
	output = "axinitium:axinite_ore_ingot",
	recipe = "axinitium:axinite_ore",
	cooktime = 50,
	inventory_image = "axinite_ore.png",
})

--Define Axinite wood crafting recipe
minetest.register_craft({
	output = "axinitium:wood 4",
	recipe = {{"axinitium:tree"}},
})

--Define Axinitium crystal seed crafting recipe
minetest.register_craft({
	output = "axinitium:axinitium_crystal_seed",
	recipe = {
		{'axinitium:axinite_block','axinitium:bucket_axinite','axinitium:axinite_block'},
		{'axinitium:bucket_axinite','axinitium:axinite_block','axinitium:bucket_axinite'},
		{'axinitium:axinite_block','axinitium:bucket_axinite','axinitium:axinite_block'},
	}
})

--Define crystaline_bell crafting recipe
minetest.register_craft({
	output = "axinitium:crystaline_bell",
	recipe = {
		{'magmatools:magma_crystal_block'},
		{'default:glass'},
		{'default:stick'},
	}
})

--Define Axinite bucket crafting recipe
minetest.register_craft({
	output = 'axinitium:bucket_empty 1',
	recipe = {
		{'axinitium:axinite_block', '', 'axinitium:axinite_block'},
		{'', 'axinitium:axinite_block', ''},
	}
})
