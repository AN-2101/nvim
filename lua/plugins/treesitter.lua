return {
  {
    "nvim-treesitter/nvim-treesitter",
    branch = "main",
    build = ":TSUpdate",
    event = { "BufReadPost", "BufNewFile", "BufWritePre" },
    config = function()
      -- 1. Ensure parsers are installed (Requires tree-sitter CLI on your host machine)
      local ok, ts = pcall(require, "nvim-treesitter")
      if ok then
        pcall(ts.install, { 
          "c", "cpp", "lua", "bash", "python", 
          "json", "markdown", "yaml" 
        })
      end

      -- 2. Start native Neovim Treesitter highlighting automatically
      vim.api.nvim_create_autocmd("FileType", {
        group = vim.api.nvim_create_augroup("treesitter_highlight", { clear = true }),
        callback = function(args)
          -- Start Treesitter, but fallback to standard syntax if it fails (e.g., missing parser)
          local started = pcall(vim.treesitter.start, args.buf)
          if not started then
            vim.bo[args.buf].syntax = "ON"
          end
        end,
      })

      -- 3. Enable native Treesitter code folding
      vim.opt.foldmethod = "expr"
      vim.opt.foldexpr = "v:lua.vim.treesitter.foldexpr()"
      vim.opt.foldlevel = 99
    end,
  },
}
