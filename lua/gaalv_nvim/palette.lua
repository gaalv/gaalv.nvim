-- gaalv.nvim — color palette
-- matches the gaalv.cloud site theme

local M = {}

M.colors = {
  -- base
  void    = "#080a10", -- editor background
  surface = "#0e1020", -- float / sidebar / popups
  overlay = "#141628", -- hover / selection bg
  subtle  = "#1e2038", -- borders / separators
  muted   = "#2e3055", -- inactive / dimmed
  comment = "#6b6d8a", -- comments
  muted_fg= "#9090b0", -- muted text
  dim_fg  = "#b8b6d8", -- parameters / less prominent
  fg      = "#e0deff", -- main foreground
  bright  = "#f0efff", -- bright / white-ish

  -- accents
  violet  = "#8b5cf6", -- keywords, primary
  violet2 = "#a78bfa", -- types, classes
  violet3 = "#7c3aed", -- dim violet
  cyan    = "#22d3ee", -- functions, strings alt
  cyan2   = "#67e8f9", -- bright cyan
  green   = "#34d399", -- strings, success
  green2  = "#6ee7b7", -- bright green
  amber   = "#fbbf24", -- numbers, constants, warnings
  amber2  = "#fde68a", -- bright amber
  red     = "#f87171", -- errors, deleted
  red2    = "#fca5a5", -- bright red
  orange  = "#fb923c", -- this/self, special
  pink    = "#e879f9", -- decorators, special
  blue    = "#6366f1", -- misc

  -- terminal ansi
  none    = "NONE",
}

return M
