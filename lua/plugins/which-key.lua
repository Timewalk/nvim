local wk = require("which-key")

wk.setup({
    preset = "modern",
    delay = 300,
})

-- Register key groups for better organization
wk.add({
    { "<leader>f", group = "Find (Telescope)" },
    { "<leader>g", group = "Git" },
    { "<leader>c", group = "Code" },
    { "<leader>d", desc = "Show Diagnostic" },
    { "<leader>e", desc = "File Explorer" },
    { "<leader>q", desc = "Close Buffer" },
    { "<leader>r", group = "Refactor" },
    { "<leader>s", group = "Source" },
    { "g", group = "Go to" },
    { "z", group = "Folds" },
    { "[", group = "Previous" },
    { "]", group = "Next" },
})
