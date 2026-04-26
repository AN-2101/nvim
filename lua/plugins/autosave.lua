return {
  "Pocco81/auto-save.nvim",
  config = function()
    require("auto-save").setup({
      enabled = true,
      execution_message = {
        enabled = false,
      },
      trigger_events = {
        "InsertLeave",
        "TextChanged",
        "FocusLost",
      },
      condition = function(buf)
        local fn = vim.fn
        local utils = require("auto-save.utils.data")

        if fn.getbufvar(buf, "&modifiable") == 1
          and utils.not_in(fn.getbufvar(buf, "&filetype"), { "gitcommit", "oil" })
        then
          return true
        end
        return false
      end,
    })
  end,
}
