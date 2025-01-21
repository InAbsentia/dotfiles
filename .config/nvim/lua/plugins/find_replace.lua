return {
  {
    "MagicDuck/grug-far.nvim",
    keys = {
      { "<leader>sR", "<cmd>GrugFar<cr>", desc = "Search and replace" },
    },
    config = function()
      require("grug-far").setup({
        -- engine = 'ripgrep' is default, but 'astgrep' can be specified
      })
    end,
  },
}
