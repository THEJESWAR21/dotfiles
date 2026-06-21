return { 'nvim-telescope/telescope.nvim', version = '*',

    dependencies = {
        'nvim-lua/plenary.nvim',
        { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
    },
    config = function()
	    local builtin = require('telescope.builtin')
	    vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
	    vim.keymap.set('n', '<leader>fg', builtin.git_files, {})
	    vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
	    vim.keymap.set('n', '<leader>fc', function()
		    builtin.find_files {
			cwd = vim.fn.stdpath("config")
	}
	end)

	   vim.keymap.set('n', '<leader>fs', function()
		   builtin.grep_string({ search = vim.fn.input("Grep > ")});
		end)
	end
}
