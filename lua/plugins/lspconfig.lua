return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      pyright = {
        handlers = {
          -- 過濾掉所有 pyright 的診斷訊息
          ["textDocument/publishDiagnostics"] = function() end,
        },
        settings = {
          python = {
            analysis = {
              typeCheckingMode = "off",
              diagnosticMode = "off",
            },
          },
        },
      },
      svelte = {
        handlers = {
          ["textDocument/publishDiagnostics"] = function() end,
        },
      },
      ["*"] = {
        keys = {
          {
            "<leader>co",
            function()
              vim.lsp.buf.code_action({
                apply = true,
                context = { only = { "source.organizeImports" }, diagnostics = {} },
              })
            end,
            desc = "Organize Imports",
          },
        },
      },
    },
  },
}
