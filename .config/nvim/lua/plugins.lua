require("lazy").setup({
  -- NOTE: Plugins can be added with a link (or for a github repo: 'owner/repo' link).
  -- NOTE: Plugins can also be added by using a table,
  -- with the first argument being the link and the following
  -- keys can be used to configure plugin behavior/loading/etc.
  --
  -- Use `opts = {}` to force a plugin to be loaded.
  --
  -- modular approach: using `require 'path/name'` will
  -- include a plugin definition from file lua/path/name.lua

  "tpope/vim-sleuth", -- Detect tabstop and shiftwidth automatically

  require("plugins.autopairs"),
  require("plugins.cmp"),
  require("plugins.colorscheme"),
  require("plugins.conform"),
  require("plugins.explore"),
  require("plugins.git"),
  require("plugins.indent_line"),
  require("plugins.lspconfig"),
  require("plugins.luarocks"),
  require("plugins.md-preview"),
  require("plugins.mini"),
  require("plugins.noice"),
  require("plugins.output-panel"),
  require("plugins.telescope"),
  require("plugins.todo-comments"),
  require("plugins.treesitter"),
  require("plugins.which-key"),

  require("plugins.lang.elixir"),
}, {
  ui = {
    icons = {},
    -- If you are using a Nerd Font: set icons to an empty table which will use the
    -- default lazy.nvim defined Nerd Font icons, otherwise define a unicode icons table
    -- icons = vim.g.have_nerd_font and {} or {
    --   cmd = '⌘',
    --   config = '🛠',
    --   event = '📅',
    --   ft = '📂',
    --   init = '⚙',
    --   keys = '🗝',
    --   plugin = '🔌',
    --   runtime = '💻',
    --   require = '🌙',
    --   source = '📄',
    --   start = '🚀',
    --   task = '📌',
    --   lazy = '💤 ',
    -- },
  },
})

-- vim: ts=2 sts=2 sw=2 et
