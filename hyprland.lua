-- Hyprland main config
-- See https://wiki.hypr.land/Configuring/Start/

local home = os.getenv("HOME")
local caelestia = home .. "/.config/caelestia/"
local hypr = home .. "/.config/hypr"
local hldir = hypr .. "/hyprland"

-- Color palette (must load first, provides color globals and helpers)
dofile(hypr .. "/scheme/current.lua")

-- Core variables (depends on color globals)
dofile(hypr .. "/variables.lua")

-- Default monitor rule
hl.monitor({ output = "", mode = "preferred", position = "auto", scale = 1 })

-- Configs
dofile(hldir .. "/env.lua")
dofile(hldir .. "/general.lua")
dofile(hldir .. "/input.lua")
dofile(hldir .. "/misc.lua")
dofile(hldir .. "/animations.lua")
dofile(hldir .. "/decoration.lua")
dofile(hldir .. "/group.lua")
dofile(hldir .. "/execs.lua")
dofile(hldir .. "/rules.lua")
dofile(hldir .. "/gestures.lua")
dofile(hldir .. "/keybinds.lua")
dofile(hldir .. "/scrolling.lua")

dofile(caelestia .. "hypr-user.lua")