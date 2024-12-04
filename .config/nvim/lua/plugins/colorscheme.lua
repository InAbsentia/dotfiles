return {
	{
		"samharju/synthweave.nvim",
		init = function()
			vim.cmd.colorscheme("synthweave")

			-- You can configure highlights by doing something like:
			vim.cmd.hi("Comment gui=none")
		end,
	},
	{
		"lettertwo/laserwave.nvim",
		lazy = true,
		-- priority = 1000,
		-- init = function()
		--   vim.cmd.colorscheme 'laserwave'
		--
		--   -- You can configure highlights by doing something like:
		--   vim.cmd.hi 'Comment gui=none'
		-- end,
	},
	{
		"catppuccin/nvim",
		lazy = true,
		-- priority = 1000,
		config = function()
			require("catppuccin").setup({
				flavour = "mocha",
			})
		end,
		-- init = function()
		--   vim.cmd.colorscheme 'catppuccin'
		--
		--   -- You can configure highlights by doing something like:
		--   vim.cmd.hi 'Comment gui=none'
		-- end,
	},
	{
		"scottmckendry/cyberdream.nvim",
		lazy = true,
		-- priority = 1000,
		config = function()
			require("cyberdream").setup({
				transparent = true,
				italic_comments = true,
				hide_fillchars = true,
				borderless_telescope = true,
			})
		end,
		-- init = function()
		--   vim.cmd.colorscheme 'cyberdream'
		--
		--   -- You can configure highlights by doing something like:
		--   vim.cmd.hi 'Comment gui=none'
		-- end,
	},
	{
		"bluz71/vim-moonfly-colors",
		name = "moonfly",
		priority = 1000,
		-- init = function()
		-- 	vim.cmd.colorscheme("moonfly")
		--
		-- 	-- You can configure highlights by doing something like:
		-- 	vim.cmd.hi("Comment gui=none")
		-- end,
	},
}
