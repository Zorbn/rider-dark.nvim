local foreground = "#a5a5aa"
local background = "#262626"
local light_bg   = "#323232"
local keyword    = "#6c95eb"
local operator   = keyword
local method     = "#39cc8f"
local class      = "#c191ff"
local number     = "#ed94c0"
local comment    = "#85c46c"
local string     = "#c9a26d"
local negative   = "#f44747"
local selection  = "#08335e"
local current_bg = "#202424"
local current_fg = "#dddddd"

local colors = {
    Normal = {bg = background, fg = foreground},
    ColorColumn = {},
    Comment = {fg = comment},
    Conceal = {bg = foreground, fg = light_bg},
    Constant = {fg = class},
    Cursor = {},
    CursorColumn = {bg = current_bg},
    CursorIM = {},
    CursorLine = {bg = current_bg},
    CursorLineNr = {bg = current_bg, fg = current_fg},
    DiagnosticError = {fg = negative},
    DiagnosticInfo = {fg = comment},
    DiagnosticWarn = {fg = string},
    DiffAdd = {fg = comment},
    DiffChange = {fg = keyword},
    DiffDelete = {fg = negative},
    DiffText = {bg = keyword, fg = background},
    Directory = {fg = keyword},
    Error = {bg = negative, fg = background},
    ErrorMsg = {bg = negative, fg = background},
    FoldColumn = {bg = comment, fg = background},
    Folded = {bg = comment, fg = background},
    Function = {fg = foreground},
    Identifier = {fg = foreground},
    LineNr = {fg = foreground},
    MatchParen = {bg = foreground, fg = background},
    ModeMsg = {fg = method},
    NonText = {fg = background},
    NormalFloat = {},
    NormalNC = {},
    Number = {fg = number},
    Pmenu = {bg = light_bg},
    PmenuSbar = {bg = light_bg, fg = light_bg},
    PmenuSel = {bg = method, fg = background},
    PmenuThumb = {bg = foreground, fg = foreground},
    PreProc = {fg = keyword},
    Question = {fg = method},
    QuickFixLine = {bg = string, fg = background},
    Search = {bg = string, fg = background},
    SignColumn = {bg = comment, fg = background},
    Special = {fg = keyword},
    SpecialKey = {fg = class},
    Statement = {fg = keyword},
    StatusLine = {bg = light_bg, fg = foreground},
    StatusLineTerm = {bg = light_bg, fg = foreground},
    StatusLineNC = {bg = background, fg = foreground},
    StatusLineTermNC = {bg = background, fg = foreground},
    String = {fg = string},
    Substitute = {fg = string},
    TSBoolean = {fg = number},
    TSField = {fg = foreground},
    TSMethod = {fg = method},
    TSNumber = {fg = number},
    TSOperator = {fg = operator},
    TSParameter = {fg = foreground},
    TSPunctBracket = {fg = foreground},
    TSPunctDelimiter = {fg = foreground},
    TSPunctSpecial = {fg = foreground},
    TSString = {fg = string},
    TSStringEscape = {fg = keyword},
    TSText = {fg = foreground},
    TSType = {fg = class},
    TSTypeBuiltin = {fg = class},
    TSVariable = {fg = foreground},
    TSVariableBuiltin = {fg = class},
    Title = {fg = class},
    Todo = {fg = string},
    Type = {fg = class},
    Visual = {bg = selection},
    WarningMsg = {fg = negative},
    Whitespace = {fg = keyword},
    WildMenu = {bg = method, fg = background},
    Winseparator = {fg = light_bg},
    lCursor = {},
}

-- Prepare to apply the theme.
vim.cmd("highlight clear")
vim.cmd("set t_Co=256")
vim.g.colors_name = "rider-dark"

vim.opt.cursorline = true

vim.opt.fillchars = {
  horiz = '━',
  horizup = '┻',
  horizdown = '┳',
  vert = '┃',
  vertleft  = '┫',
  vertright = '┣',
  verthoriz = '╋',
}

-- Apply highlight groups.
for group, attrs in pairs(colors) do
  vim.api.nvim_set_hl(0, group, attrs)
end

-- vim.api.nvim_set_hl doesn't redraw, so one normal vim command is needed.
vim.cmd("highlight Todo guifg=" .. string)
