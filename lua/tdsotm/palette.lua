local album = {
  red = "#CC102D",
  orange = "#E88514",
  yellow = "#FFFF28",
  green = "#7DC62C",
  sky = "#71C0DE",
  purple = "#634C8A",
}

local M = {
  album = album,

  dark = {
    bg = "#111111",
    bg_alt = "#1B1B1B",
    bg_highlight = "#252525",
    fg = "#F1F1F1",
    fg_muted = "#A8A8A8",
    fg_dim = "#767676",
    border = "#3A3A3A",

    red = "#F25F72",
    orange = album.orange,
    yellow = album.yellow,
    green = album.green,
    sky = album.sky,
    purple = "#A68BCB",

    cursor_bg = album.red,
    visual_bg = album.purple,
    visual_fg = "#FFFFFF",
    surface_fg = "#111111",
    surface_error_fg = "#FFFFFF",
    surface_red = album.red,
    surface_orange = album.orange,
    surface_yellow = album.yellow,
    surface_green = album.green,
    surface_sky = album.sky,
  },

  light = {
    bg = "#FFFFFF",
    bg_alt = "#F1F1F1",
    bg_highlight = "#E7E7E7",
    fg = "#262626",
    fg_muted = "#5E5E5E",
    fg_dim = "#767676",
    border = "#C6C6C6",

    red = album.red,
    orange = "#B85C00",
    yellow = "#7F7000",
    green = "#427B12",
    sky = "#1A7894",
    purple = album.purple,

    cursor_bg = album.red,
    visual_bg = "#E8DDF2",
    visual_fg = "#262626",
    surface_fg = "#111111",
    surface_error_fg = "#FFFFFF",
    surface_red = album.red,
    surface_orange = album.orange,
    surface_yellow = album.yellow,
    surface_green = album.green,
    surface_sky = album.sky,
  },
}

function M.for_background(background)
  if background == "light" then
    return M.light
  end

  return M.dark
end

return M
