return {
  { -- Autoformat
    "stevearc/conform.nvim",
    event = { "BufWritePre" },
    cmd = { "ConformInfo" },
    keys = {
      {
        "<leader>cf",
        function()
          require("conform").format({ async = true, lsp_fallback = true })
        end,
        mode = "",
        desc = "Format buffer",
      },
    },
    opts = {
      notify_on_error = true,
      format_on_save = function(bufnr)
        -- Disable "format_on_save lsp_fallback" for languages that don't
        -- have a well standardized coding style. You can add additional
        -- languages here or re-enable it for the disabled ones.
        local disable_filetypes = { c = true, cpp = true }
        return {
          timeout_ms = 500,
          lsp_fallback = not disable_filetypes[vim.bo[bufnr].filetype],
        }
      end,
      formatters_by_ft = {
        elixir = { "mix" },
        heex = { "mix" },
        javascript = { "prettier", "standardjs" },
        lua = { "stylua" },
        rust = { "rustfmt" },
        toml = { "taplo" },
        typescript = { "prettier", "ts-standard" },
        yaml = { "yamlfmt" },
        ["_"] = { "trim_whitespace", "trim_newlines" },
      },
      formatters = {
        ["ts-standard"] = function(_bufnr)
          local util = require("conform.util")

          return {
            meta = {
              url = "https://standardjs.com",
              description = "Typescript Standard style guide, linter, and formatter.",
            },
            command = util.from_node_modules("ts-standard"),
            args = { "--fix", "--stdin" },
          }
        end,
      },
    },
  },
}
-- vim: ts=2 sts=2 sw=2 et
