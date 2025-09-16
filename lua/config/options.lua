-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
if vim.fn.has("win32") == 1 then
  -- Use PowerShell Core if installed
  vim.opt.shell = "powershell"
  vim.opt.shellcmdflag = "-NoLogo -ExecutionPolicy RemoteSigned -Command"
  vim.opt.shellquote = ""
  vim.opt.shellxquote = ""
end
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.wrap = true
vim.opt.linebreak = true -- wrap at word boundaries, not mid-word
vim.opt.breakindent = true -- keep indent on wrapped lines
