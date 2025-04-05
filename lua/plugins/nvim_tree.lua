require('nvim-tree').setup({
    sort_by = "case_sensitive",
    view = {
        float = {
            enable = true,
            quit_on_focus_loss = true,
            open_win_config = function()
                local width = 60
                local height = 25
                local screen_w = vim.api.nvim_get_option("columns")
                local screen_h = vim.api.nvim_get_option("lines")
                local col = math.floor((screen_w - width) / 2)
                local row = math.floor((screen_h - height) / 2) - 1
                return {
                    relative = "editor",
                    border = "rounded",
                    width = width,
                    height = height,
                    row = row,
                    col = col,
                    style = "minimal",
                }
            end,
        },
        adaptive_size = false,
    },
    renderer = {
        group_empty = true,
        highlight_git = true,
        highlight_opened_files = "all",
        root_folder_modifier = ":t",
        indent_markers = {
            enable = true,
            inline_arrows = true,
            icons = {
                corner = "└ ",
                edge = "│ ",
                item = "│ ",
                none = "  ",
            },
        },
    },
    update_focused_file = {
        enable = true,
        update_root = false,
        ignore_list = {},
    },
})
