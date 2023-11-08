-- Fuzzy Finder (files, lsp, etc)

local config = function()
	local telescope = require("telescope")

	telescope.setup({
		extensions = {
			-- NOTE: this setup is optional
			docker = {
				-- These are the default values
				theme = "ivy",
				binary = "docker", -- in case you want to use podman or something
				compose_binary = "docker compose",
				buildx_binary = "docker buildx",
				machine_binary = "docker-machine",
				log_level = vim.log.levels.INFO,
				init_term = "tabnew", -- "vsplit new", "split new", ...
			},
		},
	})

	-- Telescope Extensions
	telescope.load_extension("noice")
	telescope.load_extension("docker")
	telescope.load_extension('luasnip')
	telescope.load_extension('lsp_handlers')
	-- telescope.load_extension('media_files')
	-- telescope.load_extension("notify")
end
return {
	'nvim-telescope/telescope.nvim',
	branch = '0.1.x',
	lazy = true,
	ft = 'mason',
	dependencies = {
		'nvim-lua/plenary.nvim',
		'stevearc/dressing.nvim',

		-- Extensions
		'nvim-telescope/telescope-ui-select.nvim',
		"gbrlsnchs/telescope-lsp-handlers.nvim",
		'lpoto/telescope-docker.nvim',
		{
			'benfowler/telescope-luasnip.nvim',
			module = "telescope._extensions.luasnip",
		},
		{
			'nvim-telescope/telescope-fzf-native.nvim',
			build = 'make',
			cond = function()
				return vim.fn.executable 'make' == 1
			end,
		},

	},
	config = config
}
