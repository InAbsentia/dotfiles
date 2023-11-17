-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

for i = 1, 9 do
  local lhs = "<leader>" .. i
  local rhs = i .. "<c-w>w"
  vim.keymap.set("n", lhs, rhs, { desc = "Move to window " .. i })
end

-- Move lines up and down
vim.keymap.set({ "n", "v" }, "<c-j>", ":m '>+1<CR>gv=gv", { desc = "Move line up" })
vim.keymap.set({ "n", "v" }, "<c-k>", ":m '<-2<CR>gv=gv", { desc = "Move line down" })

-- Keep cursor position when concatenating next line
vim.keymap.set("n", "J", "mzJ`z")

-- Keep search results centered vertically
vim.keymap.set({ "n", "v" }, "<C-d>", "<C-d>zz")
vim.keymap.set({ "n", "v" }, "<C-u>", "<C-u>zz")
vim.keymap.set({ "n", "v" }, "n", "nzzzv")
vim.keymap.set({ "n", "v" }, "N", "Nzzzv")

-- vim.keymap.set({ "n", "v" }, "{", "{zzzv")
-- vim.keymap.set({ "n", "v" }, "}", "}zzzv")

-- vim.keymap.set({ "n", "v" }, "j", "jzz")
-- vim.keymap.set({ "n", "v" }, "j", "jzz")

-- vim.keymap.set({ "n", "v" }, "k", "kzz")
-- vim.keymap.set({ "n", "v" }, "k", "kzz")

-- Replace selection without overwriting value in default register
vim.keymap.set("x", "<leader>p", [["_dP]], { desc = "Quietly replace selection" })

-- Delete selection without overwriting value in default register
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]], { desc = "Quietly delete" })

vim.keymap.set("n", "Y", "y$", { desc = "Yank to end of line" })

vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]], { desc = "Yank to clipboard" })
vim.keymap.set("n", "<leader>Y", [["+y$]], { desc = "Yank rest of line to clipboard" })
vim.keymap.set("n", "<leader>yy", [["+yy]], { desc = "Yank current line to clipboard" })

vim.keymap.set("n", "<leader>fs", ":w<CR>", { desc = "Save buffer" })
vim.keymap.set("n", "<D-s>", ":w<CR>", { desc = "Save buffer" })

vim.keymap.set({ "n", "v" }, "<D-c>", [["+y]], { desc = "Yank to clipboard" })
vim.keymap.set({ "n", "v" }, "<D-v>", [["+P]], { desc = "Paste from clipboard" })
vim.keymap.set("c", "<D-v>", "<C-R>+", { desc = "Paste from clipboard" })
vim.keymap.set("i", "<D-v>", [[<ESC>l"+Pli]], { desc = "Paste from clipboard" })
