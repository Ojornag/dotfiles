vim.g.mapleader = "<space>"

require("config.lazy")

vim.keymap.set("i", "jj", "<Esc>")
vim.keymap.set("n", "<leader>h", "<C-w>h", { desc = "Go to the left window" })
vim.keymap.set("n", "<leader>j", "<C-w>j", { desc = "Go to the down window" })
vim.keymap.set("n", "<leader>k", "<C-w>k", { desc = "Go to the up window" })
vim.keymap.set("n", "<leader>l", "<C-w>l", { desc = "Go to the right window" })
vim.keymap.set("n", "<leader>o", "A{}<Esc>i<Cr><Esc>O", { desc = "Add {}" })

vim.o.tabstop = 4
vim.o.expandtab = false
vim.o.softtabstop = 4
vim.o.shiftwidth = 4

vim.o.number = true
vim.o.relativenumber = true
