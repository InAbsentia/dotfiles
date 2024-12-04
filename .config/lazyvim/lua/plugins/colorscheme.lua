return {
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "synthweave",
    },
  },
  {
    "samharju/synthweave.nvim",
    -- lazy = true,
    lazy = false,
    priority = 1000,
  },
  {
    "lettertwo/laserwave.nvim",
    lazy = true,
    -- priority = 1000,
  },
  {
    "catppuccin/nvim",
    lazy = true,
    -- priority = 1000,
    config = function()
      require("catppuccin").setup({
        flavour = "mocha",
      })
    end,
  },
  {
    "scottmckendry/cyberdream.nvim",
    lazy = true,
    -- priority = 1000,
    config = function()
      require("cyberdream").setup({
        transparent = true,
        italic_comments = true,
        hide_fillchars = true,
        borderless_telescope = true,
      })
    end,
  },
  {
    "bluz71/vim-moonfly-colors",
    name = "moonfly",
    lazy = true,
    -- lazy = false,
    -- priority = 1000,
  },
}
