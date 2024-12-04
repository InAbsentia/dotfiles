return {
  { -- Useful plugin to show you pending keybinds.
    "folke/which-key.nvim",
    event = "VimEnter", -- Sets the loading event to 'VimEnter'
    config = function() -- This is the function that runs, AFTER loading
      require("which-key").setup()

      -- Document existing key chains
      require("which-key").add({
        { "<leader>b", group = "Buffer" },
        { "<leader>c", group = "Code" },
        { "<leader>cl", group = "LSP" },
        { "<leader>f", group = "File" },
        { "<leader>g", group = "Git" },
        { "<leader>q", group = "Session" },
        { "<leader>s", group = "Search" },
        { "<leader>t", group = "Toggle" },
        { "<leader>u", group = "UI" },
        { "<leader>w", group = "Window" },
        { "<leader>y", group = "Yank" },
      })
    end,
  },
}

-- vim: ts=2 sts=2 sw=2 et
