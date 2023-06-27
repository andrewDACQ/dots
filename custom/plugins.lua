local plugins = {
  -- Tpope 🙏🏻
  {"tpope/vim-fugitive", lazy = false},
  {"tpope/vim-surround", lazy = false},

  -- mason settings
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "lua-language-server",
        "html-lsp",
        "prettier",
        "stylua",
        "rustfmt",
        "rust-analyzer",
        -- shell 
        "shellcheck",
      },
    },
  },

  -- treesitter settings
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        -- defaults
        "vim",
        "lua",

        -- web dev
        "html",
        "css",
        "javascript",
        "typescript",
        "tsx",
        "json",
        "vue",
        "svelte",

        -- low languages
        "c",
        "zig",
        "rust",
      }
    }
  },

  -- lspconfig settings
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "jose-elias-alvarez/null-ls.nvim",
      config = function ()
        require "custom.configs.null-ls"
      end,
    },
    config = function ()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },

}
return plugins

