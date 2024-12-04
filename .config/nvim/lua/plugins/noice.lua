return {
  "folke/noice.nvim",
  event = "VeryLazy",
  opts = {
    -- add any options here
  },
  dependencies = {
    -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
    "MunifTanjim/nui.nvim",
    -- OPTIONAL:
    --   `nvim-notify` is only needed, if you want to use the notification view.
    --   If not available, we use `mini` as the fallback
    {
      "rcarriga/nvim-notify",
      opts = {
        -- I don't know why this value works...
        -- It acts like 3000, but anything over 1000 acts like 5000...
        timeout = 100,
      },
    },
    "hrsh7th/nvim-cmp",
  },
  keys = {
    {
      "<leader>ud",
      function()
        require("noice").cmd("dismiss")
      end,
      desc = "Dismiss All Notifications",
    },
    {
      "<leader>ul",
      function()
        require("noice").cmd("last")
      end,
      desc = "Show Last Notification",
    },
    {
      "<leader>ut",
      function()
        require("noice").cmd("telescope")
      end,
      desc = "Open Notification History",
    },
  },
  config = {
    lsp = {
      -- override markdown rendering so that **cmp** and other plugins use **Treesitter**
      override = {
        ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
        ["vim.lsp.util.stylize_markdown"] = true,
        ["cmp.entry.get_documentation"] = true, -- requires hrsh7th/nvim-cmp
      },
    },
    -- you can enable a preset for easier configuration
    presets = {
      command_palette = true, -- position the cmdline and popupmenu together
      long_message_to_split = true, -- long messages will be sent to a split
      -- inc_rename = false, -- enables an input dialog for inc-rename.nvim
      -- lsp_doc_border = false, -- add a border to hover docs and signature help
    },
  },
}
