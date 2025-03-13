return {
	-- "maxmx03/solarized.nvim",
	-- 	-- "neanias/everforest-nvim",
	-- "sainnhe/sonokai",
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
	-- config = function()
	-- 	-- require("sonokai").setup({
	-- 	-- 	sonokai_style = "maia",
	-- 	-- })
	-- 	vim.g.sonokai_enable_italic = 0
	-- 	vim.g.sonokai_disable_italic_comment = 1
	-- 	vim.g.sonokai_style = "maia"
	-- 	vim.cmd.colorscheme("sonokai")
	-- end,
	"https://github.com/RRethy/base16-nvim",
	config = function()
		-- local bg = "#0F1919"
		local bg = "#041C1F"
		-- local bg = "#062726"
		local accent = "#102121"
		local accent2 = "#0D2525" -- highlight

		-- local text = "#abb2bf"
		local text = "#B6AB8B"

		local dark_text = "#3E4451" -- comments, line numbers

		local keyword = "#8F939A"
		local func = "#B6AB8B"
		-- local types = "#65838E"
		local types = "#B7CADD"
		-- local constant = "#A06057"
		-- local constant = "#31A9A6"
		local constant = "#3AC2A7"
		local for_tesing = "#FF0000"
		-- local comment = "#48955D"
		local comment = "#49B337"
		local keyword_silver = "#B7CADD"
		local constant2 = "#93F0DA"
		local keyword2 = "#E6FCFD"
		require("base16-colorscheme").setup({
			base00 = bg,
			base01 = accent,
			base02 = accent2,
			-- base03 = dark_text,
			base03 = comment,
			base04 = dark_text,
			base05 = text,
			base06 = for_tesing,
			base07 = for_tesing,
			base08 = text,
			-- base09 = constant,
			base09 = constant2,
			base0A = types,
			base0B = constant,
			base0C = text,
			base0D = func,
			-- base0E = keyword,
			base0E = keyword2,
			base0F = text,
		})
		-- vim.api.nvim_set_hl(0, "@comment", { fg = comment, italic = false })
		-- vim.api.nvim_set_hl(0, "@function.builtin", { fg = "NONE", bold = false, italic = false })
		-- vim.api.nvim_set_hl(0, "Keyword", { fg = "NONE", bold = false, italic = false })
	end,
}
