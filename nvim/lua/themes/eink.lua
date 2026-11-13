-- e-ink theme for NvChad / base46
-- Palette from e-ink-colorscheme (github.com/e-ink-colorscheme)
-- Syntax monochrome; semantic accents (git/diagnostics) from everforest light,
-- matching official e-ink.nvim design.

local M = {}

M.base_30 = {
  white = "#333333",
  darker_black = "#C2C2C2",
  black = "#CCCCCC", -- nvim bg
  black2 = "#B8B8B8", -- sidebar / panels
  one_bg = "#C2C2C2",
  one_bg2 = "#B8B8B8",
  one_bg3 = "#AEAEAE",
  grey = "#9A9A9A",
  grey_fg = "#909090",
  grey_fg2 = "#868686",
  light_grey = "#7C7C7C",
  red = "#F85552", -- everforest light (diagnostics/git)
  baby_pink = "#E66868",
  pink = "#DF69BA",
  line = "#B8B8B8", -- vertsplit
  green = "#8DA101",
  vibrant_green = "#93B259",
  nord_blue = "#3A94C5",
  blue = "#3A94C5",
  yellow = "#DFA000",
  sun = "#F57D26",
  purple = "#DF69BA",
  dark_purple = "#DF69BA",
  teal = "#35A77C",
  orange = "#F57D26",
  cyan = "#35A77C",
  statusline_bg = "#C2C2C2",
  lightbg = "#B8B8B8",
  pmenu_bg = "#5E5E5E",
  folder_bg = "#5E5E5E",
}

M.base_16 = {
  base00 = "#CCCCCC",
  base01 = "#C2C2C2",
  base02 = "#B8B8B8",
  base03 = "#AEAEAE",
  base04 = "#A4A4A4",
  base05 = "#333333",
  base06 = "#474747",
  base07 = "#333333",
  base08 = "#545454",
  base09 = "#5E5E5E",
  base0A = "#545454",
  base0B = "#686868",
  base0C = "#686868",
  base0D = "#333333",
  base0E = "#5E5E5E",
  base0F = "#5E5E5E",
}

M.type = "light"

M.polish_hl = {
  defaults = {
    Comment = { fg = "#909090", italic = true },
    FloatBorder = { fg = "#727272" },
    NormalFloat = { bg = "#C2C2C2" },
    Pmenu = { bg = "#B8B8B8" },
    PmenuSel = { bg = "#5E5E5E", fg = "#CCCCCC" },
    Visual = { bg = "#AEAEAE" },
    Search = { fg = "#CCCCCC", bg = "#5E5E5E" },
    CurSearch = { fg = "#CCCCCC", bg = "#333333" },
    CursorLine = { bg = "#C2C2C2" },
    Tabline = { fg = "#5E5E5E", bg = "#AEAEAE" },
    TablineFill = { bg = "#CCCCCC" },
    WinSeparator = { fg = "#9A9A9A" },
    EndOfBuffer = { fg = "#CCCCCC" },
    Folded = { bg = "#C2C2C2", fg = "#7C7C7C" },
  },

  statusline = {
    StatusLine = { fg = "#CCCCCC", bg = "#5E5E5E", bold = true },
    StatusLineNC = { fg = "#7C7C7C", bg = "#C2C2C2" },
    St_pos_text = { fg = "#333333" },
  },

  treesitter = {
    ["@function"] = { fg = "#333333" },
    ["@function.call"] = { fg = "#333333" },
    ["@method"] = { fg = "#333333" },
    ["@method.call"] = { fg = "#333333" },
    ["@string"] = { fg = "#686868" },
    ["@comment"] = { fg = "#909090", italic = true },
    ["@keyword"] = { fg = "#5E5E5E" },
    ["@keyword.function"] = { fg = "#5E5E5E" },
    ["@keyword.return"] = { fg = "#5E5E5E" },
    ["@type"] = { fg = "#545454" },
    ["@type.builtin"] = { fg = "#545454" },
    ["@constructor"] = { fg = "#545454" },
    ["@variable"] = { fg = "#727272" },
    ["@variable.builtin"] = { fg = "#727272" },
    ["@variable.parameter"] = { fg = "#727272" },
    ["@property"] = { fg = "#727272" },
    ["@field"] = { fg = "#727272" },
    ["@operator"] = { fg = "#4A4A4A" },
    ["@number"] = { fg = "#5E5E5E" },
    ["@constant"] = { fg = "#5E5E5E" },
    ["@constant.builtin"] = { fg = "#5E5E5E" },
    ["@punctuation.delimiter"] = { fg = "#333333" },
    ["@punctuation.bracket"] = { fg = "#4A4A4A" },
    ["@tag"] = { fg = "#545454" },
    ["@attribute"] = { fg = "#545454" },
  },

  whichkey = { WhichKeyDesc = { fg = "#333333" } },
}

M = require("base46").override_theme(M, "eink")

return M
