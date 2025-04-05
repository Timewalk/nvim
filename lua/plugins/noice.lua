local noice = require("noice")

noice.setup({
    lsp = {
        hover = {
            enabled = true,
            silent = false,
            view = "hover",
            opts = {
                border = { style = "rounded" },
                position = { row = 1, col = 0 },
                size = { width = 80, height = 20 },
            },
        },
    },
})
