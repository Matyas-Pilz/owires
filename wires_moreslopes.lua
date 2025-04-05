if not minetest.get_modpath("advtrains_moreslopes") then
    return
end

local function register_wire(name, wdesc, wnodebox)
minetest.register_node("owires:" .. name, {
description = "Overhead wire - " .. wdesc,
tiles = {"bpx.png"},
groups = {cracky = 3, oddly_breakable_by_hand = 2},
drawtype = "nodebox",
paramtype = "light",
paramtype2 = "color4dir",
node_box = {
type = "fixed",
fixed = wnodebox, --nodebox for node
},
collision_box = {
type = "fixed",
fixed = {}, --without collisions
},
selection_box = {
type = "fixed",
fixed = {-0.3, 0.2, -0.3, 0.3, 0.5, 0.3}, --same for all nodes
},
sounds = default.node_sound_wood_defaults(),
is_ground_content = false,
palette = "wirepalette.png",
on_rotate = screwdriver.rotate_simple,
not_blocking_trains = 1,
		walkable = false
})
end

local function register_slope_wire(name, label, y_shift_divisor, y_shift_add)
local boxes = {}
local count = 20
local x1, x2 = -0.05, 0.05
local z_start, z_step = -0.5, 0.05
local y_base = 0.4
local y_top_start = 0.5

local y_base_shifted = y_base + (y_shift_add or 0)

for i = 0, count - 1 do
local y1 = y_base_shifted + ((i * 0.05) / y_shift_divisor)
local y2 = y1 + 0.1
local z1 = z_start + i * z_step
local z2 = z1 + z_step
table.insert(boxes, {x1, y1, z1, x2, y2, z2})
end

register_wire(name, label, boxes)
end

register_slope_wire("sl41", "slope 4 part 1", 4, 0)
register_slope_wire("sl42", "slope 4 part 2", 4, 1/4)
register_slope_wire("sl43", "slope 4 part 3", 4, 2/4)
register_slope_wire("sl44", "slope 4 part 4", 4, 3/4)
register_slope_wire("sl51", "slope 5 part 1", 5, 0)
register_slope_wire("sl52", "slope 5 part 2", 5, 1/5)
register_slope_wire("sl53", "slope 5 part 3", 5, 2/5)
register_slope_wire("sl54", "slope 5 part 4", 5, 3/5)
register_slope_wire("sl55", "slope 5 part 5", 5, 4/5)
register_slope_wire("sl61", "slope 6 part 1", 6, 0)
register_slope_wire("sl62", "slope 6 part 2", 6, 1/6)
register_slope_wire("sl63", "slope 6 part 3", 6, 2/6)
register_slope_wire("sl64", "slope 6 part 4", 6, 3/6)
register_slope_wire("sl65", "slope 6 part 5", 6, 4/6)
register_slope_wire("sl66", "slope 6 part 6", 6, 5/6)
register_slope_wire("sl71", "slope 7 part 1", 7, 0)
register_slope_wire("sl72", "slope 7 part 2", 7, 1/7)
register_slope_wire("sl73", "slope 7 part 3", 7, 2/7)
register_slope_wire("sl74", "slope 7 part 4", 7, 3/7)
register_slope_wire("sl75", "slope 7 part 2", 7, 4/7)
register_slope_wire("sl76", "slope 7 part 3", 7, 5/7)
register_slope_wire("sl77", "slope 7 part 7", 7, 6/7)
register_slope_wire("sl81", "slope 8 part 1", 8, 0)
register_slope_wire("sl82", "slope 8 part 2", 8, 1/8)
register_slope_wire("sl83", "slope 8 part 3", 8, 2/8)
register_slope_wire("sl84", "slope 8 part 4", 8, 3/8)
register_slope_wire("sl85", "slope 8 part 5", 8, 4/8)
register_slope_wire("sl86", "slope 8 part 6", 8, 5/8)
register_slope_wire("sl87", "slope 8 part 7", 8, 6/8)
register_slope_wire("sl88", "slope 8 part 8", 8, 7/8)
