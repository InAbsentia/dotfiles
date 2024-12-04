-- vim: ts=2 sts=2 sw=2 et

return {
  { -- Fuzzy Finder (files, lsp, etc)
    "nvim-telescope/telescope.nvim",
    event = "VimEnter",
    branch = "0.1.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      { -- If encountering errors, see telescope-fzf-native README for installation instructions
        "nvim-telescope/telescope-fzf-native.nvim",
        build = "make",
        cond = function()
          return vim.fn.executable("make") == 1
        end,
      },
      { "nvim-telescope/telescope-ui-select.nvim" },
      { "nvim-tree/nvim-web-devicons", enabled = true },
    },
    config = function()
      -- Telescope is a fuzzy finder that comes with a lot of different things that
      -- it can fuzzy find! It's more than just a "file finder", it can search
      -- many different aspects of Neovim, your workspace, LSP, and more!
      --
      -- The easiest way to use Telescope, is to start by doing something like:
      --  :Telescope help_tags
      --
      -- After running this command, a window will open up and you're able to
      -- type in the prompt window. You'll see a list of `help_tags` options and
      -- a corresponding preview of the help.
      --
      -- Two important keymaps to use while in Telescope are:
      --  - Insert mode: <c-/>
      --  - Normal mode: ?
      --
      -- This opens a window that shows you all of the keymaps for the current
      -- Telescope picker. This is really useful to discover what Telescope can
      -- do as well as how to actually do it!

      -- [[ Configure Telescope ]]
      -- See `:help telescope` and `:help telescope.setup()`
      require("telescope").setup({
        -- You can put your default mappings / updates / etc. in here
        --  All the info you're looking for is in `:help telescope.setup()`
        --
        defaults = {
          mappings = {
            i = { ["<c-enter>"] = "to_fuzzy_refine" },
          },
        },
        -- pickers = {}
        extensions = {
          ["ui-select"] = {
            require("telescope.themes").get_dropdown(),
          },
        },
      })

      -- Enable Telescope extensions if they are installed
      pcall(require("telescope").load_extension, "fzf")
      pcall(require("telescope").load_extension, "ui-select")
      pcall(require("telescope").load_extension, "noice")

      -- See `:help telescope.builtin`
      local builtin = require("telescope.builtin")

      vim.keymap.set("n", "<leader><leader>", builtin.find_files, { desc = "Find Files" })
      vim.keymap.set("n", "<leader>,", builtin.buffers, { desc = "Find Buffers" })
      vim.keymap.set("n", "<leader>/", builtin.live_grep, { desc = "Search All Files" })
      vim.keymap.set("n", "<leader>:", builtin.command_history, { desc = "Search Previous Commands" })

      vim.keymap.set("n", "<leader>bf", builtin.buffers, { desc = "Find Buffers" })
      vim.keymap.set("n", "<leader>bs", function()
        builtin.spell_suggest(require("telescope.themes").get_cursor({}))
      end, { desc = "Spelling Suggestions" })

      vim.keymap.set("n", "<leader>fc", function()
        builtin.find_files({ cwd = vim.fn.stdpath("config") })
      end, { desc = "Find Neovim Config Files" })
      vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Find Files" })
      vim.keymap.set({ "n", "v" }, "<leader>fh", function()
        builtin.find_files({ hidden = true, no_ignore = true })
      end, { desc = "Find Files (hidden/ignored)" })
      vim.keymap.set("n", "<leader>fr", builtin.oldfiles, { desc = "Find Recent Files" })

      vim.keymap.set("n", "<leader>sb", function()
        builtin.current_buffer_fuzzy_find({ previewer = false })
      end, { desc = "Search Current Buffer" })
      vim.keymap.set("n", "<leader>sc", builtin.command_history, { desc = "Search Previous Commands" })
      vim.keymap.set("n", "<leader>sC", builtin.commands, { desc = "Search All Commands" })
      vim.keymap.set("n", "<leader>sd", builtin.diagnostics, { desc = "Search Diagnostics" })
      vim.keymap.set("n", "<leader>sh", builtin.help_tags, { desc = "Search Help" })
      vim.keymap.set("n", "<leader>sk", builtin.keymaps, { desc = "Search Keymaps" })
      vim.keymap.set("n", "<leader>sr", builtin.resume, { desc = "Search Resume" })
      vim.keymap.set("n", "<leader>st", builtin.builtin, { desc = "Search Telescope" })
      vim.keymap.set("n", "<leader>sw", builtin.grep_string, { desc = "Search Current Word" })
      vim.keymap.set("n", [[<leader>s"]], builtin.registers, { desc = "Search Registers" })
      vim.keymap.set("n", "<leader>s/", function()
        builtin.live_grep({ grep_open_files = true, prompt_title = "Search Open Files" })
      end, { desc = "Search Open Files" })
    end,
  },
}
