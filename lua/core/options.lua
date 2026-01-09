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
opt.updatetime = 250               -- faster CursorHold
opt.timeoutlen = 300              -- faster keybinding sequences
opt.splitbelow = true             -- open splits below
opt.splitright = true             -- open vertical splits to the right
opt.completeopt = { "menu", "menuone", "noselect" } -- better completion
opt.ignorecase = true             -- case-insensitive search...
opt.smartcase = true              -- ...unless capital letter is used
opt.incsearch = true              -- show matches while typing
opt.backspace = { "indent", "eol", "start" } -- more forgiving backspace

-- Folding (indent-based - reliable for Python)
opt.foldmethod = "indent"
opt.foldlevel = 99                -- start with all folds open
opt.foldlevelstart = 99           -- start with all folds open
opt.foldenable = true             -- enable folding

vim.cmd('colorscheme kanagawa')
