return {
  {
    "folke/noice.nvim",
    opts = {
      cmdline = {
        view = "cmdline_popup", 
        opts = {
          position = { row = 2, col = "50%" },
          size = { width = 60, height = "auto" },
          border = { style = "rounded", padding = { 0, 1 } },
          win_options = {
            winblend = 15, -- Modern transparent/frosted glass look
            winhighlight = {
              Normal = "NormalFloat", 
              Border = "FloatBorder",
            },
          },
        },
      },
      popupmenu = {
        enabled = true,
        backend = "nui",
      },
      -- --- ADVANCED FEATURES START HERE ---
      history = {
        view = "split", -- Saves your past commands. View with :Noice history
        opts = { enter = true, format = "details" },
        filter = {
          any = {
            { event = "cmdline", op = "not", find = "^%s*$" }, -- Ignore blank commands
          },
        },
      },
      messages = {
        enabled = true, -- Replaces old-school echoing text with elegant popups
        view = "notify", -- Routes long log messages to your notification manager
        view_error = "notify",
        view_warn = "notify",
        view_history = "messages",
      },
      lsp = {
        progress = {
          enabled = true, -- Shows a beautiful real-time loading bar when LSPs index files
          format = "lsp_progress",
        },
        override = {
          -- Routes hover doc syntax highlighting through nvim-cmp and treesitter
          ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
          ["vim.lsp.util.スタイライズ_markdown"] = true,
          ["cmp.entry.get_documentation"] = true,
        },
        signature = {
          enabled = true, -- Shows parameters elegantly when typing inside functions
          auto_open = { enabled = true, trigger = true },
        },
      },
      presets = {
        bottom_search = true,    -- Keeps search prompt centered instead of bottom line
        command_palette = true,  -- Elevates command line layout to a premium palette feel
        long_message_to_split = true, -- Massive log files auto-open in a readable split window
        inc_rename = true,        -- Live previews variable renames instantly as you type
        lsp_doc_border = true,    -- Adds matching smooth borders to hover documentation windows
      },
    },
  },
}
