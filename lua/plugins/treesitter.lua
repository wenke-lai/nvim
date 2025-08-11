return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    require("nvim-treesitter.configs").setup({
      -- Install parsers synchronously (only applied to `ensure_installed`)
      sync_install = false,
      
      -- Automatically install missing parsers when entering buffer
      auto_install = true,
      
      -- List of parsers to install
      ensure_installed = {
        "lua",
        "python",
        "svelte",
        "javascript",
        "typescript",
        "html",
        "css",
        "json",
        "markdown",
      },
      
      highlight = {
        enable = true,
        -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
        -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
        -- Using this option may slow down your editor, and you may see some duplicate highlights.
        additional_vim_regex_highlighting = false,
      },
      
      indent = {
        enable = true,
      },
    })
  end,
}