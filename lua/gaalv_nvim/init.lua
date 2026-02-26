local M = {}

function M.load()
  if vim.g.colors_name then
    vim.cmd("hi clear")
  end
  if vim.fn.exists("syntax_on") then
    vim.cmd("syntax reset")
  end

  vim.o.termguicolors = true
  vim.g.colors_name = "gaalv"

  local palette = require("gaalv_nvim.palette")
  local highlights = require("gaalv_nvim.highlights")
  highlights.setup(palette.colors)
end

return M
