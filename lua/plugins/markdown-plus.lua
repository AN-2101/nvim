return {
  "yousefhadder/markdown-plus.nvim",
  ft = { "markdown", "text", "txt", "md" },  -- When to load the plugin (plugin manager)
  config = function()
    require("markdown-plus").setup({})
  end,
}
