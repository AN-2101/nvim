return {
  "mrcjkb/rustaceanvim",
  version = "^5", -- supports Neovim 0.11+
  lazy = false,
  config = function()
    vim.g.rustaceanvim = {
      server = {
        on_attach = function(_, bufnr)
          vim.keymap.set("n", "K", vim.lsp.buf.hover, { buffer = bufnr })
          vim.keymap.set("n", "gd", vim.lsp.buf.definition, { buffer = bufnr })
        end,
      },
    }
  end,
}
