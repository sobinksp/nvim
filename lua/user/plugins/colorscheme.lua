return {
	-- "sainnhe/everforest",
	-- "shaunsingh/solarized.nvim",
	-- "Tsuzat/NeoSolarized.nvim",
	-- "ellisonleao/gruvbox.nvim",
	-- "p00f/alabaster.nvim",
	-- "ishan9299/nvim-solarized-lua",
	-- "aktersnurra/no-clown-fiesta.nvim",
	"NTBBloodbath/doom-one.nvim",
	lazy = false,
	priority = 1000,

	-- config = function()
	-- 	-- vim.cmd.colorscheme("everforest")
	-- 	-- vim.cmd.colorscheme("alabaster")
	-- 	-- vim.cmd([[ colorscheme NeoSolarized ]])
	--
	-- 	-- vim.g.solarized_italics = 0
	-- 	-- vim.cmd.colorscheme("solarized")
	-- 	-- require("no-clown-fiesta").setup({
	-- 	-- require("doom-one").setup({
	-- 	-- 	transparent = false, -- Enable this to disable the bg color
	-- 	-- 	styles = {
	-- 	-- 		-- You can set any of the style values specified for `:h nvim_set_hl`
	-- 	-- 		comments = {},
	-- 	-- 		functions = {},
	-- 	-- 		keywords = {},
	-- 	-- 		lsp = { underline = true },
	-- 	-- 		match_paren = {},
	-- 	-- 		type = { bold = false },
	-- 	-- 		variables = {},
	-- 	-- 	},
	-- 	-- })
	-- 	-- require("doom-one").setup({})
	--
	-- 	-- vim.cmd([[colorscheme no-clown-fiesta]])
	-- 	vim.cmd([[colorscheme doom-one]])
	-- end,
	config = function()
		vim.cmd.colorscheme("doom-one")
	end,
}
