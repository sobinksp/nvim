return {
	-- "sainnhe/everforest",
	-- "shaunsingh/solarized.nvim",
	-- "Tsuzat/NeoSolarized.nvim",
	-- "ellisonleao/gruvbox.nvim",
	-- "p00f/alabaster.nvim",
	-- "ishan9299/nvim-solarized-lua",
	"aktersnurra/no-clown-fiesta.nvim",
	lazy = false,
	priority = 1000,

	config = function()
		-- vim.cmd.colorscheme("everforest")
		-- vim.cmd.colorscheme("alabaster")
		-- vim.cmd([[ colorscheme NeoSolarized ]])

		-- vim.g.solarized_italics = 0
		-- vim.cmd.colorscheme("solarized")
		require("no-clown-fiesta").setup({
			transparent = false, -- Enable this to disable the bg color
			styles = {
				-- You can set any of the style values specified for `:h nvim_set_hl`
				comments = {},
				functions = {},
				keywords = {},
				lsp = { underline = true },
				match_paren = {},
				type = { bold = false },
				variables = {},
			},
		})

		vim.cmd([[colorscheme no-clown-fiesta]])
	end,
}
