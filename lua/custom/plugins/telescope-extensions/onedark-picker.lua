return {
	dev = true,
	dir = vim.fn.expandcmd("~/.config/nvim/lua/myplugins/telescope-onedark-picker"),
	name = "onedark-style",
	dependencies = {
		"navarasu/onedark.nvim",
		"nvim-telescope/telescope.nvim",
	},
	config = function()
		require("telescope").load_extension("onedark-style")
	end
}
