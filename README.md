# My NeoVim Configuration

## Quick Start

1. Install NeoVim `brew install neovim`
2. Clone this config to `~/.config/nvim/`
3. Open Neovim - lazy.nvim will bootstrap and install plugins automatically

## Plugin Manager

| Name | URL | Purpose | File Path |
|------|-----|---------|-----------|
| lazy.nvim | https://github.com/folke/lazy.nvim | Plugin manager for Neovim | `lua/config/lazy.lua` |

## Installed Plugins

| Name | URL | Purpose | File Path | Dependencies |
|------|-----|---------|-----------|--------------|
| telescope.nvim | https://github.com/nvim-telescope/telescope.nvim | Fuzzy finder for files, text, and more | `lua/plugins/telescope.lua` | plenary.nvim |
| neo-tree.nvim | https://github.com/nvim-neo-tree/neo-tree.nvim | File explorer sidebar | `lua/plugins/neo-tree.lua` | plenary.nvim, nvim-web-devicons, nui.nvim |
| mason.nvim | https://github.com/williamboman/mason.nvim | LSP/DAP/formatter installer | `lua/plugins/lspconfig.lua` | mason-lspconfig.nvim |
| mason-lspconfig.nvim | https://github.com/williamboman/mason-lspconfig.nvim | Bridge between mason and lspconfig | Auto-loaded dependency | None |
| nvim-lspconfig | https://github.com/neovim/nvim-lspconfig | LSP client configurations | `lua/plugins/python-lsp.lua`, `lua/plugins/svelte-lsp.lua` | mason.nvim, mason-lspconfig.nvim |
| plenary.nvim | https://github.com/nvim-lua/plenary.nvim | Lua utility library (dependency) | Auto-loaded dependency | None |
| nvim-web-devicons | https://github.com/nvim-tree/nvim-web-devicons | File type icons | Auto-loaded dependency | None |
| nui.nvim | https://github.com/MunifTanjim/nui.nvim | UI component library | Auto-loaded dependency | None |

## Configuration Files

### Core Configuration
- `init.lua` - Entry point
- `lua/config/lazy.lua` - Plugin manager setup
- `lua/config/keymaps.lua` - Global keymaps

### Plugin Configurations
- `lua/plugins/telescope.lua` - Fuzzy finder
- `lua/plugins/neo-tree.lua` - File explorer
- `lua/plugins/lspconfig.lua` - Mason/LSP installer
- `lua/plugins/python-lsp.lua` - Python LSP
- `lua/plugins/svelte-lsp.lua` - Svelte LSP

## Keymaps

### Global Keymaps
- `kj` (insert mode) - Escape to normal mode  
- `<leader>qq` - Quit all windows

### Telescope (Fuzzy Finding)
- `<leader>ff` - Find files
- `<leader>fg` - Live grep
- `<leader>fb` - Find buffers  
- `<leader>fh` - Help tags

### Neo-tree (File Explorer)
- `<leader>e` - Toggle Neo-tree
- `<leader>o` - Focus Neo-tree

### LSP (Language Server Protocol)
- `gD` - Go to declaration
- `gd` - Go to definition  
- `K` - Hover documentation
- `gi` - Go to implementation
- `<C-k>` - Signature help
- `<leader>rn` - Rename symbol
- `<leader>ca` - Code actions
- `gr` - Find references
- `<leader>f` - Format code

## LSP Servers
- **pyright** - Python language server (`lua/plugins/python-lsp.lua`)
- **svelte** - Svelte language server (`lua/plugins/svelte-lsp.lua`)

## Installation Status
- All plugins are locked to specific commits in `lazy-lock.json`
- Auto-update checking is enabled
- Installation via lazy.nvim bootstrap process
