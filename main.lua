-- name: [CS] Touhou 64
-- description: It's da toe-hoes!\n\n\\#ff7777\\This Pack requires Character Select\nto use as a Library!

local TEXT_MOD_NAME = "Touhou 64"
local TEXT_MOD_VERSION = "Release 1"

-- Stops mod from loading if Character Select isn't on
if not _G.charSelectExists then
    djui_popup_create("\\#ffffdc\\\n"..TEXT_MOD_NAME.."\nRequires the Character Select Mod\nto use as a Library!\n\nPlease turn on the Character Select Mod\nand Restart the Room!", 6)
    return 0
end

local TEX_MIMA = get_texture_info("mima-icon")
local E_MODEL_MIMA = smlua_model_util_get_id("mima_geo")
local CT_MIMA = _G.charSelect.character_add("Mima",
					    "Ghost lady with a large rear.",
					    "player_legend",
					    {r = 50, g = 100, b = 255},
					    E_MODEL_MIMA,
					    CT_MARIO,
					    TEX_MIMA);

local TEX_SANAE = get_texture_info("sanae-icon")
local E_MODEL_SANAE = smlua_model_util_get_id("sanae_geo")
local CT_SANAE = _G.charSelect.character_add("Sanae",
					    "Frogs go mlem mlem, snakes go pbbppbpthpbthppth. Thanks for comign folks!",
					    "player_legend",
					    {r = 50, g = 200, b = 100},
					    E_MODEL_SANAE,
					    CT_MARIO,
					    TEX_SANAE);

local TEX_MOMIJI = get_texture_info("momiji-icon")
local E_MODEL_MOMIJI = smlua_model_util_get_id("momiji_geo")
local CT_MOMIJI = _G.charSelect.character_add("Momiji",
					    "What the dog doin?",
					    "player_legend",
					    {r = 200, g = 50, b = 50},
					    E_MODEL_MOMIJI,
					    CT_MARIO,
					    TEX_MOMIJI);
