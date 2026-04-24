require "config.options"
require "config.keymap"
require "config.lazy"
require "config.lsp-keys"
require "config.comment-keymap"
require "config.clangd"
vim.cmd("colorscheme github_dark_default")
-- UI (after plugins)
require("ui.highlights")

vim.opt.timeoutlen=200
vim.opt.ttimeoutlen=10
vim.opt.termguicolors = true
vim.opt.showtabline = 2
vim.opt.mouse = "a"
--Border of split windows
vim.opt.laststatus = 3
vim.opt.winbar = " %y %f %=%l:%c "
vim.opt.statusline = " %y | %l:%c %= %p%% "

vim.opt.splitright = true
vim.opt.splitbelow = true
vim.opt.fillchars = {
  vert = "│",   -- vertical separator
  horiz = "─",  -- horizontal separator
}
--Border coloring
vim.api.nvim_set_hl(0, "WinSeparator", { fg = "#7aa2f7", bold = true })
vim.api.nvim_set_hl(0, "WinSeparator", { fg = "#7aa2f7" })
vim.api.nvim_set_hl(0, "NormalNC", { fg = "#888888" }) -- dim inactive windows

