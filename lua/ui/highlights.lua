local C = require("ui.colors")

-- Winbar
vim.api.nvim_set_hl(0, "WinBar",   { fg = C.fg,     bg = C.bg, bold = true })
vim.api.nvim_set_hl(0, "WinBarNC", { fg = C.fg_dim, bg = C.bg })

-- Statusline
vim.api.nvim_set_hl(0, "StatusLine",   { fg = C.fg,     bg = C.bg_mid })
vim.api.nvim_set_hl(0, "StatusLineNC", { fg = C.fg_dim, bg = C.bg_mid })

-- Split border
vim.api.nvim_set_hl(0, "WinSeparator", { fg = C.bg_sel })

-- Telescope
vim.api.nvim_set_hl(0, "TelescopeNormal",       { bg = C.bg })
vim.api.nvim_set_hl(0, "TelescopePromptNormal", { bg = C.bg_mid })
vim.api.nvim_set_hl(0, "TelescopeSelection",    { bg = C.bg_sel })
