
local g = vim.g
g.mapleader = " "
g.maplocalleader = " "

local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

--// Nvim: Normal -------------------------------------------------------------

-- 设置行号
keymap("n", "<C-n>", ":set number<cr>", opts)

-- 窗口导航移动
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- 保存文档编辑
keymap("n", "<C-s>", ":w<cr>", opts)

-- 退出文档编辑
keymap("n", "<C-q>", ":q<cr>", opts)

--// Nvim: Insert -------------------------------------------------------------

--// NVIM: Visual -------------------------------------------------------------


--// Plugin: -------------------------------------------------------------



