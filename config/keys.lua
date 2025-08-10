local wezterm = require("wezterm")

local M = {}

function M.apply(config)
    config.leader = { key = "Space", mods = "CTRL", timeout_milliseconds = 1000 }
    
    config.keys = {
        -- Pane splitting
        {
            mods = "LEADER",
            key = "-",
            action = wezterm.action.SplitHorizontal({ domain = "CurrentPaneDomain" }),
        },
        {
            mods = "LEADER",
            key = "=",
            action = wezterm.action.SplitVertical({ domain = "CurrentPaneDomain" }),
        },
        
        -- Pane management
        {
            mods = "LEADER",
            key = "z",
            action = wezterm.action.TogglePaneZoomState,
        },
        {
            mods = "LEADER",
            key = "Space",
            action = wezterm.action.RotatePanes("Clockwise"),
        },
        {
            mods = "LEADER",
            key = "0",
            action = wezterm.action.PaneSelect({
                mode = "SwapWithActive",
            }),
        },
        {
            mods = "LEADER",
            key = "x",
            action = wezterm.action.CloseCurrentPane({ confirm = true }),
        },
        {
            key = "o",
            mods = "LEADER",
            action = wezterm.action({ PaneSelect = {
                alphabet = "0123456789",
            } }),
        },
        
        -- Pane navigation
        {
            mods = "ALT",
            key = "l",
            action = wezterm.action.ActivatePaneDirection("Right"),
        },
        {
            mods = "ALT",
            key = "h",
            action = wezterm.action.ActivatePaneDirection("Left"),
        },
        {
            mods = "ALT",
            key = "k",
            action = wezterm.action.ActivatePaneDirection("Up"),
        },
        {
            mods = "ALT",
            key = "j",
            action = wezterm.action.ActivatePaneDirection("Down"),
        },
        
        -- Copy mode
        {
            key = "[",
            mods = "LEADER",
            action = wezterm.action.ActivateCopyMode,
        },
    }
end

return M
