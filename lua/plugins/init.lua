return {
  {
    "stevearc/conform.nvim",
    event = "BufWritePre", -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  {
    "lervag/vimtex",
    lazy = false, -- we don't want to lazy load VimTeX
    -- tag = "v2.15", -- uncomment to pin to a specific release
    init = function()
      -- VimTeX configuration goes here, e.g.
      vim.g.vimtex_view_method = "zathura"
    end,
  },
  {
    "okuuva/auto-save.nvim",
    cmd = "ASToggle", -- optional for lazy loading on command
    event = { "InsertLeave", "TextChanged" }, -- optional for lazy loading on trigger events
    opts = {
      -- your config goes here
      -- or just leave it empty :)
    },
  },
  {
    "github/copilot.vim",
    lazy=false,
    init = function()

    vim.g.copilot_no_tab_map = true
    vim.g.copilot_assume_mapped = true
    vim.api.nvim_set_keymap("i", "<C-Q>", 'copilot#Accept("<CR>")', { silent = true, expr = true })
      end,


  }

  -- {
  --   "nvim-treesitter/nvim-treesitter",
  --  opts = {
  --      ensure_installed = {
  --        "vim", "lua", "vimdoc",
  --        "html", "css", "latex"
  --      },
  --    },
  --  }
}
