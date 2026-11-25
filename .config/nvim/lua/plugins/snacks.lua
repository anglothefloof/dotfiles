return {
  "folke/snacks.nvim",
  opts = {
    picker = {
      sources = {
        explorer = {
          hidden = true,
          ignored = true,
          exclude = { ".git", ".task", "node_modules" },
        },
        files = {
          hidden = true,
          ignored = true,
          exclude = { ".git", ".task", "node_modules" },
        },
      },
      hidden = true,
      ignored = true,
      exclude = { ".git", ".task", "node_modules" },
    },
    explorer = {
      trash = false,
    },
  },
}
