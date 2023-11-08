return {
	-- Theme inspired by Atom
	'navarasu/onedark.nvim',
	lazy = "VeryLazy",
	config = function()
		local onedark = require("onedark")
		onedark.setup({ style = "darker", toggle_style_key = "<leader>ts" })
	end,
}
