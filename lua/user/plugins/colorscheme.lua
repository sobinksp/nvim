-- return {
-- 	"https://github.com/RRethy/base16-nvim",
-- 	lazy = false,
-- 	priority = 1000,
-- 	config = function()
-- 		local bg = "#0F1919"
-- 		local accent = "#102121"
-- 		local accent2 = "#0D2525" -- highlight
--
-- 		local text = "#abb2bf"
-- 		local dark_text = "#3E4451" -- comments, line numbers
--
-- 		local keyword = "#8F939A"
-- 		local func = "#B6AB8B"
-- 		-- local types = "#65838E"
-- 		local types = "#B7CADD"
-- 		local constant = "#3AC2A7"
--
-- 		local for_tesing = "#FF0000"
--
-- 		require("base16-colorscheme").setup({
-- 			base00 = bg,
-- 			base01 = accent,
-- 			base02 = accent2,
-- 			base03 = dark_text,
-- 			base04 = dark_text,
-- 			base05 = text,
-- 			base06 = for_tesing,
-- 			base07 = for_tesing,
-- 			base08 = text,
-- 			base09 = constant,
-- 			base0A = types,
-- 			base0B = constant,
-- 			base0C = text,
-- 			base0D = func,
-- 			base0E = keyword,
-- 			base0F = text,
-- 		})
-- 	end,
-- }

-- return {
-- 	-- "p00f/alabaster.nvim",
-- 	"jpwol/thorn.nvim",
-- 	lazy = false,
-- 	priority = 1000,
--
-- 	config = function()
-- 		require("thorn").setup({
-- 			theme = nil, -- 'light' or 'dark' - defaults to vim.o.background if unset
-- 			background = "warm", -- options are 'warm' and 'cold'
--
-- 			transparent = false, -- transparent background
-- 			terminal = true, -- terminal colors
--
-- 			styles = {
-- 				keywords = { italic = false, bold = false },
-- 				comments = { italic = false, bold = false },
-- 				strings = { italic = false, bold = false },
--
-- 				diagnostic = {
-- 					underline = true, -- if true, flat underlines will be used. Otherwise, undercurls will be used
--
-- 					-- true will apply the bg highlight, false applies the fg highlight
-- 					error = { highlight = true },
-- 					hint = { highlight = false },
-- 					info = { highlight = false },
-- 					warn = { highlight = false },
-- 				},
-- 			},
--
-- 			on_highlights = function(hl, palette) end, -- apply your own highlights
-- 		})
-- 		vim.cmd("colorscheme thorn")
-- 	end,
-- }

return {
	-- "p00f/alabaster.nvim",
	"aktersnurra/no-clown-fiesta.nvim",

	lazy = false,
	priority = 1000,

	config = function()
		vim.cmd([[colorscheme no-clown-fiesta]])
		vim.api.nvim_set_hl(0, "MatchParen", {
			bg = "#5f5f5f",
		})
		vim.api.nvim_set_hl(0, "Comment", {
			fg = "#4ED53E", -- light yellow (adjust if needed)
			-- italic = true, -- optional
		})
	end,
}

-- return {
-- 	"lifepillar/vim-solarized8",
-- 	lazy = false,
-- 	priority = 1000,
--
-- 	config = function()
-- 		vim.cmd([[colorscheme solarized8]])
-- 	end,
-- }
