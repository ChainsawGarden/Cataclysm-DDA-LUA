--[[ DEBUG ]]--

DEBUG_ENABLED = false
SHOW_INTRO_MESSAGE = true

--[[ Unnamed requirements ]]--

require("./data/mods/dda-lua/lua/const")
require("./data/mods/dda-lua/lua/functions")
require("./data/mods/dda-lua/lua/temp")

--[[ Named requirements ]]--

json = require("./data/mods/dda-lua/lua/dkjson")
log = require("./data/mods/dda-lua/lua/log")
figlet = require("./data/mods/dda-lua/lua/figlet")
display = require("./data/mods/dda-lua/lua/display")
params = require("./data/mods/dda-lua/lua/params")
functions_player = require("./data/mods/dda-lua/lua/functions_player")

--[[ Globals initialization ]]--

LOG = log.init("./dda-lua.log", DEBUG_ENABLED or false, DEBUG_ENABLED or false)
PARAM = params.init()
FIGLET = figlet.init()
DISPLAY = display.init()
PLAYER = functions_player.init()

--[[
--local intro_message = "dda-lua"
--local intro_font = "standard"
--DISPLAY.popup_figlet(intro_message, intro_font)
]]--

local intro_message = {

  "You are running `dda` with `dda-lua` modification.",
  "\n",
  "DEBUG_ENABLED  variable is set to: "..tostring(DEBUG_ENABLED)..".",
  "\n",
  "If it is enabled you can check logs in `./dda-lua.log`."
}
if (SHOW_INTRO_MESSAGE == true or DEBUG_ENABLED == true) then
  DISPLAY.popup_table(intro_message) 
end

--[[

local skill_names = {

  "mechanics", "swimming", "bashing", "cutting", "melee", "throw",
  "driving", "survival", "tailor", "traps", "dodge", "stabbing", "unarmed",
  "barter", "computer", "cooking", "electronics", "fabrication", "firstaid", "speech",
  "archery", "gun", "launcher", "pistol", "rifle", "shotgun", "smg",
  "athletics"

}

local stat_names = {

  "squares_walked", "damage_taken", "damage_healed", "headshots"

}

]]--
