local telescope = require "plugins.configs.telescope"
local options = {
  defaults = {
  },
  extensions = {
    file_browser = {
      hijack_netrw = false,
    },
  },
  extensions_list = { "themes", "terms", "project", "file_browser" },
}
return vim.tbl_deep_extend("force", telescope, options)
