local wezterm = require("wezterm")

local M = {}

function M.apply(config)
    if wezterm.target_triple == 'x86_64-pc-windows-msvc' then
        config.default_prog = { "pwsh" }
    end

    config.max_fps = 240
end

return M
