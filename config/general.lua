local wezterm = require("wezterm")

local M = {}

function M.apply(config)
    if wezterm.target_triple == 'x86_64-pc-windows-msvc' then
        config.default_prog = { "pwsh" }
    end

    config.max_fps = 240
    config.scrollback_lines = 100000
    config.adjust_window_size_when_changing_font_size = false
    config.tab_bar_at_bottom = true
    config.hide_tab_bar_if_only_one_tab = true
    config.audible_bell = "Disabled"

    config.inactive_pane_hsb = {
        saturation = 0.8,
        brightness = 0.55,
    }
end

return M
