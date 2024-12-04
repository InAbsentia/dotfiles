return {
  "iamcco/markdown-preview.nvim",
  cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
  ft = { "markdown" },
  build = function()
    vim.fn["mkdp#util#install"]()
  end,
  keys = {
    { "<leader>cp", "<cmd>MarkdownPreviewToggle<cr>", { "n", "v" }, desc = "Toggle Markdown Preview" },
  },
}
