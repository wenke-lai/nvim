# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Architecture Overview

This is a personal Neovim configuration using the lazy.nvim plugin manager. The configuration follows a modular structure:

- `init.lua`: Entry point that loads configuration modules
- `lua/config/`: Core configuration files (keymaps, lazy.nvim setup)
- `lua/plugins/`: Individual plugin specifications as separate files
- `lazy-lock.json`: Locked plugin versions for reproducible installs

The configuration uses lazy.nvim's spec-based plugin loading where each file in `lua/plugins/` returns a plugin specification table.

## Key Configuration Patterns

### Plugin Structure
Each plugin file in `lua/plugins/` follows this pattern:
```lua
return {
  "author/plugin-name",
  dependencies = { ... },
  config = function()
    -- Setup and keymaps
  end
}
```

### Leader Key Setup
- Leader key is set to space (` `) in `lua/config/lazy.lua:21`
- Local leader key is set to backslash (`\`)

### Current Plugin Ecosystem
- **lazy.nvim**: Plugin manager with auto-update checking enabled
- **telescope.nvim**: Fuzzy finder with standard keymaps (`<leader>ff`, `<leader>fg`, etc.)
- **neo-tree.nvim**: File explorer with toggle (`<leader>e`) and focus (`<leader>o`) keymaps
- **nvim-lspconfig**: LSP configurations split into language-specific files
- **mason.nvim**: LSP server installer and manager
- **plenary.nvim**: Lua utility library (dependency for telescope/neo-tree)
- **nvim-web-devicons**: File type icons
- **toggleterm.nvim**: Terminal integration with floating window support

### LSP Structure
LSP configurations are split into separate files for better organization:
- `lua/plugins/lspconfig.lua`: Mason setup and server installation
- `lua/plugins/python-lsp.lua`: Python LSP (pyright) configuration
- `lua/plugins/svelte-lsp.lua`: Svelte LSP configuration
- Each language-specific file uses `ft` (filetype) to load only when needed

## Common Development Tasks

### Adding New Plugins
1. Create new file in `lua/plugins/` named after the plugin
2. Return plugin specification table with setup configuration
3. Restart Neovim - lazy.nvim will auto-install

### Modifying Keymaps
- Global keymaps: Edit `lua/config/keymaps.lua`
- Plugin-specific keymaps: Include in the plugin's config function

### Plugin Management
- `:Lazy` - Open lazy.nvim UI for plugin management
- `:Lazy sync` - Update all plugins
- Plugin versions are locked in `lazy-lock.json`

## Installation Requirements

From README.md:
1. Install Neovim: `brew install neovim`
2. Clone this config to `~/.config/nvim/`
3. Open Neovim - lazy.nvim will bootstrap and install plugins automatically

## Current Keymaps

### Core Navigation
- `kj` (insert mode): Escape to normal mode

### Telescope (Fuzzy Finding)
- `<leader>ff`: Find files
- `<leader>fg`: Live grep (requires ripgrep)
- `<leader>fb`: Find buffers
- `<leader>fh`: Help tags

### Neo-tree (File Explorer)
- `<leader>e`: Toggle Neo-tree
- `<leader>o`: Focus Neo-tree
- `<leader>qq`: Quit all windows

### Terminal (Floating Window)
- `<Ctrl-\>`: Toggle floating terminal
- `<leader>t`: Toggle floating terminal
- `kj` (in terminal mode): Exit to normal mode
- `<Esc>` (in terminal mode): Exit to normal mode

### LSP (Language Server Protocol)
- `gD`: Go to declaration
- `gd`: Go to definition
- `K`: Hover documentation
- `gi`: Go to implementation
- `<C-k>`: Signature help
- `<leader>rn`: Rename symbol
- `<leader>ca`: Code actions
- `gr`: Find references
- `<leader>f`: Format code

# important-instruction-reminders
Do what has been asked; nothing more, nothing less.
NEVER create files unless they're absolutely necessary for achieving your goal.
ALWAYS prefer editing an existing file to creating a new one.
NEVER proactively create documentation files (*.md) or README files. Only create documentation files if explicitly requested by the User.
IMPORTANT: When the user is only asking questions or seeking explanations, DO NOT modify any files without explicit permission. Only provide suggested solutions or methods first.