function _G.get_oil_winbar()
  local bufnr = vim.api.nvim_win_get_buf(vim.g.statusline_winid)
  local dir = require("oil").get_current_dir(bufnr)
  if dir then
    return vim.fn.fnamemodify(dir, ":~")
  else
    -- If there is no current directory (e.g. over ssh), just show the buffer name
    return vim.api.nvim_buf_get_name(0)
  end
end

local show_detail = false

return {
  {
    "stevearc/oil.nvim",
    lazy = false,
    opts = {
      win_options = {
        winbar = "%!v:lua.get_oil_winbar()",
      },
      keymaps = {
        ["q"] = "actions.close",
        ["gh"] = {
          desc = "Toggle hidden files",
          callback = function()
            require("oil").toggle_hidden()
          end,
        },
        ["gd"] = {
          desc = "Toggle file detail view",
          callback = function()
            show_detail = not show_detail
            if show_detail then
              require("oil").set_columns({ "permissions", "size", "mtime", "icon" })
            else
              require("oil").set_columns({ "icon" })
            end
          end,
        },
      },
    },
    keys = {
      { "<leader>e", "<cmd>Oil --float<cr>", desc = "Open Oil File Explorer" },
    },
    -- Optional dependencies
    dependencies = { "echasnovski/mini.icons" },
  },
}

-- vim: ts=2 sts=2 sw=2 et
