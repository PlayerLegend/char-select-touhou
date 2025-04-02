-- name: [CS] Touhou 64
-- description: It's da toe-hoes!\n\n\\#ff7777\\This Pack requires Character Select\nto use as a Library!

local TEXT_MOD_NAME = "Touhou 64"
local TEXT_MOD_VERSION = "Release 2"

-- Stops mod from loading if Character Select isn't on
if not _G.charSelectExists then
    djui_popup_create("\\#ffffdc\\\n"..TEXT_MOD_NAME.."\nRequires the Character Select Mod\nto use as a Library!\n\nPlease turn on the Character Select Mod\nand Restart the Room!", 6)
    return 0
end

local CT_MIMA = _G.charSelect.character_add("Mima",
					    "Ghost lady with a large rear.",
					    "player_legend",
					    {r = 50, g = 100, b = 255},
					    smlua_model_util_get_id("mima_geo"),
					    CT_MARIO,
					    get_texture_info("mima-icon"));

local CT_SANAE = _G.charSelect.character_add("Sanae",
					    "Frogs go mlem mlem, snakes go pbbppbpthpbthppth. Thanks for comign folks!",
					    "player_legend",
					    {r = 50, g = 200, b = 100},
					    smlua_model_util_get_id("sanae_s_geo"),
					    CT_MARIO,
					    get_texture_info("sanae-icon"));

local CT_MOMIJI = _G.charSelect.character_add("Momiji",
					    "What the dog doin?",
					    "player_legend",
					    {r = 200, g = 50, b = 50},
					    smlua_model_util_get_id("momiji_s_geo"),
					    CT_MARIO,
					    get_texture_info("momiji-icon"));

local CT_CHEN = _G.charSelect.character_add("Chen",
					    "CHEEEEEEN!",
					    "player_legend",
					    {r = 200, g = 50, b = 50},
					    smlua_model_util_get_id("chen_s_geo"),
					    CT_MARIO,
					    get_texture_info("chen-icon"));

local CT_REIMU = _G.charSelect.character_add("Reimu",
					    "Big fan of violence",
					    "player_legend",
					    {r = 200, g = 50, b = 50},
					    smlua_model_util_get_id("reimu_s_geo"),
					    CT_MARIO,
					    get_texture_info("reimu-icon"));

local CT_MARISA = _G.charSelect.character_add("Marisa",
					    "Da-ze~!",
					    "player_legend",
					    {r = 200, g = 50, b = 50},
					    smlua_model_util_get_id("marisa_s_geo"),
					    CT_MARIO,
					    get_texture_info("marisa-icon"));

local CT_REISEN2 = _G.charSelect.character_add("Reisen II",
					    "Not th08 raisin rabbit, THAT raisin rabbit!",
					    "player_legend",
					    {r = 200, g = 50, b = 50},
					    smlua_model_util_get_id("reisen2_s_geo"),
					    CT_MARIO,
					    get_texture_info("reisen2-icon"));

local CT_DOREMY = _G.charSelect.character_add("Doremy",
					    "buh",
					    "player_legend",
					    {r = 200, g = 50, b = 50},
					    smlua_model_util_get_id("doremy_s_geo"),
					    CT_MARIO,
					    get_texture_info("doremy-icon"));

local CT_ALICE = _G.charSelect.character_add("Alice",
					    "I am going to Alice.",
					    "player_legend",
					    {r = 200, g = 50, b = 50},
					    smlua_model_util_get_id("alice_s_geo"),
					    CT_MARIO,
					    get_texture_info("alice-icon"));

local CT_YUUKA = _G.charSelect.character_add("Yuuka",
					    "pls rember that wen u feel scare or frigten never forget ttimes wen u feeled happy. wen day is dark alway rember happy day",
					    "player_legend",
					    {r = 200, g = 50, b = 50},
					    smlua_model_util_get_id("yuuka_s_geo"),
					    CT_MARIO,
					    get_texture_info("yuuka-icon"));

local CT_YUMEMI = _G.charSelect.character_add("Yumemi",
					    "Strawberry Crisis!",
					    "player_legend",
					    {r = 200, g = 50, b = 50},
					    smlua_model_util_get_id("yumemi_s_geo"),
					    CT_MARIO,
					    get_texture_info("yumemi-icon"));

local CT_YUUMA = _G.charSelect.character_add("Yuuma",
					    "IGNORE YOUR PARENTS! DRINK SHELL OIL!!1!!",
					    "player_legend",
					    {r = 200, g = 50, b = 50},
					    smlua_model_util_get_id("yuuma_s_geo"),
					    CT_MARIO,
					    get_texture_info("yuuma-icon"));

local CT_JOON = _G.charSelect.character_add("Joon",
					    "The Most-Despicable and Disastrous Younger Twin Sister",
					    "player_legend",
					    {r = 200, g = 50, b = 50},
					    smlua_model_util_get_id("joon_s_geo"),
					    CT_MARIO,
					    get_texture_info("joon-icon"));

local CT_VIVIT = _G.charSelect.character_add("VIVIT",
					    "Inside I know, I'm not a void, I'm automaton!",
					    "player_legend",
					    {r = 200, g = 50, b = 50},
					    smlua_model_util_get_id("vivit_s_geo"),
					    CT_MARIO,
					    get_texture_info("vivit-icon"));
function add_costume(ct, name, geo)
   
   _G.charSelect.character_add_costume(ct,
				       name,
				       nil,
				       nil,
				       nil,
				       smlua_model_util_get_id(geo),
				       nil,
				       nil,
				       nil,
				       nil)
end

add_costume(CT_MIMA, "Mima (PODD Alt)", "mima_podd_alt_geo")
add_costume(CT_MIMA, "Mima (Recolorable)", "mima_recolor_geo")

add_costume(CT_CHEN, "Chen*", "chen_geo")
add_costume(CT_MARISA, "Marisa*", "marisa_geo")
add_costume(CT_MOMIJI, "Momiji*", "momiji_geo")
add_costume(CT_REIMU, "Reimu*", "reimu_geo")
add_costume(CT_REISEN2, "Reisen II*", "reisen2_geo")
add_costume(CT_SANAE, "Sanae*", "sanae_geo")
add_costume(CT_DOREMY, "Doremy*", "doremy_geo")
add_costume(CT_ALICE, "Alice*", "alice_geo")
add_costume(CT_YUUKA, "Yuuka*", "yuuka_geo")
add_costume(CT_YUMEMI, "Yumemi*", "yumemi_geo")
add_costume(CT_YUUMA, "Yuuma*", "yuuma_geo")
add_costume(CT_JOON, "Joon*", "joon_geo")
add_costume(CT_VIVIT, "VIVIT*", "vivit_geo")

-- Add Voices
local VOICETABLE_MARISA = {
   [CHAR_SOUND_ATTACKED] = {'marisa_damage1.ogg','marisa_damage2.ogg'},
   [CHAR_SOUND_DOH] = 'bump1.ogg',
   [CHAR_SOUND_DYING] = 'marisa_die.ogg',
   [CHAR_SOUND_GROUND_POUND_WAH] = {'marisa_groundpound.ogg'},
   [CHAR_SOUND_HAHA] = 'marisa_haha.ogg',
   [CHAR_SOUND_HERE_WE_GO] = {'marisa_herewego.ogg'},
   [CHAR_SOUND_HOOHOO] = 'marisa_action2.ogg',
   [CHAR_SOUND_LETS_A_GO] = 'marisa_letsago.ogg',
   [CHAR_SOUND_IMA_TIRED] = 'marisa_imatired.ogg',
   [CHAR_SOUND_MAMA_MIA] = 'marisa_mamamia.ogg',
   [CHAR_SOUND_ON_FIRE] = 'marisa_burn.ogg',
   [CHAR_SOUND_OOOF2] = 'marisa_damage2.ogg',
   [CHAR_SOUND_OOOF] = 'marisa_damage1.ogg',
   [CHAR_SOUND_PANTING] = 'marisa_pant.ogg',
   [CHAR_SOUND_PUNCH_HOO] = 'marisa_action3.ogg',
   [CHAR_SOUND_PUNCH_WAH] = 'marisa_action2.ogg',
   [CHAR_SOUND_PUNCH_YAH] = 'marisa_action1.ogg',
   [CHAR_SOUND_SO_LONGA_BOWSER] = 'marisa_solongbowser.ogg',
   [CHAR_SOUND_UH2] = 'marisa_grunt.ogg',
   [CHAR_SOUND_WAAAOOOW] = 'marisa_scream.ogg',
   [CHAR_SOUND_WHOA] = {'marisa_woah.ogg'},
   [CHAR_SOUND_YAHOO] = {'marisa_yahoo.ogg'},
   [CHAR_SOUND_YAHOO_WAHA_YIPPEE] = 'marisa_yahoo.ogg',
   [CHAR_SOUND_YAH_WAH_HOO] = 'marisa_action1.ogg',
}

local VOICETABLE_REIMU = {
   [CHAR_SOUND_ATTACKED] = {'reimu_damage1.ogg','reimu_damage2.ogg'},
   [CHAR_SOUND_DOH] = 'bump1.ogg',
   [CHAR_SOUND_DYING] = 'reimu_die.ogg',
   [CHAR_SOUND_GROUND_POUND_WAH] = {'reimu_groundpound.ogg'},
   [CHAR_SOUND_HAHA] = 'reimu_haha.ogg',
   [CHAR_SOUND_HERE_WE_GO] = {'reimu_herewego.ogg'},
   [CHAR_SOUND_HOOHOO] = 'reimu_action3.ogg',
   [CHAR_SOUND_LETS_A_GO] = 'reimu_letsago.ogg',
   [CHAR_SOUND_IMA_TIRED] = 'reimu_imatired.ogg',
   [CHAR_SOUND_MAMA_MIA] = 'reimu_mamamia.ogg',
   [CHAR_SOUND_ON_FIRE] = 'reimu_burn.ogg',
   [CHAR_SOUND_OOOF2] = 'reimu_damage2.ogg',
   [CHAR_SOUND_OOOF] = 'reimu_damage1.ogg',
   [CHAR_SOUND_PANTING] = 'reimu_pant.ogg',
   [CHAR_SOUND_PUNCH_HOO] = 'reimu_action3.ogg',
   [CHAR_SOUND_PUNCH_WAH] = 'reimu_action2.ogg',
   [CHAR_SOUND_PUNCH_YAH] = 'reimu_action1.ogg',
   [CHAR_SOUND_SO_LONGA_BOWSER] = 'reimu_solongbowser.ogg',
   [CHAR_SOUND_UH2] = 'reimu_damage1.ogg',
   [CHAR_SOUND_WAAAOOOW] = 'reimu_scream.ogg',
   [CHAR_SOUND_WHOA] = {'reimu_woah.ogg'},
   [CHAR_SOUND_YAHOO] = {'reimu_yahoo.ogg'},
   [CHAR_SOUND_YAHOO_WAHA_YIPPEE] = 'reimu_yahoo.ogg',
   [CHAR_SOUND_YAH_WAH_HOO] = 'reimu_action1.ogg',
}

local VOICETABLE_SANAE = {
   [CHAR_SOUND_ATTACKED] = {'sanae_damage1.ogg','sanae_damage2.ogg'},
   [CHAR_SOUND_DOH] = 'bump1.ogg',
   [CHAR_SOUND_DYING] = 'sanae_die.ogg',
   [CHAR_SOUND_GROUND_POUND_WAH] = {'sanae_groundpound.ogg'},
   [CHAR_SOUND_HAHA] = 'sanae_haha.ogg',
   [CHAR_SOUND_HERE_WE_GO] = {'sanae_herewego.ogg'},
   [CHAR_SOUND_HOOHOO] = 'sanae_action2.ogg',
   [CHAR_SOUND_LETS_A_GO] = 'sanae_letsago.ogg',
   [CHAR_SOUND_IMA_TIRED] = 'sanae_imatired.ogg',
   [CHAR_SOUND_MAMA_MIA] = 'sanae_mamamia.ogg',
   [CHAR_SOUND_ON_FIRE] = 'sanae_burn.ogg',
   [CHAR_SOUND_OOOF2] = 'sanae_damage2.ogg',
   [CHAR_SOUND_OOOF] = 'sanae_damage1.ogg',
   [CHAR_SOUND_PANTING] = 'sanae_pant.ogg',
   [CHAR_SOUND_PUNCH_HOO] = 'sanae_action3.ogg',
   [CHAR_SOUND_PUNCH_WAH] = 'sanae_action2.ogg',
   [CHAR_SOUND_PUNCH_YAH] = 'sanae_action1.ogg',
   [CHAR_SOUND_SO_LONGA_BOWSER] = 'sanae_solongbowser.ogg',
   [CHAR_SOUND_UH2] = 'sanae_damage1.ogg',
   [CHAR_SOUND_WAAAOOOW] = 'sanae_scream.ogg',
   [CHAR_SOUND_WHOA] = {'sanae_woah.ogg'},
   [CHAR_SOUND_YAHOO] = {'sanae_yahoo.ogg'},
   [CHAR_SOUND_YAHOO_WAHA_YIPPEE] = 'sanae_yahoo.ogg',
   [CHAR_SOUND_YAH_WAH_HOO] = 'sanae_action1.ogg',
}

local VOICETABLE_ALICE = {
   [CHAR_SOUND_ATTACKED] = {'alice_damage1.ogg','alice_damage2.ogg'},
   [CHAR_SOUND_DOH] = 'bump1.ogg',
   [CHAR_SOUND_DYING] = 'alice_die.ogg',
   [CHAR_SOUND_GROUND_POUND_WAH] = {'alice_groundpound.ogg'},
   [CHAR_SOUND_HAHA] = 'alice_haha.ogg',
   [CHAR_SOUND_HERE_WE_GO] = {'alice_herewego.ogg'},
   [CHAR_SOUND_HOOHOO] = 'alice_action2.ogg',
   [CHAR_SOUND_LETS_A_GO] = 'alice_letsago.ogg',
   [CHAR_SOUND_IMA_TIRED] = 'alice_imatired.ogg',
   [CHAR_SOUND_MAMA_MIA] = 'alice_mamamia.ogg',
   [CHAR_SOUND_ON_FIRE] = 'alice_burn.ogg',
   [CHAR_SOUND_OOOF2] = 'alice_damage2.ogg',
   [CHAR_SOUND_OOOF] = 'alice_damage1.ogg',
   [CHAR_SOUND_PANTING] = 'alice_pant.ogg',
   [CHAR_SOUND_PUNCH_HOO] = 'alice_action3.ogg',
   [CHAR_SOUND_PUNCH_WAH] = 'alice_action2.ogg',
   [CHAR_SOUND_PUNCH_YAH] = 'alice_action1.ogg',
   [CHAR_SOUND_SO_LONGA_BOWSER] = 'alice_solongbowser.ogg',
   [CHAR_SOUND_UH2] = 'alice_damage1.ogg',
   [CHAR_SOUND_WAAAOOOW] = 'alice_scream.ogg',
   [CHAR_SOUND_WHOA] = {'alice_woah.ogg'},
   [CHAR_SOUND_YAHOO] = {'alice_yahoo.ogg'},
   [CHAR_SOUND_YAHOO_WAHA_YIPPEE] = 'alice_yahoo.ogg',
   [CHAR_SOUND_YAH_WAH_HOO] = 'alice_action1.ogg',
}
function add_voice(model, voicetable)
   _G.charSelect.character_add_voice(smlua_model_util_get_id(model), voicetable)
end

VOICETABLE_CHEN = VOICETABLE_MARISA
VOICETABLE_MIMA = VOICETABLE_MARISA
VOICETABLE_MOMIJI = VOICETABLE_MARISA
VOICETABLE_REISEN2 = VOICETABLE_MARISA
VOICETABLE_DOREMY = VOICETABLE_SANAE
VOICETABLE_YUUKA = VOICETABLE_SANAE
VOICETABLE_YUUMA = VOICETABLE_MARISA
VOICETABLE_YUMEMI = VOICETABLE_SANAE
VOICETABLE_JOON = VOICETABLE_MARISA
VOICETABLE_VIVIT = VOICETABLE_REIMU

add_voice("chen_s_geo", VOICETABLE_CHEN)
add_voice("marisa_s_geo", VOICETABLE_MARISA)
add_voice("mima_geo", VOICETABLE_MIMA)
add_voice("momiji_s_geo", VOICETABLE_MIMA)
add_voice("reimu_s_geo", VOICETABLE_REIMU)
add_voice("reisen2_s_geo", VOICETABLE_REISEN2)
add_voice("sanae_s_geo", VOICETABLE_SANAE)
add_voice("doremy_s_geo", VOICETABLE_DOREMY)
add_voice("yuuka_s_geo", VOICETABLE_YUUKA)
add_voice("yuuma_s_geo", VOICETABLE_YUUMA)
add_voice("alice_s_geo", VOICETABLE_ALICE)
add_voice("yumemi_s_geo", VOICETABLE_YUMEMI)
add_voice("joon_s_geo", VOICETABLE_JOON)
add_voice("vivit_s_geo", VOICETABLE_VIVIT)

add_voice("chen_geo", VOICETABLE_CHEN)
add_voice("marisa_geo", VOICETABLE_MARISA)
add_voice("momiji_geo", VOICETABLE_MIMA)
add_voice("reimu_geo", VOICETABLE_REIMU)
add_voice("reisen2_geo", VOICETABLE_REISEN2)
add_voice("sanae_geo", VOICETABLE_SANAE)
add_voice("doremy_geo", VOICETABLE_DOREMY)
add_voice("yuuka_geo", VOICETABLE_YUUKA)
add_voice("yuuma_geo", VOICETABLE_YUUMA)
add_voice("alice_geo", VOICETABLE_ALICE)
add_voice("yumemi_geo", VOICETABLE_YUMEMI)
add_voice("joon_geo", VOICETABLE_JOON)
add_voice("vivit_geo", VOICETABLE_VIVIT)

add_voice("mima_recolor_geo", VOICETABLE_MIMA)
add_voice("mima_podd_alt_geo", VOICETABLE_MIMA)

local character_get_voice, update_sound, update_snore = _G.charSelect.character_get_voice, _G.charSelect.voice.sound, _G.charSelect.voice.snore
local function character_sounds(m, sound)
    local v = _G.charSelect.character_get_voice(m)
    if v == VOICETABLE_MARISA or v == VOICETABLE_REIMU or v == VOICETABLE_SANAE or v == VOICETABLE_ALICE
    then
        return update_sound(m, sound)
    end
end

hook_event(HOOK_CHARACTER_SOUND, character_sounds)
