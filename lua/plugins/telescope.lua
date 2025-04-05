local telescope = require("telescope")

telescope.setup({
  defaults = {
    layout_config = {
      horizontal = { width = 0.9 },
    },
    sorting_strategy = "ascending",
    layout_strategy = "horizontal",
  },
})
