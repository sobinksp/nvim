return {
	"maxmx03/solarized.nvim",
	lazy = false,
	priority = 1000,

	config = function()
		vim.o.termguicolors = true
		vim.o.background = "dark"
		require("solarized").setup({
			styles = {
				enabled = false,
			},
		})
		vim.cmd.colorscheme("solarized")
	end,
}
