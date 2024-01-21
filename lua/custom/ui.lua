local ui = {
  theme = "nord",
  statusline = {
    theme = "default",
    separator_style = "block",
    overriden_modules = nil,
  },

  tabufline = {
    lazyload = true,
    overriden_modules = function()
      local tabufline = require "nvchad_ui.tabufline"
      return {
        buttons = function()
          return ""
        end,
      }
    end,
  },

  nvdash = {
    load_on_startup = true,
    header = {
      "               ▒▒▒▒▒▒▒▒▒                           ",
      "            ▒▒▒         ▒▒                         ",
      "          ▒▒              ▓▓▓                      ",
      "     ▒▒▒▒▒▒▒▓▓▒    █████  ▓▓▓                      ",
      "   ▓▓░░░░░░░▒▒▒▓▓       ░░▓▓▓         ▒▒▒▒▒▒▒▒▒    ",
      "     ▓▓▓▓▓▓▓▓▓▓       ░░░░▓▓▓    ▒▒▒▒▒     ░░▓▓    ",
      "          ▒▒            ░░▒▒▒▒▒▒▒░░░    ░░░░░▓▓    ",
      "          ▒▒                     ░░░▒▒░░░░░░░▓▓    ",
      "          ▒▒                 ░░░░░░░▓▓░░░░░░░▓▓    ",
      "            ▓▓▒           ░░░░░░░░░░▓▓░░░░░▓▓      ",
      "               ▓▓░░░░░░░░░░░░░░░░░░░░░░░▓▓▓        ",
      "                 ▓▓░░░░░░░░░░░░░░░░░▓▓▓▓           ",
      "                   ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓               ",
      "                      ▓▓       ▓▓                  ",
      "                   ▓▓▓  ▓▓   ▓▓  ▓▓▓               ",
      "                                                   ",
    },

    buttons = {
      { "  Find File", "Spc f f", "Telescope find_files" },
      { "  Recent Files", "Spc f r", "Telescope oldfiles" },
      { "  Find Word", "Spc f w", "Telescope live_grep" },
      { "  Bookmarks", "Spc b m", "Telescope marks" },
      { "  Themes", "Spc t h", "Telescope themes" },
      { "  Mappings", "Spc c h", "NvCheatsheet" },
    },
  },
}

return ui
