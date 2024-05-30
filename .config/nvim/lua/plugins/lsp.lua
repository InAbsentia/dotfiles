return {
  {
    "williamboman/mason.nvim",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, {
        "elm-format",
        "elm-language-server",
        "erlang-ls",
        "graphql-language-service-cli",
        "html-lsp",
        "js-debug-adapter",
        "lua-language-server",
        "markdown-toc",
        "markdownlint",
        "prettier",
        "rust-analyzer",
        "rustfmt",
        "shfmt",
        "sqlls",
        "standardjs",
        "stylua",
        "tailwindcss-language-server",
        "taplo",
      })
    end,
  },
}
