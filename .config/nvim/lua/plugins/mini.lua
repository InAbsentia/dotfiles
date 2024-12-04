-- vim: ts=2 sts=2 sw=2 et

return {
  {
    -- Collection of various small independent plugins/modules
    --  Check out: https://github.com/echasnovski/mini.nvim
    "echasnovski/mini.nvim",
    config = function()
      -- Better Around/Inside textobjects
      require("mini.ai").setup({ n_lines = 500 })

      -- Add/delete/replace surroundings (brackets, quotes, etc.)
      require("mini.surround").setup()

      -- Text editing operators
      require("mini.operators").setup()

      -- Move any selection in any direction
      require("mini.move").setup()

      -- Auto-pairs
      require("mini.pairs").setup()

      -- Simple and easy statusline.
      local statusline = require("mini.statusline")
      statusline.setup({ use_icons = true })

      -- You can configure sections in the statusline by overriding their
      -- default behavior. For example, here we set the section for
      -- cursor location to LINE:COLUMN
      ---@diagnostic disable-next-line: duplicate-set-field
      statusline.section_location = function()
        return "%2l:%-2v"
      end
    end,
  },
}
