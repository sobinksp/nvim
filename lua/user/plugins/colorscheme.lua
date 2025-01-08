return {
	-- "maxmx03/solarized.nvim",
	-- 	-- "neanias/everforest-nvim",
	"sainnhe/sonokai",
	lazy = false,
	priority = 1000,
	--
	-- config = function()
	-- 	vim.o.termguicolors = true
	-- 	vim.o.background = "dark"
	-- 	require("solarized").setup({
	-- 		styles = {
	-- 			enabled = false,
	-- 		},
	-- 	})
	-- 	vim.cmd.colorscheme("solarized")
	-- end,
	-- 	--
	-- 	-- config = function()
	-- 	-- 	-- vim.o.termguicolors = true
	-- 	-- 	-- vim.o.background = "light"
	-- 	-- 	require("everforest").setup({
	-- 	-- 		background = "hard",
	-- 	-- 		diagnostic_virtual_text = "coloured",
	-- 	-- 		diagnostic_text_highlight = true,
	-- 	-- 		italics = false,
	-- 	-- 		disable_italic_comments = true,
	-- 	-- 	})
	-- 	-- 	vim.cmd.colorscheme("everforest")
	-- 	-- end,
	--
	config = function()
		-- require("sonokai").setup({
		-- 	sonokai_style = "maia",
		-- })
		vim.g.sonokai_enable_italic = 0
		vim.g.sonokai_disable_italic_comment = 1
		vim.g.sonokai_style = "maia"
		vim.cmd.colorscheme("sonokai")
	end,
}
