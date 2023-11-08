return {
	-- Add indentation guides even on blank lines
	'lukas-reineke/indent-blankline.nvim',
	main = 'ibl',
	-- Enable `lukas-reineke/indent-blankline.nvim`
	-- See `:help indent_blankline.txt`
	opts = {
		debounce = 100,
		exclude = {
			filetypes = {
				"dashboard"
			},
			buftypes = {
				"dashboard"
			}
		}
	},
}
