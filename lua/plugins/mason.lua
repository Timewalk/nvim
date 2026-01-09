local mason = require("mason")

mason.setup()

-- Ensure pyright is installed for Python LSP
vim.api.nvim_create_autocmd("User", {
  pattern = "MasonToolsUpdateCompleted",
  callback = function()
    vim.schedule(function()
      print("Mason tools updated")
    end)
  end,
})
