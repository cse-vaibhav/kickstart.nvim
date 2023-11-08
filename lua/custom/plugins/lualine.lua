-- Bubbles config for lualine
-- Author: lokesh-krishna
-- MIT license, see LICENSE for more details.

-- Set lualine as statusline
-- See `:help lualine.txt`
-- return {
-- 	'nvim-lualine/lualine.nvim',
-- 	opts = {
-- 		options = {
-- 			icons_enabled = true,
-- 			theme = 'auto',
-- 			component_separators = '|',
-- 			section_separators = '',
-- 		},
-- 	},
-- }

return {
	"nvim-lualine/lualine.nvim",
	config = function()
		require('lualine').setup {
			options = {
				theme = "auto",
				icons_enabled = true,
				component_separators = '|',
				-- section_separators = { left = '', right = '' },
			},
			sections = {
				-- lualine_a = {
				-- 	{ 'mode', separator = { left = '' }, right_padding = 2 },
				-- },
				lualine_b = { 'filename', 'branch' },
				lualine_c = { 'fileformat' },
				lualine_x = {
					"overseer"
				},
				lualine_y = { 'filetype', 'progress' },
				-- lualine_z = {
				-- 	{ 'location', separator = { right = '' }, left_padding = 2 },
				-- },
			},
			inactive_sections = {
				lualine_a = { 'filename' },
				lualine_b = {},
				lualine_c = {},
				lualine_x = {},
				lualine_y = {},
				lualine_z = { 'location' },
			},
			tabline = {},
			extensions = {},
		}
	end,
}
