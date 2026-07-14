return {
	"neovim/nvim-lspconfig",
	dependencies = {
		"folke/lazydev.nvim",
		"saghen/blink.lib",
	},
	config = function()
		local config = {
			capabilities = require("blink-cmp").get_lsp_capabilities(),
			on_attach = function(_, bufnr)
				local opts = { buffer = bufnr, remap = false }

				vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
				vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
				vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
				vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
				vim.keymap.set("n", "[d", function() vim.lsp.buf.goto_next() end, opts)
				vim.keymap.set("n", "]d", function() vim.lsp.buf.goto_prev() end, opts)

				vim.keymap.set("n", "<leader><leader>format", vim.lsp.buf.format, opts)

				--Toggle Virtual Lines
				vim.keymap.set("n", "<leader>tvl", function()
					if vim.diagnostic.config().virtual_lines then
						vim.diagnostic.config({
							virtual_lines = false,
						})
					else
						vim.diagnostic.config({
							virtual_lines = {
								format = function(diagnostic)
									return string.format("%s: %s", diagnostic.source, diagnostic.message)
								end
							},
						})
					end
				end, opts)
			end
		}

		-- ts_ls doesn't react to on_attach, if configured with "*"...
		vim.lsp.config("ts_ls", config)
		-- rust_analyzer doesn't either...
		vim.lsp.config("rust_analyzer", config)
		-- nothing does... wtf?
		vim.lsp.config("hls", config)

		vim.lsp.config("*", config)

		vim.lsp.inlay_hint.enable()

		vim.diagnostic.config({
			virtual_text = {
				source = true,
			},
			float = {
				source = true,
			}
		})
	end,
}
