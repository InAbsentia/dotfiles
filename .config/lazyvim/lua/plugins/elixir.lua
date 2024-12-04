return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, {
        "elixir",
        "heex",
        "eex",
      })
    end,
  },
  {
    -- "elixir-tools/elixir-tools.nvim",
    "inabsentia/elixir-tools.nvim",
    version = "*",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      local elixir = require("elixir")
      local elixirls = require("elixir.elixirls")

      elixir.setup({
        nextls = {
          enable = false,
          -- enable = true,
          init_options = {
            -- mix_env = "dev",
            -- mix_target = "host",
            experimental = {
              -- completions = {
              --   enable = true,
              -- },
            },
          },
          on_attach = function(client, bufnr)
            -- custom keybinds
          end,
        },
        credo = { enable = true },
        elixirls = {
          -- enable = false,
          enable = true,
          -- tag = "v0.22.0",
          settings = elixirls.settings({
            dialyzerEnabled = true,
            incrementalDialyzer = true,
            enableTestLenses = false,
            suggestSpecs = false,
          }),
          on_attach = function(client, bufnr)
            vim.keymap.set("n", "<space>cnp", ":ElixirFromPipe<cr>", { buffer = true, noremap = true })
            vim.keymap.set("n", "<space>cnP", ":ElixirToPipe<cr>", { buffer = true, noremap = true })
            vim.keymap.set("v", "<space>cnM", ":ElixirExpandMacro<cr>", { buffer = true, noremap = true })
          end,
        },
      })
    end,
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
  },
  {
    "nvim-neotest/neotest",
    optional = true,
    dependencies = {
      "jfpedroza/neotest-elixir",
    },
    opts = {
      adapters = {
        ["neotest-elixir"] = {},
      },
    },
  },
}
