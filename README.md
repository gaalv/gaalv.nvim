# gaalv.nvim

A dark Neovim colorscheme with violet accents. Built from the same palette as [gaalv.cloud](https://gaalv.cloud).

Requires Neovim 0.9+ with `termguicolors`.

## Install

### lazy.nvim

```lua
{
  "gaalv/gaalv.nvim",
  priority = 1000,
  config = function()
    vim.cmd("colorscheme gaalv")
  end,
}
```

### packer.nvim

```lua
use {
  "gaalv/gaalv.nvim",
  config = function()
    vim.cmd("colorscheme gaalv")
  end,
}
```

## Lualine

```lua
require("lualine").setup({
  options = {
    theme = {
      normal = {
        a = { fg = "#080a10", bg = "#8b5cf6", gui = "bold" },
        b = { fg = "#9090b0", bg = "#0e1020" },
        c = { fg = "#9090b0", bg = "#080a10" },
      },
      insert  = { a = { fg = "#080a10", bg = "#22d3ee", gui = "bold" } },
      visual  = { a = { fg = "#080a10", bg = "#e879f9", gui = "bold" } },
      replace = { a = { fg = "#080a10", bg = "#f87171", gui = "bold" } },
      command = { a = { fg = "#080a10", bg = "#fbbf24", gui = "bold" } },
      inactive = {
        a = { fg = "#2e3055", bg = "#080a10" },
        b = { fg = "#2e3055", bg = "#080a10" },
        c = { fg = "#2e3055", bg = "#080a10" },
      },
    },
  },
})
```

## Palette

| Name       | Hex       | Usage                         |
|------------|-----------|-------------------------------|
| void       | `#080a10` | editor background             |
| surface    | `#0e1020` | floats, popups                |
| subtle     | `#1e2038` | borders                       |
| comment    | `#6b6d8a` | comments                      |
| fg         | `#e0deff` | main foreground               |
| violet     | `#8b5cf6` | keywords, operators           |
| violet2    | `#a78bfa` | types, classes                |
| cyan       | `#22d3ee` | functions                     |
| green      | `#34d399` | strings                       |
| amber      | `#fbbf24` | numbers, constants            |
| red        | `#f87171` | errors                        |
| pink       | `#e879f9` | decorators                    |
| orange     | `#fb923c` | this/self                     |

## Supported plugins

- Treesitter
- LSP diagnostics & references
- Telescope
- nvim-cmp
- Which-key
- Neo-tree
- indent-blankline
- GitSigns
- Lualine

## License

MIT
