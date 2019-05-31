
-- Notification settings
-- Set the urgency level dependent on the origin of the notification.
-- The filter has 3 keys: urgency, appname and category. By default, urgency is
-- one of: low, normal, critical, ok, info, warn. These defaults are accessible
-- in naughty.config.presets

local gtable = require("gears.table")
local naughty = require("naughty")
local presets = naughty.config.presets
local naughty_dbus = require("naughty.dbus")

local urgency = {
    low = "\0",
    normal = "\1",
    critical = "\2"
}

-- Define levels for the actions
local levels = {
    reminder = {
        bg = "#ffffff",
        fg = "#000000",
        timeout = 0
    },
    messages = {
        bg = "#ffff00",
        fg = "#000000",
        timeout = 6
    },
    critical = {
        bg = "#ff0000",
        fg = "#000000",
        timeout = 0
    },
    normal = {
        bg = "#00ff00",
        fg = "#000000",
        timeout = 6
    },
    low = {
        bg = "#0000ff",
        fg = "#ffffff",
        timeout = 3
    }
}

-- Define here the filters
local firefox = { appname = "firefox" }
local chromium = { appname = "chromium" }

-- Add the filters to the mapping
local mapping = {
    { { urgency = urgency.low }, levels.low },
    { { urgency = urgency.normal }, levels.normal },
    { { urgency = urgency.critical }, levels.critical },
    { firefox, levels.reminder },
    { chromium, levels.messages }
}

naughty_dbus.config.mapping = mapping
--gtable.join(naughty_dbus.config.mapping, mapping)
