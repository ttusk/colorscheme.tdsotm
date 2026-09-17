local palette = require("tdsotm.palette")

local M = {}

local function set(group, style)
  vim.api.nvim_set_hl(0, group, style)
end

local function set_many(groups, style)
  for _, group in ipairs(groups) do
    set(group, style)
  end
end

local function link_many(groups, target)
  for _, group in ipairs(groups) do
    set(group, { link = target })
  end
end

function M.load()
  local c = palette.for_background(vim.o.background)

  set_many({ "Normal", "NormalNC" }, { fg = c.fg, bg = c.bg })
  set("NormalFloat", { fg = c.fg, bg = c.bg_alt })
  set("FloatBorder", { fg = c.border, bg = c.bg_alt })
  set("ColorColumn", { bg = c.bg_alt })
  set("Conceal", { fg = c.fg_dim })
  set("Cursor", { fg = c.surface_error_fg, bg = c.cursor_bg })
  set("CursorColumn", { bg = c.bg_highlight })
  set("CursorLine", { bg = c.bg_highlight })
  set("CursorLineNr", { fg = c.yellow, bg = c.bg_highlight, bold = true })
  set("Directory", { fg = c.sky })
  set("EndOfBuffer", { fg = c.bg_alt, bg = c.bg })
  set("Folded", { fg = c.fg_dim, bg = c.bg_alt })
  set("FoldColumn", { fg = c.fg_dim, bg = c.bg })
  set("LineNr", { fg = c.fg_dim, bg = c.bg })
  set("MatchParen", { fg = c.surface_fg, bg = c.surface_yellow, bold = true })
  set("NonText", { fg = c.fg_dim })
  set("SignColumn", { fg = c.fg_dim, bg = c.bg })
  set("WinSeparator", { fg = c.border, bg = c.bg })

  set("ErrorMsg", { fg = c.red })
  set("ModeMsg", { fg = c.fg, bold = true })
  set("MoreMsg", { fg = c.sky, bold = true })
  set("MsgArea", { fg = c.fg, bg = c.bg })
  set("MsgSeparator", { fg = c.border, bg = c.bg })
  set("Question", { fg = c.green })
  set("WarningMsg", { fg = c.orange })
  set("StatusLine", { fg = c.fg, bg = c.bg })
  set("StatusLineNC", { fg = c.fg_dim, bg = c.bg_alt })
  set("TabLine", { fg = c.fg_muted, bg = c.bg_alt })
  set("TabLineFill", { fg = c.fg_dim, bg = c.bg_alt })
  set("TabLineSel", { fg = c.surface_fg, bg = c.surface_red, bold = true })
  set("Title", { fg = c.sky, bold = true })
  set("WildMenu", { fg = c.surface_fg, bg = c.surface_orange })

  set("IncSearch", { fg = c.surface_fg, bg = c.surface_orange, bold = true })
  set("Search", { fg = c.surface_fg, bg = c.surface_yellow })
  set("Substitute", { fg = c.surface_fg, bg = c.surface_green })
  set("Visual", { fg = c.visual_fg, bg = c.visual_bg })
  set("VisualNOS", { fg = c.fg, bg = c.bg_alt })
  set("Pmenu", { fg = c.fg, bg = c.bg_alt })
  set("PmenuSel", { fg = c.surface_fg, bg = c.surface_red, bold = true })
  set("PmenuSbar", { bg = c.bg_highlight })
  set("PmenuThumb", { bg = c.fg_dim })

  set_many({ "DiagnosticError", "DiagnosticSignError", "DiagnosticVirtualTextError" }, { fg = c.red })
  set_many({ "DiagnosticWarn", "DiagnosticSignWarn", "DiagnosticVirtualTextWarn" }, { fg = c.orange })
  set_many({ "DiagnosticInfo", "DiagnosticSignInfo", "DiagnosticVirtualTextInfo" }, { fg = c.sky })
  set_many({ "DiagnosticHint", "DiagnosticSignHint", "DiagnosticVirtualTextHint" }, { fg = c.purple })
  set("DiagnosticOk", { fg = c.green })
  set("DiagnosticUnderlineError", { sp = c.red, undercurl = true })
  set("DiagnosticUnderlineWarn", { sp = c.orange, undercurl = true })
  set("DiagnosticUnderlineInfo", { sp = c.sky, undercurl = true })
  set("DiagnosticUnderlineHint", { sp = c.purple, undercurl = true })
  set_many({ "LspReferenceText", "LspReferenceRead", "LspReferenceWrite" }, { bg = c.bg_highlight })
  set("LspInlayHint", { fg = c.fg_dim, bg = c.bg_alt, italic = true })
  set("SpellBad", { sp = c.red, undercurl = true })
  set("SpellCap", { sp = c.sky, undercurl = true })
  set("SpellLocal", { sp = c.green, undercurl = true })
  set("SpellRare", { sp = c.purple, undercurl = true })

  set("DiffAdd", { fg = c.green, bg = c.bg_alt })
  set("DiffChange", { fg = c.orange, bg = c.bg_alt })
  set("DiffDelete", { fg = c.red, bg = c.bg_alt })
  set("DiffText", { fg = c.yellow, bg = c.bg_highlight, bold = true })

  set("Comment", { fg = c.fg_dim, italic = true })
  set("Constant", { fg = c.purple })
  set("Character", { fg = c.green })
  set("Number", { fg = c.purple })
  set("Boolean", { fg = c.yellow })
  set("Float", { fg = c.purple })
  set("Identifier", { fg = c.fg })
  set("Function", { fg = c.sky, bold = true })
  set("Statement", { fg = c.red })
  set("Keyword", { fg = c.red, bold = true })
  set("Operator", { fg = c.yellow })
  set("PreProc", { fg = c.orange })
  set("Type", { fg = c.orange })
  set("Special", { fg = c.purple, italic = true })
  set("Underlined", { fg = c.sky, underline = true })
  set("Ignore", { fg = c.bg })
  set("Error", { fg = c.surface_error_fg, bg = c.surface_red, bold = true })
  set("Todo", { fg = c.surface_fg, bg = c.surface_yellow, bold = true })

  link_many({ "String" }, "Character")
  link_many({ "Conditional", "Repeat", "Label", "Exception" }, "Statement")
  link_many({ "Include", "Define", "Macro", "PreCondit" }, "PreProc")
  link_many({ "StorageClass", "Structure", "Typedef" }, "Type")
  set("Delimiter", { fg = c.purple })
  link_many({ "SpecialChar", "Tag", "SpecialComment", "Debug" }, "Special")
  set("Bold", { bold = true })
  set("Italic", { italic = true })
  set("TypeDefinition", { fg = c.orange, bold = true })
  set("Parameter", { fg = c.fg })

  local treesitter_links = {
    ["@comment"] = "Comment",
    ["@comment.documentation"] = "Comment",
    ["@constant"] = "Constant",
    ["@constant.builtin"] = "Constant",
    ["@string"] = "String",
    ["@string.documentation"] = "String",
    ["@character"] = "Character",
    ["@number"] = "Number",
    ["@boolean"] = "Boolean",
    ["@float"] = "Float",
    ["@variable"] = "Identifier",
    ["@variable.builtin"] = "Special",
    ["@function"] = "Function",
    ["@function.call"] = "Function",
    ["@function.builtin"] = "Function",
    ["@function.method"] = "Function",
    ["@function.method.call"] = "Function",
    ["@method"] = "Function",
    ["@method.call"] = "Function",
    ["@keyword"] = "Keyword",
    ["@keyword.conditional"] = "Conditional",
    ["@keyword.directive"] = "PreProc",
    ["@keyword.exception"] = "Exception",
    ["@keyword.function"] = "Keyword",
    ["@keyword.import"] = "Include",
    ["@keyword.operator"] = "Operator",
    ["@keyword.repeat"] = "Repeat",
    ["@keyword.return"] = "Keyword",
    ["@keyword.storage"] = "StorageClass",
    ["@operator"] = "Operator",
    ["@type"] = "Type",
    ["@type.builtin"] = "Type",
    ["@type.definition"] = "TypeDefinition",
    ["@constructor"] = "TypeDefinition",
    ["@property"] = "Identifier",
    ["@field"] = "Identifier",
    ["@parameter"] = "Parameter",
    ["@punctuation.delimiter"] = "Delimiter",
    ["@punctuation.bracket"] = "Delimiter",
    ["@punctuation.special"] = "Special",
    ["@tag"] = "Tag",
    ["@tag.attribute"] = "Identifier",
    ["@tag.delimiter"] = "Delimiter",
    ["@markup.heading"] = "Title",
    ["@markup.link"] = "Underlined",
    ["@markup.raw"] = "String",
    ["@markup.strong"] = "Bold",
    ["@markup.italic"] = "Italic",
    ["@diff.plus"] = "DiffAdd",
    ["@diff.minus"] = "DiffDelete",
    ["@diff.delta"] = "DiffChange",
  }

  for group, target in pairs(treesitter_links) do
    set(group, { link = target })
  end

  set("@string.escape", { fg = c.orange })
  set("@string.special", { fg = c.orange })
end

return M
