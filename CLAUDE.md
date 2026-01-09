# Neovim Configuration

## Structure
- `init.lua` - Entry point, loads plugins then core modules
- `lua/core/` - Core settings (options, keybinds, lsp, dbconfig)
- `lua/plugins/` - Plugin configurations

## Key Info
- Plugin manager: lazy.nvim
- Theme: kanagawa
- Leader key: Space
- LSP: pyright (Python), lua_ls (Lua), sqls (SQL/PostgreSQL)

## Key Bindings
- `<leader><leader>` - Find files (Telescope)
- `<leader>fg` - Live grep
- `<leader>e` - Toggle file tree
- `<leader>db` - Toggle DB UI
- `gd/gr/gi` - LSP definitions/references/implementations
- `Alt+Arrows` - Navigate splits
- `Shift+Arrows` - Resize splits
