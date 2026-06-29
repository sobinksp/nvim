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

-- return {
-- 	-- "p00f/alabaster.nvim",
-- 	"aktersnurra/no-clown-fiesta.nvim",
--
-- 	lazy = false,
-- 	priority = 1000,
--
-- 	config = function()
-- 		local a = 3
-- 		vim.cmd([[colorscheme no-clown-fiesta]])
-- 		vim.api.nvim_set_hl(0, "MatchParen", {
-- 			bg = "#5f5f5f",
-- 		})
-- 		vim.api.nvim_set_hl(0, "Comment", {
-- 			fg = "#4ED53E",
-- 			-- italic = true, -- optional
-- 		})
-- 		vim.api.nvim_set_hl(0, "DiagnosticUnnecessary", { fg = "#5f5f5f" })
-- 		-- Additional common groups for unused code
-- 		vim.api.nvim_set_hl(0, "@lsp.mod.unused", { fg = "#5f5f5f" })
-- 	end,
-- }

-- return {
-- 	"https://github.com/rebelot/kanagawa.nvim.git",
-- 	lazy = false,
-- 	priority = 1000,
-- 	config = function()
-- 		require("kanagawa").setup({
-- 			commentStyle = { italic = false },
-- 			keywordStyle = { italic = false },
-- 			statementStyle = { bold = false },
-- 			colors = {
-- 				palette = {
-- 					-- change all usages of these colors
-- 					dragonBlue2 = "#E4EEDA",
-- 					dragonGreen = "#71855b",
-- 					dragonGreen2 = "#8FAE7F",
--
-- 					dragonWhite = "#999A99",
-- 				},
-- 			},
-- 		})
-- 		vim.cmd("colorscheme kanagawa-dragon")
-- 		vim.api.nvim_set_hl(0, "MatchParen", {
-- 			bg = "#5f5f5f",
-- 		})
-- 	end,
-- }
-- return {
-- 	"shawilly/fallout.nvim",
-- 	lazy = false,
-- 	priority = 1000,
-- 	config = function()
-- 		require("fallout").setup({
-- 			styles = {
-- 				comments = { italic = false },
-- 				keywords = { bold = true },
-- 				functions = {},
-- 				variables = {},
-- 			},
-- 		})
-- 		vim.cmd.colorscheme("fallout")
-- 	end,
-- }

-- return {
-- 	"https://github.com/RRethy/base16-nvim",
-- 	lazy = false,
-- 	priority = 1000,
-- 	config = function()
-- 		require("base16-colorscheme").setup({
--
-- 			-- UI
-- 			base00 = "#070807", -- background (not pure black for better contrast)
-- 			base01 = "#0b0f0c",
-- 			base02 = "#141a16",
-- 			base03 = "#2c342e", -- comments
-- 			base04 = "#4b544d",
-- 			base05 = "#7a847b", -- main text (slightly brighter)
-- 			base06 = "#909a91",
-- 			base07 = "#a6afa8",
--
-- 			-- Syntax
-- 			base08 = "#7a847b", -- variables
-- 			base09 = "#909a91", -- numbers
-- 			base0A = "#879188", -- types
-- 			base0B = "#3e5d3f", -- strings
-- 			base0C = "#6e7870", -- constants
-- 			base0D = "#9ea9a0", -- functions
-- 			base0E = "#5c8c1f", -- keywords
-- 			base0F = "#59635b", -- specials
-- 		})
--
-- 		vim.cmd([[
--       highlight CursorLine guibg=#0b0f0c
--       highlight LineNr guifg=#2c342e
--       highlight CursorLineNr guifg=#7a847b
--     ]])
--
-- 		-- Treesitter overrides
-- 		vim.api.nvim_set_hl(0, "@string", { fg = "#3e5d3f" })
-- 		vim.api.nvim_set_hl(0, "@keyword", { fg = "#5c8c1f", italic = false })
-- 		vim.api.nvim_set_hl(0, "@comment", { fg = "#2c342e", italic = false })
-- 		vim.api.nvim_set_hl(0, "@type", { italic = false })
-- 		vim.api.nvim_set_hl(0, "@function.builtin", { italic = false })
-- 	end,
-- }
-- return {
-- 	"https://github.com/RRethy/base16-nvim",
-- 	lazy = false,
-- 	priority = 1000,
-- 	config = function()
-- 		require("base16-colorscheme").setup({
-- 			-- UI
-- 			base00 = "#0f120f", -- background (lifted from #070807)
-- 			base01 = "#171c18",
-- 			base02 = "#1f2621",
-- 			base03 = "#3e4840", -- comments (was #2c342e)
-- 			base04 = "#5f6a61",
-- 			-- base05 = "#96a098", -- main text (was #7a847b)
-- 			-- base05 = "#969E93", -- main text (was #7a847b)
-- 			base05 = "#889085", -- main text
-- 			base06 = "#adb6ae",
-- 			base07 = "#c4ccc6",
-- 			-- Syntax
-- 			base08 = "#96a098", -- variables
-- 			base09 = "#adb6ae", -- numbers
-- 			base0A = "#a3b0a6", -- types
-- 			base0B = "#5a8a5c", -- strings (was #3e5d3f)
-- 			base0C = "#8a958c", -- constants
-- 			-- base0D = "#b8c4ba", -- functions (was #9ea9a0)
-- 			base0D = "#CFE1D2",
-- 			-- base0D = "#FF0000", -- functions (was #9ea9a0)
-- 			base0E = "#78ac2e", -- keywords (was #5c8c1f)
-- 			base0F = "#748676", -- specials
-- 		})
-- 		vim.cmd([[
--       highlight CursorLine guibg=#171c18
--       highlight LineNr guifg=#3e4840
--       highlight CursorLineNr guifg=#96a098
--     ]])
-- 		-- Treesitter overrides
-- 		vim.api.nvim_set_hl(0, "@string", { fg = "#5a8a5c" })
-- 		vim.api.nvim_set_hl(0, "@keyword", { fg = "#78ac2e", italic = false })
-- 		vim.api.nvim_set_hl(0, "@comment", { fg = "#3e4840", italic = false })
-- 		vim.api.nvim_set_hl(0, "@type", { italic = false })
-- 		vim.api.nvim_set_hl(0, "@function.builtin", { italic = false })
-- 		vim.api.nvim_set_hl(0, "@boolean", { fg = "#72D475" }) -- or whatever color you want
-- 		vim.api.nvim_set_hl(0, "@type.builtin", { italic = false }) -- FIX for int
-- 		vim.api.nvim_set_hl(0, "@keyword.type", { italic = false }) -- sometimes used
-- 	end,
-- }
-- return {
-- 	"https://github.com/fcpg/vim-farout",
-- 	lazy = false,
-- 	priority = 1000,
-- 	config = function()
-- 		vim.cmd.colorscheme("farout")
--
-- 		-- farout ships no terminal palette, so nvim's built-in terminal
-- 		-- (used by lazygit.nvim) falls back to defaults and lazygit's
-- 		-- selected-line "blue" renders blue-green. Apply the author's
-- 		-- intended base16 terminal palette (misc/base16-farout.dark.sh).
-- 		local term_colors = {
-- 			[0] = "#0f0908", [1] = "#bf472c", [2] = "#a4896f", [3] = "#f2a766",
-- 			[4] = "#d47d49", [5] = "#8a4b53", [6] = "#a67458", [7] = "#e0ccae",
-- 			[8] = "#1f1311", [9] = "#df674c", [10] = "#c4a98f", [11] = "#ffc786",
-- 			[12] = "#f49d69", [13] = "#aa6b73", [14] = "#c69478", [15] = "#f2ddbc",
-- 		}
-- 		for i, color in pairs(term_colors) do
-- 			vim.g["terminal_color_" .. i] = color
-- 		end
-- 		vim.api.nvim_set_hl(0, "UserNormalCursor", { fg = "#0F0908", bg = "#d47d49" })
-- 		vim.api.nvim_set_hl(0, "UserInsertCursor", { fg = "#0F0908", bg = "#e0ccae" })
-- 	end,
-- }

return {
	"https://github.com/RRethy/base16-nvim",
	lazy = false,
	priority = 1000,
	config = function()
		require("base16-colorscheme").setup({
			-- UI
			base00 = "#0f120f", -- background (lifted from #070807)
			base01 = "#171c18",
			base02 = "#1f2621",
			base03 = "#3e4840", -- comments (was #2c342e)
			base04 = "#5f6a61",
			base05 = "#889085", -- main text
			base06 = "#adb6ae",
			base07 = "#c4ccc6",
			-- Syntax
			base08 = "#96a098", -- variables
			base09 = "#adb6ae", -- numbers
			base0A = "#a3b0a6", -- types
			base0B = "#5a8a5c", -- strings (was #3e5d3f)
			base0C = "#8a958c", -- constants
			base0D = "#CFE1D2", -- functions (was #9ea9a0)
			base0E = "#78ac2e", -- keywords (was #5c8c1f)
			base0F = "#748676", -- specials
		})

		vim.cmd([[
      highlight CursorLine guibg=#171c18
      highlight LineNr guifg=#3e4840
      highlight CursorLineNr guifg=#96a098
    ]])

		-- Treesitter overrides
		vim.api.nvim_set_hl(0, "@string", { fg = "#5a8a5c" })
		vim.api.nvim_set_hl(0, "@keyword", { fg = "#78ac2e", italic = false })
		vim.api.nvim_set_hl(0, "@comment", { fg = "#3e4840", italic = false })
		vim.api.nvim_set_hl(0, "@type", { italic = false })
		vim.api.nvim_set_hl(0, "@function.builtin", { italic = false })
		vim.api.nvim_set_hl(0, "@boolean", { fg = "#72D475" })
		vim.api.nvim_set_hl(0, "@type.builtin", { italic = false }) -- FIX for int
		vim.api.nvim_set_hl(0, "@keyword.type", { italic = false })

		-- Cursor highlights (referenced by guicursor in core/options.lua).
		-- base16's setup also clears groups, so define them here afterward.
		vim.api.nvim_set_hl(0, "UserNormalCursor", { fg = "#0f120f", bg = "#a7c48d" }) -- sage block
		vim.api.nvim_set_hl(0, "UserInsertCursor", { fg = "#0f120f", bg = "#d6dccf" }) -- pale mint block
	end,
}
