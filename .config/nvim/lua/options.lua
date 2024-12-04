-- See `:help vim.opt`
--  For more options, you can see `:help option-list`

local opt = vim.opt

-- LSP autoformat?
vim.g.autoformat = true

-- Autosave on a number of actions
-- https://vimdoc.sourceforge.net/htmldoc/options.html#'autowriteall'
opt.autowriteall = true

-- Autoread when file changed outside nvim
-- https://vimdoc.sourceforge.net/htmldoc/options.html#'autoread'
opt.autoread = true

-- Make relative line numbers default
opt.number = true
opt.relativenumber = true

-- Tab sizes
opt.tabstop = 2
opt.expandtab = true -- Tabs to spaces
opt.shiftwidth = 2 -- Size of an indent
opt.shiftround = true -- Round indent

-- Enable mouse mode, can be useful for resizing splits for example!
opt.mouse = "a"

opt.virtualedit = "block"

-- Don't show the mode, since it's already in the status line
opt.showmode = false

-- Don't sync clipboard between OS and Neovim.
--  See `:help 'clipboard'`
opt.clipboard = ""

opt.completeopt = "menu,menuone,noselect"
opt.jumpoptions = "view"

-- Use rg for grepping
opt.grepformat = "%f:%l:%c:%m"
opt.grepprg = "rg --vimgrep"

-- Enable break indent
opt.breakindent = true
opt.linebreak = true

opt.smartindent = true

-- Save undo history
opt.undofile = true

-- Case-insensitive searching UNLESS \C or one or more capital letters in the
-- search term
opt.ignorecase = true
opt.smartcase = true

-- Keep signcolumn on by default
opt.signcolumn = "yes"

-- Decrease update time
opt.updatetime = 250

-- Decrease mapped sequence wait time
-- Displays which-key popup sooner
opt.timeoutlen = 300

-- Configure how new splits should be opened
opt.splitright = true
opt.splitbelow = true
opt.splitkeep = "screen"

-- Sets how neovim will display certain whitespace characters in the editor.
--  See `:help 'list'`
--  and `:help 'listchars'`
opt.list = true
opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" }

-- Preview substitutions live, as you type!
opt.inccommand = "nosplit"

-- Show which line your cursor is on
opt.cursorline = true

-- Minimal number of screen lines to keep above, below, and to the side of the
-- cursor.
opt.scrolloff = 12
opt.sidescrolloff = 8
