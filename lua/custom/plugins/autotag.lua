return {
	"windwp/nvim-ts-autotag",
	config = function()
		require("nvim-treesitter").setup({
			autotag = {
				enable = true
			},
		})
	end
}
