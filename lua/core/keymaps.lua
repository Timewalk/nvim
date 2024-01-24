vim.g.mapleader = ' '                                                                       -- set leader to space
vim.g.maplocalleader = ' '                                                                  -- set local leader to space


vim.keymap.set('n', '<leader>ee', vim.cmd.Ex)                                               -- edit ex commands

vim.keymap.set('x', 'J', ':move \'>+1<CR>gv=gv<CR>')                                        -- move line up/down in visual mode
vim.keymap.set('x', 'K', ':move \'<-2<CR>gv=gv<CR>')                                        -- move line up/down in visual mode

vim.keymap.set('n', 'J', 'mzJ`z')                                                           -- join lines
vim.keymap.set('n', '<C-d>', '<C-d>zz')                                                     -- center screen after scrolling
vim.keymap.set('n', '<C-u>', '<C-u>zz')                                                     -- center screen after scrolling
vim.keymap.set('n', 'n', 'nzzzv')                                                           -- center search results
vim.keymap.set('n', 'N', 'Nzzzv')                                                           -- center search results

-- greatest remap ever
vim.keymap.set('x', '<leader>p', [['_dP]])                                                  -- paste over selection

-- next greatest remap ever : asbjornHaland
vim.keymap.set({'n', 'v'}, '<leader>y', [["+y]])                                            -- copy to system clipboard
vim.keymap.set('n', '<leader>Y', [["+Y]])                                                   -- copy to system clipboard

vim.keymap.set({'n', 'v'}, '<leader>d', [["_d]])                                            -- delete to black hole register

-- This is going to get me cancelled
vim.keymap.set('i', '<C-c>', '<Esc>')                                                       -- escape in insert mode

vim.keymap.set('n', 'Q', '<nop>')                                                           -- disable ex mode
-- vim.keymap.set('n', '<C-f>', '<cmd>silent !tmux neww tmux-sessionizer<CR>')              -- open tmux-sessionizer
vim.keymap.set('n', '<leader>f', vim.lsp.buf.format)                                        -- format buffer

vim.keymap.set('n', '<C-k>', '<cmd>cnext<CR>zz')                                            -- next quickfix
vim.keymap.set('n', '<C-j>', '<cmd>cprev<CR>zz')                                            -- prev quickfix
vim.keymap.set('n', '<leader>k', '<cmd>lnext<CR>zz')                                        -- next quickfix
vim.keymap.set('n', '<leader>j', '<cmd>lprev<CR>zz')                                        -- prev quickfix

vim.keymap.set('n', '<leader>s', [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])    -- search and replace word under cursor
-- vim.keymap.set('n', '<leader>x', '<cmd>!chmod +x %<CR>', { silent = true })              -- make file executable

vim.keymap.set('n', '<leader>key', '<cmd>e ~/.config/nvim/lua/core/keymaps.lua<CR>')        -- open keymaps.lua
vim.keymap.set('n', '<leader>opt', '<cmd>e ~/.config/nvim/lua/core/options.lua<CR>')        -- open options.lua

vim.keymap.set('n', '<leader><leader>', ':NvimTreeToggle<CR>')                              -- toggle nvimtree

vim.api.nvim_set_keymap('n', '<C-Left>', '<C-w>h', { noremap = true })                      -- left window
vim.api.nvim_set_keymap('n', '<C-Right>', '<C-w>l', { noremap = true })                     -- right window
vim.api.nvim_set_keymap('n', '<C-Up>', '<C-w>k', { noremap = true })                        -- up window
vim.api.nvim_set_keymap('n', '<C-Down>', '<C-w>j', { noremap = true })                      -- down window
vim.api.nvim_set_keymap('n', '<Tab>', '<C-w>w', { noremap = true })                         -- cycle through window

-- Bind a key combination to resource the Lua configuration file
vim.api.nvim_set_keymap('n', '<leader>rs', [[:luafile ~/.config/nvim/init.lua<CR>]], { noremap = true, silent = true })

