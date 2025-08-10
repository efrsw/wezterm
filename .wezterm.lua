-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- Load modular configurations
local font = require("config.font")
local keys = require("config.keys")
local launch_menu = require("config.launch_menu")
local general = require("config.general")

-- Apply font configuration
font.apply(config)

-- Apply general settings
general.apply(config)

-- Apply key bindings
keys.apply(config)

-- Apply launch menu
launch_menu.apply(config)

-- Return the configuration to wezterm
return config
