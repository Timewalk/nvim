require("copilot").setup({
    panel = {
        enabled = false,
        auto_refresh = false,
        keymap = {
            jump_prev = "[[",
            jump_next = "]]",
            accept = "<CR>",
            refresh = "gr",
            open = "<M-CR>"
        },
        layout = {
            position = "bottom",
            ratio = 0.4
        },
    },
    suggestion = {
        enabled = true,
        auto_trigger = true,
        hide_during_completion = true,
        debounce = 75,
        keymap = {
            accept = "<C-e>",
            accept_word = "<C-w>",
            accept_line = "<C-l>",
            next = "<C-k>",
            prev = "<C-j>",
            dismiss = "<C-q>",
        },
    },
    filetypes = {
        yaml = false,
        markdown = false,
        help = false,
        gitcommit = false,
        gitrebase = false,
        hgcommit = false,
        svn = false,
        cvs = false,
        ["."] = false,
    },
    auth_provider_url = nil,
    logger = {
        file = vim.fn.stdpath("log") .. "/copilot-lua.log",
        file_log_level = vim.log.levels.OFF,
        print_log_level = vim.log.levels.WARN,
        trace_lsp = "off",
        trace_lsp_progress = false,
        log_lsp_messages = false,
    },
    copilot_node_command = 'node',
    workspace_folders = {},
    copilot_model = "",
    root_dir = function()
        return vim.fs.dirname(vim.fs.find(".git", { upward = true })[1])
    end,
    should_attach = function(_, _)
        if not vim.bo.buflisted or vim.bo.buftype ~= "" then
            return false
        end
        return true
    end,
    server = {
        type = "nodejs",
        custom_server_filepath = nil,
    },
    server_opts_overrides = {},
})
