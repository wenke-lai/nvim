-- Line numbers
vim.opt.number = true         -- Show line numbers
vim.opt.relativenumber = false -- Use absolute line numbers only

-- Other common options
vim.opt.tabstop = 2           -- Number of spaces a tab counts for
vim.opt.shiftwidth = 4        -- Number of spaces to use for autoindent
vim.opt.expandtab = true      -- Use spaces instead of tabs
vim.opt.wrap = false          -- Don't wrap lines
vim.opt.scrolloff = 8         -- Keep 8 lines visible above/below cursor
vim.opt.sidescrolloff = 8     -- Keep 8 columns visible left/right of cursor

-- Search settings
vim.opt.ignorecase = true     -- Ignore case in search
vim.opt.smartcase = true      -- Use case-sensitive if capital letters present

-- UI improvements
vim.opt.cursorline = true     -- Highlight current line
vim.opt.signcolumn = "yes"    -- Always show sign column
vim.opt.colorcolumn = "80"    -- Show vertical line at column 80