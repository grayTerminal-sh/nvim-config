return {
  {
    "nvim-mini/mini.starter",
    version = false,
    config = function()
      local starter = require("mini.starter")

      starter.setup({
        autoopen = true,
        header = table.concat({
          "Repo to Pentester",
          "",
          "From zero to junior pentester – Neovim wiki",
          "",
        }, "\n"),
        items = {
          starter.sections.recent_files(5),

          {
            name = "Open CyberSec Wiki",
            action = "edit ~/wiki/index.md",  -- adapte le chemin
            section = "Wiki",
          },
          {
            name = "Telescope File Browser",
            action = "lua require('telescope').extensions.file_browser.file_browser()",
            section = "Telescope",
          },
          {
            name = "Open Nvim config",
            action = "edit ~/.config/nvim/init.lua",
            section = "Config",
          },
          {
            name = "Quit",
            action = "quit",
            section = "Actions",
          },
        },
        footer = "Happy hacking – from repo to pentester",
      })
    end,
  },
}

