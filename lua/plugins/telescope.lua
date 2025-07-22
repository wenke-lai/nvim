-- Telescope is a highly extendable fuzzy finder over lists
-- It provides a UI to search for files, grep through code, and more
return {
  'nvim-telescope/telescope.nvim',
  tag = '0.1.8',
  -- Plenary is a required dependency that provides lua functions used by telescope
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    -- Setup telescope with default configuration
    require('telescope').setup({})
    
    -- Set keymaps for common telescope functions
    local builtin = require('telescope.builtin')
    -- <leader>ff: Search for files in current directory
    vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Find files' })
    -- <leader>fg: Search for text within files (requires ripgrep)
    vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Live grep' })
    -- <leader>fb: List open buffers
    vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Find buffers' })
    -- <leader>fh: Search help documentation
    vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Help tags' })
  end
}