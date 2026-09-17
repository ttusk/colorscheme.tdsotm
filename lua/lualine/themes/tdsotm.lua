local palette = require("tdsotm.palette")
local c = palette.for_background(vim.o.background)

local function mode_section(background, foreground)
  return {
    a = { fg = foreground, bg = background, gui = "bold" },
    b = { fg = c.fg_muted, bg = c.bg_alt },
    c = { fg = c.fg, bg = c.bg },
  }
end

return {
  normal = mode_section(c.surface_sky, c.surface_fg),
  insert = mode_section(c.surface_green, c.surface_fg),
  replace = mode_section(c.surface_red, c.surface_error_fg),
  visual = mode_section(c.visual_bg, c.visual_fg),
  command = mode_section(c.surface_yellow, c.surface_fg),
  terminal = mode_section(c.surface_green, c.surface_fg),
  inactive = {
    a = { fg = c.fg_dim, bg = c.bg_alt },
    b = { fg = c.fg_dim, bg = c.bg_alt },
    c = { fg = c.fg_dim, bg = c.bg },
  },
}
