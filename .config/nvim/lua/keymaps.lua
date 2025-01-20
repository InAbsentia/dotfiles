-- [[ Basic Keymaps ]]
--  See `:help vim.keymap.set()`

local opt = vim.opt
local map = vim.keymap.set

-- Set highlight on search, but clear on pressing <Esc> in normal mode
opt.hlsearch = true
map({ "i", "n" }, "<esc>", "<cmd>noh<cr><esc>", { desc = "Escape and Clear hlsearch" })

-- better up/down
map({ "n", "x" }, "j", "v:count == 0 ? 'gj' : 'j'", { desc = "Down", expr = true, silent = true })
map({ "n", "x" }, "<Down>", "v:count == 0 ? 'gj' : 'j'", { desc = "Down", expr = true, silent = true })
map({ "n", "x" }, "k", "v:count == 0 ? 'gk' : 'k'", { desc = "Up", expr = true, silent = true })
map({ "n", "x" }, "<Up>", "v:count == 0 ? 'gk' : 'k'", { desc = "Up", expr = true, silent = true })

-- better indenting
map("v", "<", "<gv")
map("v", ">", ">gv")

map({ "n", "v" }, "<leader>l", "<cmd>Lazy<cr>", { desc = "Lazy" })

-- https://github.com/mhinz/vim-galore#saner-behavior-of-n-and-n
map("n", "n", "'Nn'[v:searchforward].'zzzv'", { expr = true, desc = "Next Search Result" })
map("x", "n", "'Nn'[v:searchforward]", { expr = true, desc = "Next Search Result" })
map("o", "n", "'Nn'[v:searchforward]", { expr = true, desc = "Next Search Result" })
map("n", "N", "'nN'[v:searchforward].'zzzv'", { expr = true, desc = "Prev Search Result" })
map("x", "N", "'nN'[v:searchforward]", { expr = true, desc = "Prev Search Result" })
map("o", "N", "'nN'[v:searchforward]", { expr = true, desc = "Prev Search Result" })

-- Window management
map("n", "<leader>wd", "<c-w>q", { desc = "Kill window" })
map("n", "<leader>wq", "<c-w>q", { desc = "Kill window" })
map("n", "<leader>ws", "<c-w>s", { desc = "Split horizontally" })
map("n", "<leader>wv", "<c-w>v", { desc = "Split vertically" })
map({ "n", "v" }, "<leader>w=", "<C-w>=", { desc = "Equalize Window Sizes" })

-- Buffer management
map("n", "<leader>bb", "<cmd>e #<cr>", { desc = "Switch to Other Buffer" })
map("n", "<leader>bd", UIUtils.bufremove, { desc = "Delete buffer" })
map("n", "<leader>bn", "<cmd>bnext<cr>", { desc = "Next Buffer" })
map("n", "<leader>bp", "<cmd>bprevious<cr>", { desc = "Prev Buffer" })

-- <leader>{n} to move directly to window numbered {n}
for i = 1, 9 do
  local lhs = "<leader>" .. i
  local rhs = i .. "<c-w>w"
  map("n", lhs, rhs, { desc = "Window " .. i })
end

map({ "n", "v" }, "H", "^", { desc = "Go To Beginning Of Line" })
map("n", "L", "$", { desc = "Go To End Of Line" })
map("v", "L", "$<left>", { desc = "Go To End Of Line" })

-- Move Lines (handled by mini.move)
-- map("n", "<A-j>", "<cmd>m .+1<cr>==", { desc = "Move Down" })
-- map("n", "<A-k>", "<cmd>m .-2<cr>==", { desc = "Move Up" })
-- map("i", "<A-j>", "<esc><cmd>m .+1<cr>==gi", { desc = "Move Down" })
-- map("i", "<A-k>", "<esc><cmd>m .-2<cr>==gi", { desc = "Move Up" })
-- map("v", "<A-j>", ":m '>+1<cr>gv=gv", { desc = "Move Down" })
-- map("v", "<A-k>", ":m '<-2<cr>gv=gv", { desc = "Move Up" })

-- Keep cursor position when concatenating next line
map("n", "J", "mzJ`z")

-- Keep jumps centered vertically
map({ "n", "v" }, "<C-i>", "<C-i>zzzv")
map({ "n", "v" }, "<C-o>", "<C-o>zzzv")
map({ "n", "v" }, "%", "%zzzv")
map({ "n", "v" }, "*", "*zzzv")
map({ "n", "v" }, "#", "#zzzv")

-- Replace selection without overwriting value in default register
map("x", "<leader>p", [["_dP]], { desc = "Quietly Replace Selection" })

-- Delete selection without overwriting value in default register
map({ "n", "v" }, "<leader>d", [["_d]], { desc = "Quietly Delete" })

map("n", "Y", "y$", { desc = "Yank to end of line" })

map("v", "<leader>yp", [["+p]], { desc = "Put From Clipboard" })
map("v", "<leader>yy", [["+y]], { desc = "Yank To Clipboard" })
map("n", "<leader>ym", [["+y]], { desc = "Yank Motion" })
map("n", "<leader>yy", [["+yy]], { desc = "Yank Line" })
map("n", "<leader>yY", [["+y$]], { desc = "Yank Rest" })
map("n", "<leader>yp", [["+p]], { desc = "Paste After" })
map("n", "<leader>yP", [["+P]], { desc = "Paste Before" })

map({ "n", "v" }, "<D-c>", [["+y]], { desc = "Copy To Clipboard" })
map({ "n", "v" }, "<D-v>", [["+P]], { desc = "Paste Before From Clipboard" })
map("i", "<D-v>", [[<ESC>l"+Pli]], { desc = "Paste Before From Clipboard" })
map("c", "<D-v>", "<C-R>+", { desc = "Paste From Clipboard" })

map("n", "<leader>fn", "<cmd>enew<cr>", { desc = "New File" })
map({ "n", "v" }, "<D-s>", ":w<CR>", { desc = "Save File" })
map({ "n", "v" }, "<leader>fs", ":w<CR>", { desc = "Save File" })
map({ "n", "v" }, "<leader>fS", "<cmd>wa<cr>", { desc = "Save All" })

map({ "n", "v" }, "<leader>qq", "<cmd>qa<cr>", { desc = "Quit" })
map({ "n", "v" }, "<leader>qw", "<cmd>wqa<cr>", { desc = "Save All & Quit" })

-- map({ "n", "v" }, "<leader>ud", function()
--   require("notify").dismiss({ silent = true, pending = true })
-- end, { desc = "Dismiss All Notifications" })
-- map({ "n", "v" }, "<leader>ul", function()
--   require("noice").cmd("last")
-- end, { desc = "Show Last Notification" })
-- map({ "n", "v" }, "<leader>ut", function()
--   require("noice").cmd("telescope")
-- end, { desc = "Open Notification History" })
