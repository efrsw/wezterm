local wezterm = require("wezterm")

local M = {}

function M.apply(config)
    local launch_menu = {}
    
    if wezterm.target_triple == 'x86_64-pc-windows-msvc' then
        table.insert(launch_menu, {
            label = 'Devshell VS2022',
            args = {
                'pwsh',
                '-noe',
                '-c',
                '& "C:\\Program Files\\Microsoft Visual Studio\\2022\\Community\\Common7\\Tools\\Launch-VsDevShell.ps1"'
            }
        })
    end
    
    config.launch_menu = launch_menu
end

return M
