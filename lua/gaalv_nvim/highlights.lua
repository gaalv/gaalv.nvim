local M = {}

function M.setup(c)
  local hl = vim.api.nvim_set_hl

  -- ── Editor ────────────────────────────────────────────────────────
  hl(0, "Normal",          { fg = c.fg,      bg = c.void })
  hl(0, "NormalFloat",     { fg = c.fg,      bg = c.surface })
  hl(0, "NormalNC",        { fg = c.muted_fg,bg = c.void })
  hl(0, "FloatBorder",     { fg = c.subtle,  bg = c.surface })
  hl(0, "FloatTitle",      { fg = c.violet,  bg = c.surface, bold = true })
  hl(0, "SignColumn",      { fg = c.muted,   bg = c.void })
  hl(0, "ColorColumn",     { bg = c.surface })
  hl(0, "CursorLine",      { bg = c.surface })
  hl(0, "CursorLineNr",    { fg = c.muted_fg,bold = true })
  hl(0, "LineNr",          { fg = c.muted })
  hl(0, "VertSplit",       { fg = c.subtle,  bg = c.void })
  hl(0, "WinSeparator",    { fg = c.subtle,  bg = c.void })
  hl(0, "EndOfBuffer",     { fg = c.subtle })
  hl(0, "Folded",          { fg = c.comment, bg = c.surface })
  hl(0, "FoldColumn",      { fg = c.muted,   bg = c.void })
  hl(0, "Conceal",         { fg = c.muted })
  hl(0, "NonText",         { fg = c.muted })
  hl(0, "SpecialKey",      { fg = c.muted })
  hl(0, "Whitespace",      { fg = c.subtle })
  hl(0, "MatchParen",      { fg = c.violet,  bold = true, underline = true })

  -- ── Cursor ────────────────────────────────────────────────────────
  hl(0, "Cursor",          { fg = c.void,    bg = c.violet })
  hl(0, "CursorIM",        { fg = c.void,    bg = c.violet })
  hl(0, "TermCursor",      { fg = c.void,    bg = c.violet })

  -- ── Selection / Search ────────────────────────────────────────────
  hl(0, "Visual",          { bg = "#21193b" })
  hl(0, "VisualNOS",       { bg = "#18142d" })
  hl(0, "Search",          { fg = c.void,    bg = c.amber })
  hl(0, "IncSearch",       { fg = c.void,    bg = c.violet })
  hl(0, "CurSearch",       { fg = c.void,    bg = c.violet })
  hl(0, "Substitute",      { fg = c.void,    bg = c.red })

  -- ── Status / Tabline ──────────────────────────────────────────────
  hl(0, "StatusLine",      { fg = c.muted_fg,bg = c.surface })
  hl(0, "StatusLineNC",    { fg = c.muted,   bg = c.surface })
  hl(0, "TabLine",         { fg = c.muted,   bg = c.surface })
  hl(0, "TabLineFill",     { bg = c.surface })
  hl(0, "TabLineSel",      { fg = c.fg,      bg = c.void, bold = true })
  hl(0, "WinBar",          { fg = c.muted_fg,bg = c.void })
  hl(0, "WinBarNC",        { fg = c.muted,   bg = c.void })

  -- ── Pmenu ─────────────────────────────────────────────────────────
  hl(0, "Pmenu",           { fg = c.fg,      bg = c.surface })
  hl(0, "PmenuSel",        { fg = c.fg,      bg = "#1d1734", bold = true })
  hl(0, "PmenuSbar",       { bg = c.surface })
  hl(0, "PmenuThumb",      { bg = c.muted })
  hl(0, "PmenuKind",       { fg = c.violet2, bg = c.surface })
  hl(0, "PmenuKindSel",    { fg = c.violet,  bg = "#1d1734" })
  hl(0, "PmenuExtra",      { fg = c.comment, bg = c.surface })

  -- ── Messages ──────────────────────────────────────────────────────
  hl(0, "ModeMsg",         { fg = c.violet,  bold = true })
  hl(0, "MoreMsg",         { fg = c.cyan })
  hl(0, "Question",        { fg = c.cyan })
  hl(0, "WarningMsg",      { fg = c.amber })
  hl(0, "ErrorMsg",        { fg = c.red })

  -- ── Diff ──────────────────────────────────────────────────────────
  hl(0, "DiffAdd",         { fg = c.none,    bg = "#0c1d1d" })
  hl(0, "DiffChange",      { fg = c.none,    bg = "#1f1b12" })
  hl(0, "DiffDelete",      { fg = c.none,    bg = "#1f1419" })
  hl(0, "DiffText",        { fg = c.none,    bg = "#362c14" })
  hl(0, "Added",           { fg = c.green })
  hl(0, "Changed",         { fg = c.amber })
  hl(0, "Removed",         { fg = c.red })

  -- ── Spelling ──────────────────────────────────────────────────────
  hl(0, "SpellBad",        { undercurl = true, sp = c.red })
  hl(0, "SpellCap",        { undercurl = true, sp = c.amber })
  hl(0, "SpellRare",       { undercurl = true, sp = c.violet })
  hl(0, "SpellLocal",      { undercurl = true, sp = c.cyan })

  -- ── Syntax (legacy) ───────────────────────────────────────────────
  hl(0, "Comment",         { fg = c.comment, italic = true })
  hl(0, "Constant",        { fg = c.amber })
  hl(0, "String",          { fg = c.green })
  hl(0, "Character",       { fg = c.green })
  hl(0, "Number",          { fg = c.amber })
  hl(0, "Boolean",         { fg = c.amber })
  hl(0, "Float",           { fg = c.amber })
  hl(0, "Identifier",      { fg = c.fg })
  hl(0, "Function",        { fg = c.cyan })
  hl(0, "Statement",       { fg = c.violet })
  hl(0, "Conditional",     { fg = c.violet })
  hl(0, "Repeat",          { fg = c.violet })
  hl(0, "Label",           { fg = c.violet })
  hl(0, "Operator",        { fg = c.violet })
  hl(0, "Keyword",         { fg = c.violet })
  hl(0, "Exception",       { fg = c.violet })
  hl(0, "PreProc",         { fg = c.violet })
  hl(0, "Include",         { fg = c.violet })
  hl(0, "Define",          { fg = c.violet })
  hl(0, "Macro",           { fg = c.violet })
  hl(0, "PreCondit",       { fg = c.violet })
  hl(0, "Type",            { fg = c.violet2 })
  hl(0, "StorageClass",    { fg = c.violet })
  hl(0, "Structure",       { fg = c.violet2 })
  hl(0, "Typedef",         { fg = c.violet2 })
  hl(0, "Special",         { fg = c.cyan })
  hl(0, "SpecialChar",     { fg = c.cyan })
  hl(0, "Tag",             { fg = c.violet })
  hl(0, "Delimiter",       { fg = c.muted_fg })
  hl(0, "SpecialComment",  { fg = c.comment, italic = true })
  hl(0, "Debug",           { fg = c.orange })
  hl(0, "Underlined",      { underline = true })
  hl(0, "Ignore",          { fg = c.muted })
  hl(0, "Error",           { fg = c.red })
  hl(0, "Todo",            { fg = c.void, bg = c.violet, bold = true })

  -- ── Treesitter ────────────────────────────────────────────────────
  hl(0, "@comment",              { link = "Comment" })
  hl(0, "@comment.documentation",{ fg = c.comment, italic = true })
  hl(0, "@string",               { link = "String" })
  hl(0, "@string.escape",        { fg = c.cyan })
  hl(0, "@string.regexp",        { fg = c.cyan })
  hl(0, "@string.special",       { fg = c.cyan })
  hl(0, "@number",               { link = "Number" })
  hl(0, "@number.float",         { link = "Float" })
  hl(0, "@boolean",              { link = "Boolean" })
  hl(0, "@constant",             { fg = c.amber })
  hl(0, "@constant.builtin",     { fg = c.amber, italic = true })
  hl(0, "@constant.macro",       { fg = c.amber })
  hl(0, "@keyword",              { fg = c.violet })
  hl(0, "@keyword.import",       { fg = c.violet })
  hl(0, "@keyword.return",       { fg = c.violet })
  hl(0, "@keyword.operator",     { fg = c.violet })
  hl(0, "@keyword.function",     { fg = c.violet })
  hl(0, "@keyword.modifier",     { fg = c.violet })
  hl(0, "@keyword.coroutine",    { fg = c.violet })
  hl(0, "@operator",             { fg = c.violet })
  hl(0, "@punctuation",          { fg = c.muted_fg })
  hl(0, "@punctuation.bracket",  { fg = c.muted_fg })
  hl(0, "@punctuation.delimiter",{ fg = c.muted_fg })
  hl(0, "@punctuation.special",  { fg = c.violet })
  hl(0, "@variable",             { fg = c.fg })
  hl(0, "@variable.builtin",     { fg = c.orange, italic = true })
  hl(0, "@variable.parameter",   { fg = c.dim_fg })
  hl(0, "@variable.member",      { fg = c.fg })
  hl(0, "@function",             { fg = c.cyan })
  hl(0, "@function.builtin",     { fg = c.cyan, italic = true })
  hl(0, "@function.call",        { fg = c.cyan })
  hl(0, "@function.method",      { fg = c.cyan })
  hl(0, "@function.method.call", { fg = c.cyan })
  hl(0, "@function.macro",       { fg = c.violet })
  hl(0, "@constructor",          { fg = c.violet2 })
  hl(0, "@type",                 { fg = c.violet2 })
  hl(0, "@type.builtin",         { fg = c.violet2, italic = true })
  hl(0, "@type.definition",      { fg = c.violet2 })
  hl(0, "@type.qualifier",       { fg = c.violet })
  hl(0, "@module",               { fg = c.fg })
  hl(0, "@namespace",            { fg = c.cyan })
  hl(0, "@label",                { fg = c.violet })
  hl(0, "@attribute",            { fg = c.pink })
  hl(0, "@tag",                  { fg = c.violet })
  hl(0, "@tag.attribute",        { fg = c.cyan })
  hl(0, "@tag.delimiter",        { fg = c.muted_fg })
  hl(0, "@markup.heading",       { fg = c.violet, bold = true })
  hl(0, "@markup.bold",          { fg = c.bright, bold = true })
  hl(0, "@markup.italic",        { italic = true })
  hl(0, "@markup.link",          { fg = c.violet2, underline = true })
  hl(0, "@markup.link.url",      { fg = c.cyan, underline = true })
  hl(0, "@markup.raw",           { fg = c.cyan })
  hl(0, "@markup.list",          { fg = c.violet })

  -- ── LSP Diagnostics ───────────────────────────────────────────────
  hl(0, "DiagnosticError",            { fg = c.red })
  hl(0, "DiagnosticWarn",             { fg = c.amber })
  hl(0, "DiagnosticInfo",             { fg = c.cyan })
  hl(0, "DiagnosticHint",             { fg = c.green })
  hl(0, "DiagnosticOk",               { fg = c.green })
  hl(0, "DiagnosticUnderlineError",   { undercurl = true, sp = c.red })
  hl(0, "DiagnosticUnderlineWarn",    { undercurl = true, sp = c.amber })
  hl(0, "DiagnosticUnderlineInfo",    { undercurl = true, sp = c.cyan })
  hl(0, "DiagnosticUnderlineHint",    { undercurl = true, sp = c.green })
  hl(0, "DiagnosticVirtualTextError", { fg = c.red,   bg = "#1f1419", italic = true })
  hl(0, "DiagnosticVirtualTextWarn",  { fg = c.amber, bg = "#1f1b12", italic = true })
  hl(0, "DiagnosticVirtualTextInfo",  { fg = c.cyan,  bg = "#0a1d25", italic = true })
  hl(0, "DiagnosticVirtualTextHint",  { fg = c.green, bg = "#0c1d1d", italic = true })

  -- ── LSP References ────────────────────────────────────────────────
  hl(0, "LspReferenceText",  { bg = "#18142d" })
  hl(0, "LspReferenceRead",  { bg = "#18142d" })
  hl(0, "LspReferenceWrite", { bg = "#21193b" })
  hl(0, "LspSignatureActiveParameter", { fg = c.violet, bold = true })
  hl(0, "LspInlayHint",      { fg = c.comment, bg = c.surface, italic = true })

  -- ── Git signs ─────────────────────────────────────────────────────
  hl(0, "GitSignsAdd",           { fg = c.green })
  hl(0, "GitSignsChange",        { fg = c.amber })
  hl(0, "GitSignsDelete",        { fg = c.red })
  hl(0, "GitSignsAddLn",         { bg = "#0b1719" })
  hl(0, "GitSignsChangeLn",      { bg = "#171511" })
  hl(0, "GitSignsDeleteLn",      { bg = "#171016" })

  -- ── Telescope ─────────────────────────────────────────────────────
  hl(0, "TelescopeNormal",       { fg = c.fg,      bg = c.surface })
  hl(0, "TelescopeBorder",       { fg = c.subtle,  bg = c.surface })
  hl(0, "TelescopeTitle",        { fg = c.violet,  bold = true })
  hl(0, "TelescopePromptNormal", { fg = c.fg,      bg = c.overlay })
  hl(0, "TelescopePromptBorder", { fg = c.violet,  bg = c.overlay })
  hl(0, "TelescopePromptTitle",  { fg = c.void,    bg = c.violet, bold = true })
  hl(0, "TelescopePromptPrefix", { fg = c.violet })
  hl(0, "TelescopeResultsTitle", { fg = c.comment })
  hl(0, "TelescopePreviewTitle", { fg = c.comment })
  hl(0, "TelescopeMatching",     { fg = c.violet,  bold = true })
  hl(0, "TelescopeSelection",    { fg = c.fg,      bg = "#1d1734" })

  -- ── nvim-cmp ──────────────────────────────────────────────────────
  hl(0, "CmpItemAbbrMatch",        { fg = c.violet, bold = true })
  hl(0, "CmpItemAbbrMatchFuzzy",   { fg = c.violet2 })
  hl(0, "CmpItemKindFunction",     { fg = c.cyan })
  hl(0, "CmpItemKindMethod",       { fg = c.cyan })
  hl(0, "CmpItemKindConstructor",  { fg = c.violet2 })
  hl(0, "CmpItemKindClass",        { fg = c.violet2 })
  hl(0, "CmpItemKindInterface",    { fg = c.violet2 })
  hl(0, "CmpItemKindModule",       { fg = c.cyan })
  hl(0, "CmpItemKindVariable",     { fg = c.fg })
  hl(0, "CmpItemKindField",        { fg = c.fg })
  hl(0, "CmpItemKindProperty",     { fg = c.fg })
  hl(0, "CmpItemKindKeyword",      { fg = c.violet })
  hl(0, "CmpItemKindSnippet",      { fg = c.green })
  hl(0, "CmpItemKindText",         { fg = c.comment })
  hl(0, "CmpItemKindValue",        { fg = c.amber })
  hl(0, "CmpItemKindConstant",     { fg = c.amber })
  hl(0, "CmpItemKindEnum",         { fg = c.amber })
  hl(0, "CmpItemKindEnumMember",   { fg = c.amber })
  hl(0, "CmpItemKindColor",        { fg = c.pink })

  -- ── Which-key ─────────────────────────────────────────────────────
  hl(0, "WhichKey",          { fg = c.violet })
  hl(0, "WhichKeyGroup",     { fg = c.violet2 })
  hl(0, "WhichKeyDesc",      { fg = c.fg })
  hl(0, "WhichKeySeparator", { fg = c.comment })
  hl(0, "WhichKeyFloat",     { bg = c.surface })
  hl(0, "WhichKeyBorder",    { fg = c.subtle })

  -- ── Neo-tree / nvim-tree ──────────────────────────────────────────
  hl(0, "NeoTreeNormal",          { fg = c.muted_fg,bg = c.surface })
  hl(0, "NeoTreeNormalNC",        { fg = c.muted,   bg = c.surface })
  hl(0, "NeoTreeRootName",        { fg = c.violet,  bold = true })
  hl(0, "NeoTreeDirectoryName",   { fg = c.fg })
  hl(0, "NeoTreeDirectoryIcon",   { fg = c.violet2 })
  hl(0, "NeoTreeFileName",        { fg = c.muted_fg })
  hl(0, "NeoTreeFileNameOpened",  { fg = c.fg })
  hl(0, "NeoTreeDotfile",         { fg = c.comment })
  hl(0, "NeoTreeGitAdded",        { fg = c.green })
  hl(0, "NeoTreeGitModified",     { fg = c.amber })
  hl(0, "NeoTreeGitUntracked",    { fg = c.cyan })
  hl(0, "NeoTreeIndentMarker",    { fg = c.subtle })
  hl(0, "NeoTreeExpander",        { fg = c.muted })
  hl(0, "NeoTreeWinSeparator",    { fg = c.subtle, bg = c.surface })

  -- ── Indent-blankline ──────────────────────────────────────────────
  hl(0, "IblIndent",    { fg = c.subtle })
  hl(0, "IblScope",     { fg = "#392967" })

  -- ── Lualine (base colors used by the config below) ───────────────
  -- See README for lualine config snippet.

  -- ── Terminal ──────────────────────────────────────────────────────
  vim.g.terminal_color_0  = c.subtle
  vim.g.terminal_color_1  = c.red
  vim.g.terminal_color_2  = c.green
  vim.g.terminal_color_3  = c.amber
  vim.g.terminal_color_4  = c.blue
  vim.g.terminal_color_5  = c.violet
  vim.g.terminal_color_6  = c.cyan
  vim.g.terminal_color_7  = c.fg
  vim.g.terminal_color_8  = c.comment
  vim.g.terminal_color_9  = c.red2
  vim.g.terminal_color_10 = c.green2
  vim.g.terminal_color_11 = c.amber2
  vim.g.terminal_color_12 = "#a5b4fc"
  vim.g.terminal_color_13 = c.violet2
  vim.g.terminal_color_14 = c.cyan2
  vim.g.terminal_color_15 = c.bright
end

return M
