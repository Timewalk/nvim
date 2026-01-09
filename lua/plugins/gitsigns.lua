require("gitsigns").setup({
    signs = {
        add          = { text = "+" },
        change       = { text = "~" },
        delete       = { text = "_" },
        topdelete    = { text = "-" },
        changedelete = { text = "~" },
    },
    current_line_blame = false,  -- toggle with <leader>gb
    on_attach = function(bufnr)
        local gs = package.loaded.gitsigns
        local keymap = vim.keymap.set

        -- Navigation
        keymap("n", "]h", gs.next_hunk, { buffer = bufnr, desc = "Next Hunk" })
        keymap("n", "[h", gs.prev_hunk, { buffer = bufnr, desc = "Prev Hunk" })

        -- Actions
        keymap("n", "<leader>gb", gs.toggle_current_line_blame, { buffer = bufnr, desc = "Toggle Git Blame" })
        keymap("n", "<leader>gp", gs.preview_hunk, { buffer = bufnr, desc = "Preview Hunk" })
        keymap("n", "<leader>gr", gs.reset_hunk, { buffer = bufnr, desc = "Reset Hunk" })
        keymap("n", "<leader>gd", gs.diffthis, { buffer = bufnr, desc = "Diff This" })
    end,
})
