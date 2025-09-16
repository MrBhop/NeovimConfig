vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- open netrw
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- move selection
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- keep the cursor centered when jumping
vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "M<C-d>zz")
vim.keymap.set("n", "<C-u>", "M<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- yank to clipboard
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

-- delete into void register
vim.keymap.set("n", "<leader>d", "\"_d")
vim.keymap.set("v", "<leader>d", "\"_d")

--[[
This one has the benefit of not polluting the register,
but it doesn't work well when pasting at the end of a line.

When pasting at the end of a line, the pasted text is placed before the last character before the selection.
Since that is more important to me than a clean register right now, i'll experiment with the "pgvy" method.

vim.keymap.set("v", "<leader>p", "\"_dP")
--]]

-- paste text and immediatly copy it back.
vim.keymap.set("v", "<leader>p", "pgvy")

-- Quickfix navigation
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- replace current word
vim.keymap.set("n", "<leader>s", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>")

-- toggle word-wrap
vim.keymap.set("n", "<leader>tw", function() vim.opt.wrap = not vim.o.wrap end)
-- toggle highlight search
vim.keymap.set("n", "<leader>th", function() vim.opt.hlsearch = not vim.o.hlsearch end)
