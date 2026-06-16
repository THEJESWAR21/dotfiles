-- Variable
local set = vim.opt
vim.g.mapleader = " "

-- Keymaps
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set('t', '<Esc>', [[<C-\><C-n>]], { desc = 'Exit terminal mode' })

-- vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
-- vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "<leader>st", function()
	vim.cmd.vnew()
	vim.cmd.term()
	vim.cmd.wincmd("J")
	vim.api.nvim_win_set_height(0,15)
 end)

-- Editor Options
vim.opt.clipboard = "unnamedplus"
set.number = true

-- Setting Indeting to 4 spaces from 8
vim.opt.tabstop = 4
vim.opt.softtabstop = 4 
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true
vim.opt.wrap = false

vim.opt.hlsearch = true
vim.opt.incsearch = true

vim.opt.termguicolors = true
vim.opt.updatetime = 50
-- vim.opt.colorcolumn = "80"
