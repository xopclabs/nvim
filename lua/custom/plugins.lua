local plugins = {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        -- defaults
        "lua",
        "bash",
        "python",
        "css",
        "json",
        "markdown",
        "yaml",
      },
    },
  },

  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "prettier",
        "fixjson",
        "autopep8",
        "yamlfix",
        "xmlformatter",

        "flake8",
        "yamllint",
        "luacheck",
        "markdownlint",

        "json-lsp",
        "lua-language-server",
        "bash-language-server",
        "python-lsp-server",
        "yaml-language-server",
      },
    },
  },
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "jose-elias-alvarez/null-ls.nvim",
      config = function()
        require "custom.configs.null-ls"
      end,
    },
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },
  {
    "folke/which-key.nvim",
    config = function(_, opts)
      -- default config function's stuff
      dofile(vim.g.base46_cache .. "whichkey")
      vim.o.timeout = true
      vim.o.timeoutlen = 175
      require("which-key").setup(opts)
      require("which-key").register({
        f = { name = "find" },
        g = { name = "git" },
        t = { name = "buffers" },
        p = { name = "terminal" },
        w = { name = "which-key" },
      }, { prefix = "<leader>" })
    end,
  },
  {
    "nvim-telescope/telescope.nvim",
    opts = function()
      return require "custom.configs.telescope"
    end,
  },
  {
    "nvim-telescope/telescope-file-browser.nvim",
    cmd = "Telescope projects",
    dependencies = { "nvim-telescope/telescope.nvim" },
  },
  {
    "nvim-telescope/telescope-project.nvim",
    cmd = "Telescope file_browser",
    dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },
  },
  -- {
  --   'nosduco/remote-sshfs.nvim',
  --    lazy=false,
  --    cmd = {"RemoteSSHFSConnect", "RemoteSSHFSDisconnect", "RemoteSSHFSEdit", "RemoteSSHFSFindFiles", "RemoteSSHFSLiveGrep"},
  --    dependencies = { "nvim-telescope/telescope.nvim" },
  -- },
  {
    "mfussenegger/nvim-dap",
  },
  {
    "lambdalisue/suda.vim",
    cmd = { "SudaRead", "SudaWrite" }
  },
}

return plugins
