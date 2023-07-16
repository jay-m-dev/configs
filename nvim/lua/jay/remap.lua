vim.g.mapleader = " "
vim.keymap.set("n", "<leader>t", vim.cmd.Ex)
vim.keymap.set("n", "<leader>w", ':w<cr>')
vim.keymap.set("i", "jk", '<esc>')
vim.keymap.set("n", "<leader>j", '<C-w>j<cr>')
vim.keymap.set("n", "<leader>k", '<C-w>k<cr>')
vim.keymap.set("n", "<leader>l", '<C-w>l<cr>')
vim.keymap.set("n", "<leader>h", '<C-w>h<cr>')
vim.keymap.set("n", "<leader>q", ':q<cr>')
vim.keymap.set("n", "<leader>so", ':so<cr>')
vim.keymap.set("n", "<leader>ps", ':PackerSync<cr>')
vim.keymap.set("n", "<leader>s", ':split<cr>')
vim.keymap.set("n", "<leader>v", ':vsplit<cr>')

vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("x", "<leader>p", "\"_dP")

vim.keymap.set("n", "<C-n>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-p>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>n", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>p", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "<leader><leader>", ":Ex ~/.config/nvim/lua/jay<cr>")

vim.keymap.set("n", "Q", "<nop>")
