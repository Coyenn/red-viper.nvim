local utils   = require("utils")

local hl      = {}
local gray0   = "#101010"
local gray1   = "#1C1C1C"
local gray2   = "#232323"
local gray3   = "#343434"
local gray4   = "#5F5F5F"
local gray5   = "#A0A0A0"
local gray6   = "#FBFBFB"
local gray7   = "#E5E5E5"
local gray8   = "#E5E5E5"
local gray9   = "#E5E5E5"
local red1    = "#CD3131"
local red2    = "#F14C4C"
local red3    = "#FF8080"
local red4    = "#FC9487"
local red5    = "#FF8080"
local yellow1 = "#E5E510"
local yellow2 = "#F5F543"
local green1  = "#0DBC79"
local green2  = "#23D18B"
local green3  = "#D5D39B"
local blue1   = "#2472C8"
local blue2   = "#3B8EEA"
local blue3   = "#83A598"


vim.g.colors_name = "red-viper"


--------------------------------------------------
-- UI
--------------------------------------------------
hl["ColorColumn"]    = {}
hl["Conceal"]        = { link = "Normal" }
hl["CurSearch"]      = { fg = gray0, bg = red4 }
hl["Cursor"]         = { bg = red5 }
hl["CursorLine"]     = { bg = gray2 }
hl["CursorLineNr"]   = { link = "Normal" }
hl["Delimiter"]      = { link = "Normal" }
hl["Directory"]      = { fg = blue3 }
hl["EndOfBuffer"]    = { link = "NonText" }
hl["Error"]          = { fg = red5 }
hl["ErrorMsg"]       = { link = "Error" }
hl["FoldColumn"]     = { link = "NonText" }
hl["Folded"]         = { bg = gray1 }
hl["IncSearch"]      = { link = "Search" }
hl["LineNr"]         = { link = "NonText" }
hl["ModeMsg"]        = { fg = red2 }
hl["MoreMsg"]        = { link = "ModeMsg" }
hl["MsgArea"]        = {}
hl["MsgSeparator"]   = { fg = gray2 }
hl["NonText"]        = { fg = gray5 }
hl["Normal"]         = { fg = gray9 }
hl["NormalFloat"]    = { fg = gray8, bg = gray2 }
hl["Pmenu"]          = { fg = gray7, bg = gray2 }
hl["PmenuMatch"]     = { fg = blue2 }
hl["PmenuMatchSel"]  = { fg = yellow1, bg = blue3 }
hl["PmenuSbar"]      = { link = "Normal" }
hl["PmenuSel"]       = { fg = blue3, bg = gray4 }
hl["PmenuThumb"]     = { bg = gray3 }
hl["Question"]       = { fg = green3 }
hl["QuickFixLine"]   = { link = "Search" }
hl["Search"]         = { fg = gray0, bg = yellow2 }
hl["SignColumn"]     = { link = "Normal" }
hl["SpecialChar"]    = { link = "Special" }
hl["SpecialComment"] = { fg = yellow2 }
hl["SpecialKey"]     = { fg = yellow2 }
hl["StatusLine"]     = { fg = gray9 }
hl["StatusLineNC"]   = {}
hl["Substitute"]     = { fg = red5, bg = gray4 }
hl["TabLineFill"]    = {}
hl["TermCursor"]     = { link = "Cursor" }
hl["Title"]          = { link = "Directory" }
hl["Todo"]           = { link = "SpecialComment" }
hl["Underlined"]     = { underline = true }
hl["Visual"]         = { bg = gray4 }
hl["WarningMsg"]     = { link = "Error" }
hl["Whitespace"]     = { link = "NonText" }
hl["WinBar"]         = { link = "Normal" }
hl["WinBarNC"]       = {}

hl["WinSeparator"]   = { fg = hl["NormalFloat"]["bg"] }
hl["MatchParen"]     = { fg = yellow2, bg = hl["Visual"]["bg"] }
hl["FloatBorder"]    = { fg = gray4, bg = hl["NormalFloat"]["bg"] }
hl["FloatTitle"]     = { fg = blue3, bg = hl["NormalFloat"]["bg"] }


--------------------------------------------------
--  Syntax
--------------------------------------------------
hl["Comment"] = { fg = gray6 }
hl["Constant"] = { fg = red2 }
hl["Function"] = { fg = blue3 }
hl["Keyword"] = { fg = blue2 }
hl["Number"] = { fg = red4 }
hl["Operator"] = { fg = yellow2 }
hl["PreProc"] = { link = "Normal" }
hl["Special"] = { link = "Normal" }
hl["String"] = { fg = green3 }
hl["Tag"] = { link = "Normal" }

hl["Boolean"] = { link = "Constant" }
hl["Character"] = { link = "String" }
hl["Conditional"] = { link = "Statement" }
hl["Define"] = { link = "PreProc" }
hl["Exception"] = { link = "Statement" }
hl["Float"] = { link = "Number" }
hl["Identifier"] = { link = "Normal" }
hl["Include"] = { link = "PreProc" }
hl["Label"] = { link = "Conditional" }
hl["Macro"] = { link = "PreProc" }
hl["PreCondit"] = { link = "PreProc" }
hl["Repeat"] = { link = "Conditional" }
hl["Statement"] = { link = "Keyword" }
hl["StorageClass"] = { link = "Type" }
hl["Structure"] = { link = "Type" }
hl["Type"] = { fg = blue2 }
hl["Typedef"] = { link = "Type" }


--------------------------------------------------
-- Filetype
--------------------------------------------------
-- diff
hl["DiffAdd"] = { bg = green1, fg = green3 }
hl["DiffChange"] = { bg = utils.tint(blue1, -40) }
hl["DiffDelete"] = { bg = red1, fg = red3 }
hl["DiffText"] = { bg = blue1 }

-- Gitcommit diffs
-- https://github.com/vim/vim/blob/c54f347d63bcca97ead673d01ac6b59914bb04e5/runtime/syntax/diff.vim
hl["diffAdded"] = { link = "DiffAdd" }
hl["diffChanged"] = { link = "DiffChange" }
hl["diffRemoved"] = { link = "DiffDelete" }

-- Gitcommit (info above the diff in a commit)
-- https://github.com/vim/vim/blob/2f0936cb9a2eb026acac03e6a8fd0b2a5d97508b/runtime/syntax/gitcommit.vim
hl["gitcommitHeader"] = {}
hl["gitcommitOnBranch"] = {}
hl["gitcommitType"] = { fg = red2 }

hl["gitcommitArrow"] = { link = "Statement" }
hl["gitcommitBlank"] = { link = "DiffAdd" }
hl["gitcommitBranch"] = { link = "DiffAdd" }
hl["gitcommitDiscarded"] = { link = "DiffAdd" }
hl["gitcommitDiscardedFile"] = { link = "DiffAdd" }
hl["gitcommitDiscardedType"] = { link = "DiffDelete" }
hl["gitcommitSummary"] = { link = "Directory" }
hl["gitcommitUnmerged"] = { link = "DiffAdd" }

-- Help
-- https://github.com/vim/vim/blob/2d8ed0203aedd5f6c22efa99394a3677c17c7a7a/runtime/syntax/help.vim
hl["helpCommand"] = { link = "Normal" }
hl["helpExample"] = { link = "String" }
hl["helpHyperTextEntry"] = { link = "Directory" }
hl["helpOption"] = { link = "Normal" }
hl["helpVim"] = { link = "Normal" }

-- Markdown
hl["markdownBlockquote"] = { fg = gray7 }
hl["markdownCodeBlock"] = { link = "@markup.raw.block" }
hl["markdownHeadingRule"] = { link = "markdownRule" }
hl["markdownLinkText"] = { link = "String" }
hl["markdownListMarker"] = { link = "Normal" }
hl["markdownRule"] = { link = "NonText" }
hl["markdownUrl"] = { link = "@text.uri" }



--------------------------------------------------
-- Treesitter
--------------------------------------------------
-- https://github.com/nvim-treesitter/nvim-treesitter/blob/master/CONTRIBUTING.md#highlights
hl["@namespace"] = { fg = blue3 }
hl["@number.comment"] = { link = "Comment" }
hl["@punctuation"] = { link = "Normal" }
hl["@string.regex"] = { fg = green2 }
hl["@markup.raw.block"] = { bg = gray3 }
hl["@text.uri"] = { fg = blue2, underline = true }

for level = 1, 6 do
  local heading = "@markup.heading." .. level .. ".markdown"
  hl[heading] = { fg = blue3 }
end

hl["@constant.builtin"] = { link = "Constant" }
hl["@function.call"] = { link = "Normal" }
hl["@markup.heading"] = { link = "Function" }
hl["@method.call"] = { link = "Normal" }
hl["@property"] = { link = "Keyword" }
hl["@string.documentation"] = { link = "Comment" }
hl["@string.escape"] = { link = "@string.regex" }
hl["@string.special"] = { link = "@string.regex" }
hl["@text.literal"] = { link = "Normal" }
hl["@text.reference"] = { link = "String" }

-- Latex
hl["@markup.link.label"] = { link = "String" }
hl["@markup.link.latex"] = { link = "Keyword" }
hl["@markup.environment.latex"] = { link = "@markup.raw.block" }
hl["@module.latex"] = { link = "Function" }
hl["@punctuation.special.latex"] = { link = "Function" }

-- Markdown
hl["@markup.link.markdown_inline"] = { link = "Normal" }
hl["@markup.list.checked.markdown"] = { link = "DiagnosticOk" }
hl["@markup.list.unchecked.markdown"] = { link = "DiagnosticError" }
hl["@markup.quote.markdown"] = { link = "Comment" }
hl["@markup.raw.markdown_inline"] = { bg = hl["@markup.raw.block"]["bg"] }
hl["@punctuation.special.markdown"] = { link = "@markup.quote.markdown" }

for level = 1, 4 do
  hl["@markup.heading." .. level .. ".latex"] = { link = "String" }
end

-- Comment keywords
for type, color in pairs({
  error = { fg = red5, bold = true },
  danger = { fg = red5, bold = true },
  warning = { fg = yellow1, bold = true },
  todo = { fg = blue3, bold = true },
  note = { fg = gray9, bold = true },
}) do
  hl["@comment." .. type] = color
  hl["@comment." .. type .. ".comment"] = color
end


--------------------------------------------------
-- LSP
--------------------------------------------------
-- Diagnostics
for type, color in pairs({
  Error = red5,
  Warn = yellow1,
  Info = blue3,
  Hint = gray9,
  Ok = green2
}) do
  hl["Diagnostic" .. type] = { fg = color }
  hl["DiagnosticSign" .. type] = { fg = color }
  hl["DiagnosticVirtualText" .. type] = { fg = color }
  hl["DiagnosticUnderline" .. type] = { sp = utils.tint(color, -15), undercurl = true }
end

hl["DiagnosticUnnecessary"] = { fg = hl["Comment"]["fg"], undercurl = true }


-- Handlers
hl["LspSignatureActiveParameter"] = { sp = gray9, underline = true }


-- Semantic Tokens
for _, group in ipairs(vim.fn.getcompletion("@lsp", "highlight")) do
  vim.api.nvim_set_hl(0, group, {})
end


--------------------------------------------------
-- Plugins
--------------------------------------------------
-- hrsh7th/nvim-cmp
hl["CmpItemAbbrDeprecated"] = { strikethrough = true }
hl["CmpItemAbbrMatch"] = { link = "PmenuMatch" }
hl["CmpItemKind"] = { link = "Keyword" }

-- saghen/blink.cmp
hl["BlinkCmpLabelMatch"] = { link = "PmenuMatch" }
hl["BlinkCmpGhostText"] = { link = "NonText" }
hl["BlinkCmpKind"] = { fg = blue2 }
hl["BlinkCmpLabelDetail"] = { link = "NonText" }

-- rrethy/vim-illuminate
hl["IlluminatedWordText"] = { link = "MatchParen" }
hl["IlluminatedWordRead"] = { link = "MatchParen" }
hl["IlluminatedWordWrite"] = { link = "MatchParen" }

-- mcauley-penney/visual-whitespace.nvim
hl["VisualNonText"] = { fg = hl["Comment"]["fg"], bg = hl["Visual"]["bg"] }


--------------------------------------------------
-- Execute
--------------------------------------------------
for group, opts in pairs(hl) do
  vim.api.nvim_set_hl(0, group, opts)
end