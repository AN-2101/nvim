return {
  "nvim-telescope/telescope.nvim",
  tag = "0.1.8",
  dependencies = { "nvim-lua/plenary.nvim" },
  module = "telescope",

  config = function()
    local action_layout = require("telescope.actions.layout")
    require('telescope').setup({
      defaults = {
        mappings = {
          n = {
            ["j"] = actions.move_selection_next,
            ["k"] = actions.move_selection_previous,
            ["<M-p>"] = action_layout.toggle_preview},
          i = {
            ["<M-p>"] = action_layout.toggle_preview},
            ["<C-j>"] = actions.move_selection_next,
            ["<C-k>"] = actions.move_selection_previous,

            -- optional: disable Alt bindings if you want clean config
            ["<M-j>"] = false,
            ["<M-k>"] = false,
          }
        }
      }
    )

    local builtin = require('telescope.builtin')

    vim.keymap.set("n", "<leader>fg", builtin.git_files, {})
    vim.keymap.set("n", "<leader>fr", builtin.live_grep, {})
    vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
    vim.keymap.set("n", "<leader>fb", builtin.buffers, {})
    vim.keymap.set("n", "<leader>fh", ":Telescope find_files hidden=true <CR>")

  end
}
