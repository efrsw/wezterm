local wezterm = require("wezterm")

local M = {}

function M.apply(config)
    config.font = wezterm.font("CaskaydiaCove Nerd Font Mono")
    config.font_size = 12
end

return M
