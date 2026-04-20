local capabilities =
  require("cmp_nvim_lsp").default_capabilities()

vim.lsp.config.clangd = {
  cmd = {
    "clangd",
    "--background-index",
    "--clang-tidy",
    "--completion-style=detailed",
    "--header-insertion=iwyu",
    "--fallback-style=llvm",
  },
  filetypes = { "c", "cpp", "objc", "objcpp" },

  root_markers = {
    "compile_commands.json",
    ".git",
  },

  capabilities = capabilities,
}

vim.lsp.enable("clangd")

