return {
  "mhanberg/output-panel.nvim",
  version = "*",
  event = "VeryLazy",
  keys = {
    { "<leader>clo", ":OutputPanel<cr>", { desc = "Open LSP Output" } },
  },
  config = function()
    require("output_panel").setup({})
  end,
}
