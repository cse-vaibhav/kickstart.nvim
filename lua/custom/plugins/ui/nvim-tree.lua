local opts = {
	sort_by = "case_sensitive",
	filters = {
		dotfiles = true,
	},
}

local keys = {
	{ "<leader>b", "<cmd>NvimTreeToggle<cr>", desc = "Toggle NvimTree" },
	{ "<leader>o", "<cmd>NvimTreeFocus<cr>",  desc = "Focus NvimTree" },

}

local function my_on_attach(bufnr)
	local api = require "nvim-tree.api"

	local function _opts(desc)
		return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
	end

	-- default mappings
	api.config.mappings.default_on_attach(bufnr)

	-- custom mappings
	vim.keymap.set('n', '<C-t>', api.tree.change_root_to_parent, _opts('Up'))
	vim.keymap.set('n', '?', api.tree.toggle_help, _opts('Help'))
end

return {
	"nvim-tree/nvim-tree.lua",
	version = "*",
	lazy = false,
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	keys = keys,
	opts = opts,
	config = function()
		require("nvim-tree").setup {
			on_attach = my_on_attach,
		}
	end,
}
