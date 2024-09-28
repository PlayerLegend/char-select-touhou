-- name: [CS] Touhou 64
-- description: It's da toe-hoes!\n\n\\#ff7777\\This Pack requires Character Select\nto use as a Library!

local TEXT_MOD_NAME = "Touhou 64"
local TEXT_MOD_VERSION = "Release 2"

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

local E_MODEL_MIMA_RECOLOR = smlua_model_util_get_id("mima_recolor_geo")
local CT_MIMA_RECOLOR = _G.charSelect.character_add("Mima (Recolorable)",
					    "Ghost lady with a large rear.",
					    "player_legend",
					    {r = 50, g = 100, b = 255},
					    E_MODEL_MIMA_RECOLOR,
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

local TEX_CHEN = get_texture_info("chen-icon")
local E_MODEL_CHEN = smlua_model_util_get_id("chen_geo")
local CT_CHEN = _G.charSelect.character_add("Chen",
					    "CHEEEEEEN!",
					    "player_legend",
					    {r = 200, g = 50, b = 50},
					    E_MODEL_CHEN,
					    CT_MARIO,
					    TEX_CHEN);

local TEX_REIMU = get_texture_info("reimu-icon")
local E_MODEL_REIMU = smlua_model_util_get_id("reimu_geo")
local CT_REIMU = _G.charSelect.character_add("Reimu",
					    "Big fan of violence",
					    "player_legend",
					    {r = 200, g = 50, b = 50},
					    E_MODEL_REIMU,
					    CT_MARIO,
					    TEX_REIMU);

local TEX_MARISA = get_texture_info("marisa-icon")
local E_MODEL_MARISA = smlua_model_util_get_id("marisa_geo")
local CT_MARISA = _G.charSelect.character_add("Marisa",
					    "You dodged it?",
					    "player_legend",
					    {r = 200, g = 50, b = 50},
					    E_MODEL_MARISA,
					    CT_MARIO,
					    TEX_MARISA);

-- Add Voices

local VOICETABLE_MARISA = {
   [CHAR_SOUND_ATTACKED] = {'mari_naniyo.ogg','mari_uwah.ogg'},
   [CHAR_SOUND_DOH] = 'bump1.ogg',
   [CHAR_SOUND_DYING] = 'mari_naniyo.ogg',
   [CHAR_SOUND_GROUND_POUND_WAH] = {'mari_oh1.ogg'},
   [CHAR_SOUND_HAHA] = 'mari_laugh1.ogg',
   [CHAR_SOUND_HERE_WE_GO] = {'mari_yo_reimu.ogg'},
   [CHAR_SOUND_HOOHOO] = 'mari_aah2.ogg',
   [CHAR_SOUND_LETS_A_GO] = 'mari_awe.ogg',
   [CHAR_SOUND_MAMA_MIA] = 'mari_waitaminute.ogg',
   [CHAR_SOUND_ON_FIRE] = 'mari_burned2.ogg',
   [CHAR_SOUND_OOOF2] = 'mari_uwah.ogg',
   [CHAR_SOUND_OOOF] = 'bump1.ogg',
   [CHAR_SOUND_PANTING] = 'mari_1hp.ogg',
   [CHAR_SOUND_PUNCH_HOO] = 'mari_aah2.ogg',
   [CHAR_SOUND_PUNCH_WAH] = 'mari_grunt1.ogg',
   [CHAR_SOUND_PUNCH_YAH] = 'mari_grunt3.ogg',
   [CHAR_SOUND_SO_LONGA_BOWSER] = 'mari_laugh1.ogg',
   [CHAR_SOUND_UH2] = 'mari_grunt1.ogg',
   [CHAR_SOUND_WAAAOOOW] = 'mari_med_scream.ogg',
   [CHAR_SOUND_WHOA] = {'mari_eh.ogg'},
   [CHAR_SOUND_YAHOO] = {'mari_aah2.ogg'},
   [CHAR_SOUND_YAHOO_WAHA_YIPPEE] = 'mari_yo_reimu.ogg',
   [CHAR_SOUND_YAH_WAH_HOO] = 'mari_grunt3.ogg',
}

_G.charSelect.character_add_voice(E_MODEL_MARISA, VOICETABLE_MARISA)
_G.charSelect.character_add_voice(E_MODEL_REIMU, VOICETABLE_MARISA)
_G.charSelect.character_add_voice(E_MODEL_CHEN, VOICETABLE_MARISA)
_G.charSelect.character_add_voice(E_MODEL_MOMIJI, VOICETABLE_MARISA)
_G.charSelect.character_add_voice(E_MODEL_SANAE, VOICETABLE_MARISA)
_G.charSelect.character_add_voice(E_MODEL_MIMA, VOICETABLE_MARISA)
_G.charSelect.character_add_voice(E_MODEL_MIMA_RECOLOR, VOICETABLE_MARISA)

local character_get_voice, update_sound, update_snore = _G.charSelect.character_get_voice, _G.charSelect.voice.sound, _G.charSelect.voice.snore
local function character_sounds(m, sound)
    local v = _G.charSelect.character_get_voice(m)
    if v == VOICETABLE_MARISA
    then
        return update_sound(m, sound)
    end
end

hook_event(HOOK_CHARACTER_SOUND, character_sounds)
