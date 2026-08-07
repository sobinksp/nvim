local opt = vim.opt
local api = vim.api

-- disable swap file
opt.swapfile = true
opt.shortmess = "A"

-- line number
opt.relativenumber = false
-- opt.number = true
opt.number = false

-- disable auto comment on new line
vim.cmd([[autocmd FileType * set formatoptions-=ro]])

-- display explorer in tree style
vim.cmd("let g:netrw_liststyle = 3")

-- tabs & indentation
-- tabstop=2 softtabstop=0 shiftwidth=2 expandtab
opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.autoindent = true

-- line wrapig
opt.wrap = true

-- search settings
opt.ignorecase = true
opt.smartcase = true

-- global clipboard
opt.clipboard:append("unnamedplus")

-- backspace behavior
opt.backspace = "indent,eol,start"

-- termguicolors enable for colorscheme
opt.termguicolors = true
-- opt.signcolumn = "yes"
opt.signcolumn = "yes:1"

-- split windows
opt.splitright = true -- split verticle window to the right
opt.splitbelow = true -- split horizontal window to the bottom

-- visible line around cursor
opt.scrolloff = 0

-- cursor line
opt.cursorline = true
-- cursor style
-- vim.opt.guicursor = ""

opt.syntax = "enable"

vim.highlight.priorities.semantic_tokens = 95

-- opt.shortmess = "a"
opt.shortmess = "aFWItc"
-- opt.cmdheight = 2

-- opt.guicursor = {
-- 	"n-v-c:block", -- normal/visual/command: solid block
-- 	-- "i:block", -- insert: block (we'll style it via highlight)
-- 	"i:block-UserInsertCursor", -- Use a custom highlight group here
-- 	"r:hor20", -- replace
-- 	"o:hor50",
-- }
--
-- opt.guicursor = "v-c-i:block-Cursor"
opt.guicursor = "n:block-UserNormalCursor,v-c:block-Cursor,i:block-UserInsertCursor"
-- UserNormalCursor / UserInsertCursor highlights are defined in
-- plugins/colorscheme.lua (after the colorscheme's `hi clear`).
-- vim.opt.guicursor = "n-v-c:block,i-ci-ve:block,r-cr:hor20,o:hor50"
-- Define the highlight color for the cursor
-- vim.api.nvim_set_hl(0, "Cursor", { bg = "steelblue", fg = "white" })
-- vim.api.nvim_set_hl(0, "iCursor", { bg = "steelblue", fg = "white" })
opt.exrc = true
