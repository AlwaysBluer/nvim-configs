-- vim key binding map file
-- vim.keymap.set("n", "<Space>", "<Nop>", {silent = true, remap = false}
vim.g.mapleader = " "
vim.g.maplocalleader = " "


-- 保存本地变量
local map = vim.api.nvim_set_keymap
local opt = {noremap = true, silent = true}

-- map映射变量
-- map("模式", "按键", '映射为XX', opt)
-- A -> ALT
-- <CR> -> ENTER
-- <C-w> -> CONTROL + w
-- 窗口间跳转
map("n", "<A-h>", "<C-w>h", opt)
map("n", "<A-j>", "<C-w>j", opt)
map("n", "<A-k>", "<C-w>k", opt)
map("n", "<A-l>", "<C-w>l", opt)
--重新设置CTRL+u/d，使得每次只跳转10行
map("n", "<C-d>", "10j", opt)
map("n", "<C-u>", "10k", opt)

--nvim-tree
map("n", "<C-n>", ":NvimTreeToggle<CR>", opt)

--treesitter是否高亮
--map("n", "<leader>h", ":TSBufToggle highlight<CR>", opt)

--bufferline remapping

map("n", "<leader>j", ":BufferLineCycleNext<CR>", opt)
map("n", "<leader>k", ":BufferLineCyclePrev<CR>", opt)
map("n", "<leader>db", ":bdelete<CR>", opt)
map("n", "<leader>gb", ":BufferLinePick<CR>", opt)
