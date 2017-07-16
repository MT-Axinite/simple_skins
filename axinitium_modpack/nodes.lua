minetest.register_alias("bucket", "axinitium:bucket_empty")
minetest.register_alias("bucket_axinite", "axinitium:bucket_axinite")
minetest.register_alias("axinitium_crystals:axinitium_crystal_seed", "axinitium:axinitium_crystal_seed")
minetest.register_alias("axinitium_crystals:axinitium_crystal_ore1", "axinitium:axinitium_crystal_ore1")
minetest.register_alias("axinitium_crystals:axinitium_crystal_ore2", "axinitium:axinitium_crystal_ore2")
minetest.register_alias("axinitium_crystals:axinitium_crystal_ore3", "axinitium:axinitium_crystal_ore3")
minetest.register_alias("axinitium_crystals:axinitium_crystal_ore4", "axinitium:axinitium_crystal_ore4")
minetest.register_alias("axinitium_crystals:crystaline_bell", "axinitium:crystaline_bell")

--Make Axinite Ore Block spawn
minetest.register_ore({
	ore_type = "scatter",
	ore = "axinitium:axinite_ore_block",
	wherein = "default:stone",
	clust_scarcity = 12*12*12,
	clust_num_ores = 1,
	clust_size = 1,
	y_min = -31000,
	y_max = -20000,
})

-- Define Axinite_ore_block node
minetest.register_node("axinitium:axinite_ore_block", {
	description = "Axinitium",
	tiles = {"default_stone.png^axinite_ore_block.png"},
	groups = {stone=2, cracky=3},
	drop = "axinitium:axinite_ore",
	is_ground_content = true,
})

minetest.register_node("axinitium:axinite_block", {
	description = "Axinitium Block",
	tiles = {"axinite_block.png", "axinite_block.png^[transformR270", "axinite_block.png^[transformR90",
	"axinite_block.png", "axinite_block.png^[transformR270", "axinite_block.png^[transformR180"},
	light_source = LIGHT_MAX,
	groups = {cracky=1, level=3},
	sounds = default.node_sound_stone_defaults(),
})

-- Axinite Crystal
minetest.register_node("axinitium:axinitium_crystal_ore1", {
	description = "Axinite Crystal Ore",
	mesh = "axinitium_crystal_ore1.obj",
	tiles = {"crystal.png"},
	paramtype = "light",
	drawtype = "mesh",
	groups = {cracky = 1},
	drop = "axinitium:axinite_ore_ingot 1",
	use_texture_alpha = true,
	sounds = default.node_sound_stone_defaults(),
	light_source = 7,
	selection_box = {
		type = "fixed",
		fixed = {-0.3, -0.5, -0.3, 0.3, 0.35, 0.3}
	},
})

minetest.register_node("axinitium:axinitium_crystal_ore2", {
	description = "Axinite Crystal Ore",
	mesh = "axinitium_crystal_ore2.obj",
	tiles = {"crystal.png"},
	paramtype = "light",
	drawtype = "mesh",
	groups = {cracky = 1},
	drop = "axinitium:axinite_ore_ingot 2",
	use_texture_alpha = true,
	sounds = default.node_sound_stone_defaults(),
	light_source = 8,
	selection_box = {
		type = "fixed",
		fixed = {-0.3, -0.5, -0.3, 0.3, 0.35, 0.3}
	},
})

minetest.register_node("axinitium:axinitium_crystal_ore3", {
	description = "Axinite Crystal Ore",
	mesh = "axinitium_crystal_ore3.obj",
	tiles = {"crystal.png"},
	paramtype = "light",
	drawtype = "mesh",
	groups = {cracky = 1},
	drop = "axinitium:axinite_ore_ingot 3",
	use_texture_alpha = true,
	sounds = default.node_sound_stone_defaults(),
	light_source = 9,
	selection_box = {
		type = "fixed",
		fixed = {-0.3, -0.5, -0.3, 0.3, 0.35, 0.3}
	},
})

minetest.register_node("axinitium:axinitium_crystal_ore4", {
	description = "Axinite Crystal Ore",
	mesh = "axinitium_crystal_ore4.obj",
	tiles = {"crystal.png"},
	paramtype = "light",
	drawtype = "mesh",
	groups = {cracky = 1},
	drop = "axinitium:axinite_ore_ingot 4",
	use_texture_alpha = true,
	sounds = default.node_sound_stone_defaults(),
	light_source = 10,
	selection_box = {
		type = "fixed",
		fixed = {-0.3, -0.5, -0.3, 0.3, 0.35, 0.3}
	},
})

-- axinite dirt
minetest.register_node("axinitium:axinite_dirt", {
	description = "Axinite Dirt",
	tiles = {"axinite_grass.png", "default_dirt.png",
		{name = "default_dirt.png^axinite_dirt_side.png",
			tileable_vertical = false}},
	groups = {crumbly = 3, soil = 1, ethereal_grass = 1},
	soil = {
		base = "axinitium:axinite_dirt",
		dry = "farming:soil",
		wet = "farming:soil_wet"
	},
	drop = "default:dirt",
	sounds = default.node_sound_dirt_defaults({
		footstep = {name = "default_grass_footstep", gain = 0.25},
	}),
})

-- Axinite tree
minetest.register_node("axinitium:sapling", {
	description = "Axinitium Sapling",
	drawtype = "plantlike",
	visual_scale = 1.0,
	tiles = {"axinitium_sapling.png"},
	inventory_image = "axinitium_sapling.png",
	wield_image = "axinitium_sapling.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	selection_box = {
		type = "fixed",
		fixed = {-0.3, -0.5, -0.3, 0.3, 0.35, 0.3}
	},
	groups = {snappy = 2, dig_immediate = 3, flammable = 2,
		attached_node = 1, sapling = 1, axinitium_sapling = 1},
	sounds = default.node_sound_leaves_defaults(),
	grown_height = 8,
})

minetest.register_node("axinitium:tree", {
	description = "Axinitium Tree",
	tiles = {"axinitium_tree_top.png", "axinitium_tree_top.png", "axinitium_tree.png"},
	paramtype2 = "facedir",
	is_ground_content = false,
	groups = {tree = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 2},
	sounds = default.node_sound_wood_defaults(),
	on_place = minetest.rotate_node
})

minetest.register_node("axinitium:wood", {
	description = "Axinitium Wooden Planks",
	tiles = {"axinitium_wood.png"},
	is_ground_content = false,
	groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 3, wood = 1},
	sounds = default.node_sound_wood_defaults(),
})

minetest.register_node("axinitium:leaves", {
	description = "Axinitium Leaves",
	drawtype = "allfaces_optional",
	waving = 1,
	visual_scale = 1.3,
	tiles = {"axinitium_leaves.png"},
	special_tiles = {"axinitium_leaves_simple.png"},
	paramtype = "light",
	is_ground_content = false,
	groups = {snappy = 3, leafdecay = 3, flammable = 2, leaves = 1},
	drop = {
		max_items = 1,
		items = {
			{
				-- player will get sapling with 1/20 chance
				items = {'axinitium:sapling'},
				rarity = 20,
			},
			{
				-- player will get leaves only if he get no saplings,
				-- this is because max_items is 1
				items = {'axinitium:leaves'},
			}
		}
	},
	sounds = default.node_sound_leaves_defaults(),

	after_place_node = default.after_place_leaves,
})

minetest.register_node("axinitium:apple", {
	description = "Axinitium Apple",
	drawtype = "plantlike",
	visual_scale = 1.0,
	tiles = {"axinitium_apple.png"},
	inventory_image = "axinitium_apple.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	is_ground_content = false,
	selection_box = {
		type = "fixed",
		fixed = {-0.2, -0.5, -0.2, 0.2, 0, 0.2}
	},
	groups = {fleshy = 3, dig_immediate = 3, flammable = 2,leafdecay = 3, leafdecay_drop = 1, attached_node=1},
	on_use = function(itemstack, user, pointed_thing)
		local name = user:get_player_name()
		local h = tonumber(hbhunger.hunger[name])
		if h > 0 then
			h = h-5
			if h < 0 then
				h = 0
			end
			hbhunger.hunger[name] = h
			hbhunger.set_hunger_raw(user)
			mana.add_up_to(user:get_player_name(), 10)
		end
--		itemstack = minetest.do_item_eat(-5, nil, itemstack, user, pointed_thing)
--		return itemstack
	end,
	sounds = default.node_sound_leaves_defaults(),
	after_place_node = function(pos, placer, itemstack)
		if placer:is_player() then
			minetest.set_node(pos, {name = "axinitium:apple", param2 = 1})
		end
	end,
})

default.register_fence("axinitium:fence_wood", {
	description = "Axinitium Fence",
	texture = "axinitium_fence_wood.png",
	material = "axinitium:wood",
	groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2},
	sounds = default.node_sound_wood_defaults()
})

-- Axinite Source
minetest.register_node("axinitium:axinite_source", {
	description = "Axinite Source",
	drawtype = "liquid",
	tiles = {
		{
			name = "axinite_source_animated.png",
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 3.0,
			},
		},
	},
	special_tiles = {
		-- New-style lava source material (mostly unused)
		{
			name = "axinite_source_animated.png",
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 3.0,
			},
			backface_culling = false,
		},
	},
	paramtype = "light",
	light_source = default.LIGHT_MAX - 1,
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	is_ground_content = false,
	drop = "",
	drowning = 1,
	liquidtype = "source",
	liquid_alternative_flowing = "axinitium:axinite_flowing",
	liquid_alternative_source = "axinitium:axinite_source",
	liquid_viscosity = 7,
	liquid_renewable = false,
	damage_per_second = 4 * 2,
	post_effect_color = {a = 191, r = 255, g = 64, b = 0},
	groups = {lava = 3, liquid = 2, hot = 3, igniter = 1},
})

minetest.register_node("axinitium:axinite_flowing", {
	description = "Flowing Axinite",
	drawtype = "flowingliquid",
	tiles = {"axinite_src.png"},
	special_tiles = {
		{
			name = "axinite_flowing_animated.png",
			backface_culling = false,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 3.3,
			},
		},
		{
			name = "axinite_flowing_animated.png",
			backface_culling = true,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 3.3,
			},
		},
	},
	paramtype = "light",
	paramtype2 = "flowingliquid",
	light_source = default.LIGHT_MAX - 1,
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	is_ground_content = false,
	drop = "",
	drowning = 1,
	liquidtype = "flowing",
	liquid_alternative_flowing = "axinitium:axinite_flowing",
	liquid_alternative_source = "axinitium:axinite_source",
	liquid_viscosity = 7,
	liquid_renewable = false,
	damage_per_second = 4 * 2,
	post_effect_color = {a = 191, r = 255, g = 64, b = 0},
	groups = {lava = 3, liquid = 2, hot = 3, igniter = 1,
		not_in_creative_inventory = 1},
})
