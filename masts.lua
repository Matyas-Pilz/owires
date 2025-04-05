--==========
--MAIN
--==========

local function register_mast(name, wdesc, wnodebox)
    minetest.register_node("owires:" .. name, {
        description = wdesc,
        tiles = {"bpx.png"},
        groups = {cracky = 3, oddly_breakable_by_hand = 2},
        drawtype = "nodebox",
        paramtype = "light",
        paramtype2 = "color4dir",
        node_box = {
            type = "fixed",
            fixed = wnodebox, --nodebox for node
        },
        sounds = default.node_sound_wood_defaults(),
        is_ground_content = false,
        palette = "wirepalette.png",
        on_rotate = screwdriver.rotate_simple,
        not_blocking_trains = 1
    })
end
--==========
--MASTS
--==========

register_mast("mast","Mast",{-0.2,-0.5,-0.2,0.2,2.5,0.2})
register_mast("umast","Upper node of mast",{-0.2,-0.5,-0.2,0.2,0.5,0.2})
register_mast("lmast","Light mast",{-0.15,-0.5,-0.15,0.15,2.5,0.15})
register_mast("lumast","Light upper node of mast",{-0.15,-0.5,-0.15,0.15,0.5,0.15})

--==========
--Supports
--==========
register_mast("support","Support",{-0.5,-0.5,-0.1,0.5,-0.3,0.1})
register_mast("supportleft","Support left",{-0.5,-0.5,-0.1,0.1,-0.3,0.1})
register_mast("supportt","Support T",{{-0.5,-0.5,-0.1,0.5,-0.3,0.1},{-0.1,-0.5,-0.5,0.1,-0.3,-0.1}})
register_mast("supportx","Support cross",{{-0.5,-0.5,-0.1,0.5,-0.3,0.1},{-0.1,-0.5,-0.5,0.1,-0.3,0.5}})
register_mast("supportc","Support corner",{{-0.1,-0.5,-0.1,0.5,-0.3,0.1},{-0.1,-0.5,-0.5,0.1,-0.3,-0.1}})

--==========
--Supports with masts
--==========

-- Normal
------------
register_mast("supportmast","Support with mast",{{-0.5,-0.5,-0.1,0.5,-0.3,0.1},{-0.2,-0.5,-0.2,0.2,0.5,0.2}})
register_mast("supportleftmast","Support left with mast",{{-0.5,-0.5,-0.1,-0.2,-0.3,0.1},{-0.2,-0.5,-0.2,0.2,0.5,0.2}})
register_mast("supportcrossmast","Support cross with mast",{{-0.5,-0.5,-0.1,0.5,-0.3,0.1},{-0.1,-0.5,-0.5,0.1,-0.3,0.5},{-0.2,-0.5,-0.2,0.2,0.5,0.2}})
register_mast("supportcornermast","Support corner with mast",{{-0.5,-0.5,-0.1,0,-0.3,0.1},{-0.1,-0.5,0,0.1,-0.3,0.5},{-0.2,-0.5,-0.2,0.2,0.5,0.2}})
register_mast("supporttmast","Support T with mast",{{-0.5,-0.5,-0.1,0.5,-0.3,0.1},{-0.1,-0.5,0,0.1,-0.3,0.5},{-0.2,-0.5,-0.2,0.2,0.5,0.2}})

-- Light
------------
register_mast("supportlmast","Support with light mast",{{-0.5,-0.5,-0.1,0.5,-0.3,0.1},{-0.15,-0.5,-0.15,0.15,0.5,0.15}})
register_mast("supportleftlmast","Support left with light mast",{{-0.5,-0.5,-0.1,-0.15,-0.3,0.1},{-0.15,-0.5,-0.15,0.15,0.5,0.15}})
register_mast("supportcrosslmast","Support cross with light mast",{{-0.5,-0.5,-0.1,0.5,-0.3,0.1},{-0.1,-0.5,-0.5,0.1,-0.3,0.5},{-0.15,-0.5,-0.15,0.15,0.5,0.15}})
register_mast("supportcornerlmast","Support corner with light mast",{{-0.5,-0.5,-0.1,0,-0.3,0.1},{-0.1,-0.5,0,0.1,-0.3,0.5},{-0.15,-0.5,-0.15,0.15,0.5,0.15}})
register_mast("supporttlmast","Support T with light mast",{{-0.5,-0.5,-0.1,0.5,-0.3,0.1},{-0.1,-0.5,0,0.1,-0.3,0.5},{-0.15,-0.5,-0.15,0.15,0.5,0.15}})