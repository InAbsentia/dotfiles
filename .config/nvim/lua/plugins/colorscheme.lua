return {
  {
    "maxmx03/fluoromachine.nvim",
    config = function()
      local fm = require("fluoromachine")

      fm.setup({
        glow = true,
        -- theme = "fluoromachine",
        theme = "retrowave",
        -- theme = "delta",
      })
    end,
  },
  {
    "JoosepAlviste/palenightfall.nvim",
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "fluoromachine",
    },
  },
}
