-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    -- check if python project
    local python_files = {
      "requirements.txt",
      "pyproject.toml",
    }

    local is_python_project = false
    for _, file in ipairs(python_files) do
      if vim.fn.findfile(file, vim.fn.getcwd() .. ";") ~= "" then
        is_python_project = true
        break
      end
    end

    if is_python_project then
      -- source .venv/bin/activate
      local venv_dir = vim.fn.finddir(".venv", vim.fn.getcwd() .. ";")
      if venv_dir ~= "" then
        local venv_path = vim.fn.fnamemodify(venv_dir, ":p:h")
        local python_path = venv_path .. "/.venv/bin/python"

        vim.env.VIRTUAL_ENV = venv_path .. "/.venv"
        vim.env.PATH = venv_path .. "/.venv/bin:" .. vim.env.PATH

        -- update LSP config
        if vim.fn.filereadable(python_path) == 1 then
          require("lspconfig").pyright.setup({
            on_init = function(client)
              client.config.settings.python.pythonPath = python_path
            end,
          })
        end
      end
    end
  end,
})
