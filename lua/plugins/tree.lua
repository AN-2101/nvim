return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    require("nvim-tree").setup {
      update_focused_file = {
        enable = true,
        update_root = false,
      },
    }

    vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<cr>")
    vim.keymap.set("n", "<leader>a", "<cmd>NvimTreeFindFile<CR>", { desc = "Find file in NvimTree" }) 
  end,
}
