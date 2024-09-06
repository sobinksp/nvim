local opt = vim.opt

-- disable swap file
opt.swapfile = true
opt.shortmess = "A"

-- line number
opt.relativenumber = false
opt.number = true

-- disable auto comment on new line
vim.cmd([[autocmd FileType * set formatoptions-=ro]])

-- display explorer in tree style
vim.cmd("let g:netrw_liststyle = 3")

-- tabs & indentation
-- tabstop=2 softtabstop=0 shiftwidth=2 expandtab
opt.tabstop = 2
opt.softtabstop = 0
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true

-- line wrapig
opt.wrap = false

-- search settings
opt.ignorecase = true
opt.smartcase = true

-- global clipboard
opt.clipboard:append("unnamedplus")

-- backspace behavior
opt.backspace = "indent,eol,start"

-- termguicolors enable for colorscheme
opt.termguicolors = true
opt.signcolumn = "yes"

-- split windows
opt.splitright = true -- split verticle window to the right
opt.splitbelow = true -- split horizontal window to the bottom

-- visible line around cursor
opt.scrolloff = 4
