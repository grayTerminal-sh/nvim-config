return {
  {
    "echasnovski/mini.map",
    branch = "stable",
    config = function()
      local map = require("mini.map")
      map.setup({
        symbols = {
          encode = map.gen_encode_symbols.dot("4x2"),
        },
        integrations = {
          map.gen_integration.builtin_search(),
          map.gen_integration.diagnostic(),
          map.gen_integration.gitsigns(),
        },
      })

      -- Ouvre la minimap automatiquement sur les fichiers normaux
      vim.api.nvim_create_autocmd("BufWinEnter", {
        callback = function(args)
          if vim.bo[args.buf].buftype == "" then
            map.open()
          end
        end,
      })
    end,
  },
}

