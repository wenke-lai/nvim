
vim.keymap.set("i", "kj", "<Esc>", { noremap = false })

-- Neo-tree keymaps
vim.keymap.set("n", "<leader>e", "<cmd>Neotree toggle<cr>", { desc = "Toggle Neo-tree" })
vim.keymap.set("n", "<leader>o", "<cmd>Neotree focus<cr>", { desc = "Focus Neo-tree" })

-- Window management
vim.keymap.set("n", "<leader>qq", "<cmd>qa<cr>", { desc = "Quit all windows" })
