local opt = vim.opt

opt.number = true              -- show line numbers
opt.relativenumber = true      -- relative line numbers
opt.tabstop = 4                -- number of spaces per tab
opt.shiftwidth = 4             -- number of spaces for auto-indent
opt.expandtab = true           -- convert tabs to spaces
opt.smartindent = true         -- auto-indent new lines
opt.wrap = false               -- disable line wrap
opt.cursorline = true          -- highlight current line
opt.termguicolors = true       -- enable 24-bit colors
opt.scrolloff = 8              -- keep 8 lines above/below cursor
opt.signcolumn = "yes"         -- always show sign column
opt.clipboard = "unnamedplus" -- use system clipboard
opt.mouse = "a"                -- enable mouse support


vim.lsp.enable('luals')
vim.lsp.enable('jedils')

vim.cmd('colorscheme kanagawa')
