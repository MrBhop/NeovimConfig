return {
	{
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			require("tokyonight").setup({
				style = "storm",
				transparent = true,
			})
		end,
	},
	{
		"rose-pine/neovim",
		lazy = false,
		priority = 1000,
		name = "rose-pine",
		config = function()
			require("rose-pine").setup({
				variant = "moon",
				styles = {
					transparency = true,
				},
			})
		end,
	},
	{
		"ellisonleao/gruvbox.nvim",
		lazy = false,
		priority = 1000,
		config = function ()
			require("gruvbox").setup({
				transparent_mode = true,
				contrast = "",
			})
		end,
	},
	{
		"EdenEast/nightfox.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			require("nightfox").setup({
				options = {
					transparent = true,
				},
			})
		end,
	},
}
