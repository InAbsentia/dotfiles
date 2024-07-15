return {
  {
    "stevearc/oil.nvim",
    lazy = false,
    opts = {
      keymaps = {
        ["q"] = "actions.close",
      },
    },
    keys = {
      { "<leader>e", "<cmd>Oil --float<cr>", desc = "Open Oil File Explorer" },
    },
    -- Optional dependencies
    dependencies = { "echasnovski/mini.icons" },
  },
}
