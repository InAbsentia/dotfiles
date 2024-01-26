return {
  -- {
  --   "maxmx03/fluoromachine.nvim",
  --   config = function()
  --     local fm = require("fluoromachine")
  --
  --     fm.setup({
  --       glow = true,
  --       -- theme = "fluoromachine",
  --       theme = "retrowave",
  --       -- theme = "delta",
  --     })
  --   end,
  -- },
  -- {
  --   "JoosepAlviste/palenightfall.nvim",
  -- },
  {
    "catppuccin/nvim",
    config = function()
      require("catppuccin").setup({
        flavour = "mocha",
      })
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      -- colorscheme = "fluoromachine",
      colorscheme = "catppuccin",
    },
  },
}
