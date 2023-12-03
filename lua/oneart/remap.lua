vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("v", "p", '"_dP', { desc = "Copy without overwriting clipboard" }) -- copy without overwriting clipboard

vim.keymap.set("n", "<leader>w", ":w<CR>", { desc = "Save" })
vim.keymap.set("n", "<leader>q", ":q<CR>", { desc = "Close" })

vim.keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" }) -- increment
vim.keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" }) -- decrement

vim.keymap.set("n", "leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
vim.keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
vim.keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
vim.keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window

vim.keymap.set("v", "<leader>jq", ":'<,'>!jq", { desc = "Run on selected lines JQ cmd" })

vim.keymap.set("n", "<leader>F", "gggqG", { desc = "format file" }) -- format file
vim.keymap.set("v", "<leader>F", "gq", { desc = "format file" }) -- format file

vim.keymap.set("n", "x", '"_x', { desc = "Delete without overwriting clipboard" }) -- delete without overwriting clipboard
vim.keymap.set({ "n", "v" }, "d", '"_d', { desc = "Delete without overwriting clipboard" }) -- delete without overwriting clipboard
vim.keymap.set({ "n", "v" }, "dd", '"_dd', { desc = "Delete without overwriting clipboard" }) -- delete without overwriting clipboard
vim.keymap.set("n", "D", '"_D', { desc = "Delete without overwriting clipboard" }) -- delete without overwriting clipboard

vim.keymap.set("n", "<leader>md", "vip:'<,'>!prettier --parser markdown<cr>", { desc = "format markdown" })
vim.keymap.set("v", "<leader>md", ":'<,'>!prettier --parser markdown<cr>", { desc = "format markdown" })

vim.keymap.set("n", "<leader>g", ":Neogit<CR>", { desc = "Open Neogit" })
