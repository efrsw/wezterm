local M = {}

function M.apply(config)
    config.default_prog = { "pwsh" }
    config.max_fps = 240
end

return M
