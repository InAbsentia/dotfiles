-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local wk = require("which-key")
wk.register({ ["<leader>d"] = { name = "+delete" } })
wk.register({ ["<leader>o"] = { name = "+org" } })
wk.register({ ["<leader>y"] = { name = "+clipboard" } })

-- <leader>{n} to move directly to window numbered {n}
for i = 1, 9 do
  local lhs = "<leader>" .. i
  local rhs = i .. "<c-w>w"
  vim.keymap.set("n", lhs, rhs, { desc = "Move To Window " .. i })
end

vim.keymap.set({ "n", "v" }, "<leader>w=", "<C-w>=", { desc = "Equalize Window Sizes" })

vim.keymap.set({ "n", "v" }, "<leader>fh", function()
  require("telescope.builtin").find_files({ hidden = true, no_ignore = true })
end, { desc = "Find Files (hidden/ignored)" })

vim.keymap.set({ "n", "v" }, "H", "^", { desc = "Move To Beginning Of Line" })
vim.keymap.set("n", "L", "$", { desc = "Move To End Of Line" })
vim.keymap.set("v", "L", "$<left>", { desc = "Move To End Of Line" })

-- Keep cursor position when concatenating next line
vim.keymap.set("n", "J", "mzJ`z")

-- Keep search results centered vertically
vim.keymap.set({ "n", "v" }, "<C-d>", "<C-d>zzzv")
vim.keymap.set({ "n", "v" }, "<C-u>", "<C-u>zzzv")
vim.keymap.set({ "n", "v" }, "n", "nzzzv")
vim.keymap.set({ "n", "v" }, "N", "Nzzzv")

-- Keep jumps centered vertically
-- vim.keymap.set({ "n", "v" }, "{", "{zzzv")
-- vim.keymap.set({ "n", "v" }, "}", "}zzzv")
vim.keymap.set({ "n", "v" }, "<C-i>", "<C-i>zzzv")
vim.keymap.set({ "n", "v" }, "<C-o>", "<C-o>zzzv")
vim.keymap.set({ "n", "v" }, "%", "%zzzv")
vim.keymap.set({ "n", "v" }, "*", "*zzzv")
vim.keymap.set({ "n", "v" }, "#", "#zzzv")

-- Replace selection without overwriting value in default register
vim.keymap.set("x", "<leader>p", [["_dP]], { desc = "Quietly Replace Selection" })

-- Delete selection without overwriting value in default register
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]], { desc = "Quietly Delete" })

vim.keymap.set("n", "Y", "y$", { desc = "Yank to end of line" })

vim.keymap.set("v", "<leader>y", [["+y]], { desc = "Yank To Clipboard" })
vim.keymap.set("v", "<leader>p", [["+p]], { desc = "Put From Clipboard" })

vim.keymap.set("n", "<leader>yt", [["+y]], { desc = "Yank To Motion" })
vim.keymap.set("n", "<leader>yy", [["+yy]], { desc = "Yank Line" })
vim.keymap.set("n", "<leader>yY", [["+y$]], { desc = "Yank Rest" })
vim.keymap.set("n", "<leader>yp", [["+p]], { desc = "Paste After" })
vim.keymap.set("n", "<leader>yP", [["+P]], { desc = "Paste Before" })

vim.keymap.set({ "n", "v" }, "<D-c>", [["+y]], { desc = "Yank To Clipboard" })
vim.keymap.set({ "n", "v" }, "<D-v>", [["+P]], { desc = "Paste Before From Clipboard" })
vim.keymap.set("c", "<D-v>", "<C-R>+", { desc = "Paste From Clipboard" })
vim.keymap.set("i", "<D-v>", [[<ESC>l"+Pli]], { desc = "Paste Before From Clipboard" })

vim.keymap.set({ "n", "v" }, "<D-s>", ":w<CR>", { desc = "Save Buffer" })
vim.keymap.set({ "n", "v" }, "<leader>fs", ":w<CR>", { desc = "Save Buffer" })
vim.keymap.set({ "n", "v" }, "<leader>fS", "<cmd>wa<cr>", { desc = "Save All" })

vim.keymap.set({ "n", "v" }, "<leader>qw", "<cmd>wqa<cr>", { desc = "Save All & Quit" })
