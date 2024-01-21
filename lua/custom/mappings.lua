local M = {}


-- Disabled defaults
M.disabled = {
  n = {
      ["<leader>fo"] = "",
      ["<leader>fb"] = "",
      ["<leader>b"] = "",
      ["<leader>x"] = "",
      ["<leader>t"] = "",
      ["<leader>th"] = "",
      ["<leader>/"] = "",
  },
  v = {
      ["<leader>/"] = "",
  }
}

M.general = {
  i = {
    ["<C-v>"] = {'<ESC>"+pa', "Paste clipboard"},
    ["<C-BS>"] = {'<C-W>', "Delete last word"},
  },
  v = {
    ["<C-c>"] = {'"+y', "Copy selection to clipboard"},
  }
}

-- Telescope finds
M.telescope = {
  n = {
    ["<leader>fp"] = { "<cmd> Telescope project <CR>", "Find project" },
    ["<leader>fr"] = { "<cmd> Telescope oldfiles <CR>", "Find recent files" },
    ["<leader>fb"] = { "<cmd> Telescope file_browser path=%:p:h select_buffer=true <CR>", "Browse files" },
    ["<leader>ft"] = { "<cmd> Telescope<CR>", "Find Telescope action" },
  },
}

-- Buffer configuration
M.buffer = {
  n = {
    ["<leader>tn"] = { "<cmd> enew <CR>", "New buffer" },
    ["<leader>tf"] = { "<cmd> Telescope buffers <CR>", "Find buffers" },
    ["<leader>td"] = {
      function()
        require("nvchad_ui.tabufline").close_buffer()
      end,
      "Close buffer",
    },
  },
}

-- Commenting
M.comment = {
  plugin = true,

  -- toggle comment in both modes
  n = {
    ["<C-/>"] = {
      function()
        require("Comment.api").toggle.linewise.current()
      end,
      "Toggle comment",
    },
  },

  v = {
    ["<C-/>"] = {
      "<ESC><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<CR>",
      "Toggle comment",
    },
  },
}

-- LSP
M.lspconfig = {
  plugin = true,
  n = {
    ["<leader>cf"] = {
      function()
        vim.lsp.buf.format { async = true }
      end,
      "LSP formatting",
    },
  },
}
return M
