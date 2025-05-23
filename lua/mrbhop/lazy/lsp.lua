return {
	"neovim/nvim-lspconfig",
	config = function()
		vim.lsp.config("lua_ls", {
			cmd = { "lua-language-server" },
			filetypes = { "lua" },
			root_markers = { ".luarc.json", ".git" },
			settings = {
				Lua = {
					diagnostics = {
						globals = { "vim" },
					},
					workspace = {
						checkThirdParty = false,
						library = {
							vim.env.VIMRUNTIME,
							vim.fn.stdpath("config") .. "/lua",
						},
					},
				},
			},
		})

		vim.lsp.enable("lua_ls")
	end,
}
