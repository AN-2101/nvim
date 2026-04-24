local C = require("ui.colors")

vim.opt.laststatus = 3
vim.opt.statusline = table.concat({
  " %y",          -- filetype
  " %=",          -- right align
  " L:%l C:%c ",  -- cursor
  " [%p%%]",      -- progress
})

vim.api.nvim_set_hl(0, "StatusLine",   { fg = C.fg,     bg = C.bg_mid })
vim.api.nvim_set_hl(0, "StatusLineNC", { fg = C.fg_dim, bg = C.bg_mid })
