local wezterm = require "wezterm"

local M = {}

function M.apply(config)
    if wezterm.target_triple == "x86_64-pc-windows-msvc" then
        config.font = wezterm.font "CaskaydiaCove Nerd Font Mono"
        config.font_size = 14
    else
        config.font = wezterm.font "JetBrainsMono Nerd Font"
        config.font_size = 22
    end
end

return M
