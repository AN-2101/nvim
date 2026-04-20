local comment = require("Comment.api")

-- Normal mode: toggle comment for current line
vim.keymap.set("n", "<leader>c", function()
  comment.toggle.linewise.current()
end, { desc = "Toggle comment (line)" })

-- Visual mode: toggle comment for selection
vim.keymap.set("v", "<leader>c", function()
  local esc = vim.api.nvim_replace_termcodes("<ESC>", true, false, true)
  vim.api.nvim_feedkeys(esc, "nx", false)
  comment.toggle.linewise(vim.fn.visualmode())
end, { desc = "Toggle comment (selection)" })
