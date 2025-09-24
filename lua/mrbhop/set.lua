vim.opt.guicursor = ""

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = vim.fn.stdpath("data") .. package.config:sub(1, 1) .. "undo"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8

vim.opt.updatetime = 50

vim.opt.smartindent = true

vim.opt.cpo:remove({ "_" })

vim.opt.wrap = false
vim.opt.linebreak = true
vim.opt.breakindent = true
vim.opt.showbreak = " ↪  "

vim.opt.list = true
vim.opt.listchars:append({ space = "-" })
vim.opt.listchars:append({ lead = "-" })
vim.opt.listchars:append({ eol = "↵" })
vim.opt.listchars:append({ multispace = "+" })

vim.opt.ignorecase = true

vim.opt.signcolumn = "yes"
vim.g.have_nerd_font = true
vim.opt.timeout = false
vim.opt.cursorline = true
vim.opt.cursorlineopt = "number"

vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking text",
	group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
})
