return {
  "folke/snacks.nvim",
  opts = {
    picker = {
      sources = {
        files = {
          hidden = true,
          exclude = {
            "**/node_modules/**",
            "**/.svelte-kit/**",
          },
        },
        explorer = {
          hidden = true,
          include = {
            ".env",
          },
          layout = {
            layout = {
              width = 25, -- 設定 explorer 寬度
              min_width = 25,
            },
          },
        },
      },
    },
  },
}
