local treesitter = require("nvim-treesitter.configs")

treesitter.setup({
    ensure_installed = { "lua", "vim", "python", "c", "sql"},
    sync_install = false,
    highlight = { enable = true },
    indent = { enable = true },
})

