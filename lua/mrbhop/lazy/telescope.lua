return {
	'nvim-telescope/telescope.nvim',
	tag = '0.1.8',
	dependencies = {
		'nvim-lua/plenary.nvim'
	},
	config = function()
		require('telescope').setup({})

		local builtin = require('telescope.builtin')

		-- project files
		vim.keymap.set('n', '<leader>pf', builtin.find_files, {})

		-- project ignored files
		vim.keymap.set('n', '<leader>pif', function()
			builtin.find_files({
				no_ignore = true,
			})
		end)

		-- git files
		vim.keymap.set('n', '<leader>gf', builtin.git_files, {})

		-- project word search
		vim.keymap.set('n', '<leader>pws', function()
			local word = vim.fn.expand("<cword>")
			builtin.grep_string({ search = word })
		end)
		-- project WORD search
		vim.keymap.set('n', '<leader>pWs', function()
			local word = vim.fn.expand("<cWORD>")
			builtin.grep_string({ search = word })
		end)

		-- Grep search
		vim.keymap.set('n', '<leader>ps', function()
			builtin.grep_string({
				search = vim.fn.input("Grep > "),
				use_regex = true,
			})
		end)

		-- vim help
		vim.keymap.set('n', '<leader>vh', builtin.help_tags, {})

		-- Project live search
		vim.keymap.set('n', '<leader>pls', builtin.live_grep)

		-- buffer live search
		vim.keymap.set('n', '<leader>bls', builtin.current_buffer_fuzzy_find)

		-- list cmd
		vim.keymap.set('n', '<leader>lcmd', builtin.commands)
	end
}
