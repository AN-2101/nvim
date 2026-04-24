return {
  {
    "akinsho/bufferline.nvim",
    dependencies = "nvim-tree/nvim-web-devicons",
    config = function()
      local C = require("ui.colors")

      require("bufferline").setup({
        options = {
          mode = "buffers",
          separator_style = "thin",
          diagnostics = "nvim_lsp",
        },
        highlights = {
          fill = { bg = C.bg_dark },
          background = { fg = C.fg_dim, bg = C.bg_dark },
          buffer_selected = { fg = C.fg, bg = C.bg, bold = true },
        },
      })
    end,
  },
}
