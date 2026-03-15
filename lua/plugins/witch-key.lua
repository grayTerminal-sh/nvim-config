-- lua/plugins/which-key.lua
return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  config = function()
    local wk = require("which-key")

    wk.setup({})

    -- Mappings sans <leader> : ff, fg, fb, fh, ww, etc.
    wk.register({
      f = {
        name = "+find",
        f = { "<cmd>Telescope find_files<cr>", "Find files" },
        g = { "<cmd>Telescope live_grep<cr>",  "Live grep" },
        b = { "<cmd>Telescope buffers<cr>",    "Buffers" },
        h = { "<cmd>Telescope help_tags<cr>",  "Help tags" },
      },
      w = {
        name = "+write",
        w = { "<cmd>w<cr>", "Write file" },
      },
    }, { prefix = "" })  -- important: pas de <leader>

    -- Et si tu veux aussi une section sous <leader>
    wk.register({
      f = {
        name = "+file",
        f = { "<cmd>Telescope find_files<cr>", "Find files" },
        g = { "<cmd>Telescope live_grep<cr>",  "Live grep" },
      },
    }, { prefix = "<leader>" })
  end,
}

