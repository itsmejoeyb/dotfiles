return {
	"rose-pine/neovim",
	priority = 1000,
	name = "rose-pine",
	opts = {
		styles = {
			transparency = true,
		},
	},
	init = function()
		vim.cmd("colorscheme rose-pine")
	end,
}
