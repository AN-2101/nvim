return {
  "nvim-telescope/telescope.nvim",
  tag = "0.1.8",
  dependencies = { "nvim-lua/plenary.nvim" },
  module = "telescope",

  config = function()
    local action_layout = require("telescope.actions.layout")
    local actions = require("telescope.actions")
    require('telescope').setup({
      defaults = {
         file_ignore_patterns = {
          "node_modules/",
          "dist/",
          "build/",
          "target/",
          ".next/",
        },
        mappings = {
          n = {
            ["j"] = actions.move_selection_next,
            ["k"] = actions.move_selection_previous,
            ["<M-p>"] = action_layout.toggle_preview,
            ["<leader>d"] = actions.delete_buffer,
          },
          i = {
            ["<M-p>"] = action_layout.toggle_preview,
            ["<C-j>"] = actions.move_selection_next,
            ["<C-k>"] = actions.move_selection_previous,

            -- optional: disable Alt bindings if you want clean config
            ["<M-j>"] = false,
            ["<M-k>"] = false,
          },
        }
      }
    })

    local builtin = require('telescope.builtin')

    vim.keymap.set("n", "<leader>fg", builtin.git_files, {})
    vim.keymap.set("n", "<leader>fr", function() 
      builtin.live_grep({
        additional_args = function()
          return {
            "--hidden",
            "--no-ignore",
          }
        end,
      })
      end, {
        desc = "Live grep including hidden and ignored",
      })
    vim.keymap.set("n", "<leader>ff", function()
      builtin.find_files({
          hidden = true,
    no_ignore = true,
  })
end, {
  desc = "Find files including hidden",
    })
    vim.keymap.set("n", "<leader>fb", builtin.buffers, {})
    vim.keymap.set("n", "<leader>fh", ":Telescope find_files hidden=true <CR>")

  end
}
