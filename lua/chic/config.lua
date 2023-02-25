return function()
  if not vim.g.chic then
    vim.g.chic = { theme = require 'chic.presets.chic' }
  end

  return vim.g.chic.theme
end
