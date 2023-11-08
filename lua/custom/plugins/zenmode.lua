return {
	"pocco81/true-zen.nvim",
	opts = {
		integrations = {
			kitty = { enabled = true }
		}
	},
	config = function()
		vim.api.nvim_set_keymap("n", "<leader>zn", ":TZNarrow<CR>", {})
		vim.api.nvim_set_keymap("v", "<leader>zn", ":'<,'>TZNarrow<CR>", {})
		vim.api.nvim_set_keymap("n", "<leader>zf", ":TZFocus<CR>", {})
		vim.api.nvim_set_keymap("n", "<leader>zm", ":TZMinimalist<CR>", {})
		vim.api.nvim_set_keymap("n", "<leader>za", ":TZAtaraxis<CR>", {})
	end
}
