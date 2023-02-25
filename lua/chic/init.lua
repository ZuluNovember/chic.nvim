local Theme = require('chic.theme').Theme
local config = require('chic.config')

local load = function(colors)
    if vim.g.colors_name then
        vim.cmd('hi clear')
    end
    vim.cmd('highlight clear')
    vim.cmd('set t_Co=256')
    vim.g.colors_name = 'chic'
    colors = colors or config()
    local theme = Theme(colors)

    local nvim_set_hl = vim.api.nvim_set_hl
    for group, attrs in pairs(theme) do
        nvim_set_hl(0, group, attrs)
    end

    require('chic.ts')()
end

return {
    load = load,
    config = config,
    chroma = require('chic.chroma'),
    presets = require('chic.presets'),
}
