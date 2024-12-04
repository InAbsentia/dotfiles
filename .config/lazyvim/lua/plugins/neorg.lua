return {
  {
    "hrsh7th/nvim-cmp",
    opts = function(_, opts)
      vim.list_extend(opts.sources, { name = "neorg" })
    end,
  },
  {
    "nvim-neorg/neorg",
    dependencies = { "luarocks.nvim", "nvim-lua/plenary.nvim", "nvim-neorg/neorg-telescope" },
    lazy = false,
    version = "*",
    ft = "norg", -- lazy load on file type
    cmd = "Neorg", -- lazy load on command
    config = function()
      require("neorg").setup({
        load = {
          ["core.defaults"] = {}, -- Loads default behaviour
          ["core.concealer"] = {}, -- Adds pretty icons to your documents
          ["core.completion"] = {
            config = {
              engine = "nvim-cmp",
            },
          },
          ["core.dirman"] = { -- Manages Neorg workspaces
            config = {
              workspaces = {
                notes = "~/Documents/neorg/notes",
                engage = "~/Documents/neorg/engage",
              },
              default = "notes",
            },
          },
          ["core.integrations.telescope"] = {},
        },
      })
    end,
    keys = {
      { "<leader>ow", "<cmd>Telescope neorg switch_workspace<cr>", desc = "Workspace" },
    },
  },
}
