vim.g.mapleader = " " -- Set <leader> to space

local keymap = vim.keymap.set
local builtin = require("telescope.builtin")

-- 📁 Telescope: File & Search
keymap("n", "<leader><leader>", builtin.find_files,         { desc = "Find Files" })
keymap("n", "<leader>fg",       builtin.live_grep,          { desc = "Live Grep" })
keymap("n", "<leader>fb",       builtin.buffers,            { desc = "List Buffers" })
keymap("n", "<leader>fo",       builtin.oldfiles,           { desc = "Recent Files" })

-- ⚙️ Telescope: Help & Tools
keymap("n", "<leader>fh",       builtin.help_tags,          { desc = "Help Tags" })
keymap("n", "<leader>fc",       builtin.commands,           { desc = "Commands" })
keymap("n", "<leader>fk",       builtin.keymaps,            { desc = "Keymaps" })
keymap("n", "<leader>sv",       ":source ~/.config/nvim/init.lua<CR>",     { desc = "Reload Neovim Config" })

-- 🧠 Telescope: LSP
keymap("n", "gd",               builtin.lsp_definitions,    { desc = "LSP Definitions" })
keymap("n", "gr",               builtin.lsp_references,     { desc = "LSP References" })
keymap("n", "gi",               builtin.lsp_implementations,{ desc = "LSP Implementations" })
keymap("n", "<leader>ds",       builtin.lsp_document_symbols, { desc = "LSP Document Symbols" })


-- Windows
keymap("n", "<A-Left>",  "<C-w>h", { desc = "Move to left split" }) 
keymap("n", "<A-Down>",  "<C-w>j", { desc = "Move to below split" })
keymap("n", "<A-Up>",    "<C-w>k", { desc = "Move to above split" })
keymap("n", "<A-Right>", "<C-w>l", { desc = "Move to right split" })

-- Resize splits
keymap("n", "<C-Up>",    ":resize -20<CR>", { desc = "Resize split up" })
keymap("n", "<C-Down>",  ":resize +20<CR>", { desc = "Resize split down" })
keymap("n", "<C-Left>",  ":vertical resize -40<CR>", { desc = "Resize split left" })
keymap("n", "<C-Right>", ":vertical resize +40<CR>", { desc = "Resize split right" })

-- Close buffer
keymap("n", "<leader>q", ":bd<CR>", { desc = "Close buffer" })

keymap("n", "<Tab>", "<C-w>w>", { desc = "Next window" })

keymap("n", "<leader>e", ":NvimTreeToggle<CR>", { desc = "Toggle NvimTree" })
keymap("n", "<leader>db", ":DBUIToggle<CR>", { desc = "Toggle DB UI" })
