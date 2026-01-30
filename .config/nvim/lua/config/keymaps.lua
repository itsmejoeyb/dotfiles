vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

local keymap = vim.keymap

keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })

keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

keymap.set("n", "<leader>e", "<cmd>Oil<CR>")
keymap.set("n", "<leader>g", "<cmd>Neogit kind=auto<CR>")

-- window management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window
keymap.set("n", "<C-h>", "<C-w>h") -- move focus left
keymap.set("n", "<C-l>", "<C-w>l") -- move focus right
keymap.set("n", "<C-j>", "<C-w>j") -- move focus down
keymap.set("n", "<C-k>", "<C-w>k") -- move focus up

-- keymap for code actions
keymap.set({ "n", "x" }, "<leader>a", '<cmd>lua require("fastaction").code_action()<CR>', { buffer = bufnr })
