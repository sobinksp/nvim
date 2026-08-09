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
-- 			base05 = "#889085", -- main text
-- 			base06 = "#adb6ae",
-- 			base07 = "#c4ccc6",
-- 			-- Syntax
-- 			base08 = "#96a098", -- variables
-- 			base09 = "#adb6ae", -- numbers
-- 			base0A = "#a3b0a6", -- types
-- 			base0B = "#5a8a5c", -- strings (was #3e5d3f)
-- 			base0C = "#8a958c", -- constants
-- 			base0D = "#CFE1D2", -- functions (was #9ea9a0)
-- 			base0E = "#78ac2e", -- keywords (was #5c8c1f)
-- 			base0F = "#748676", -- specials
-- 		})
--
-- 		vim.cmd([[
--       highlight CursorLine guibg=#171c18
--       highlight LineNr guifg=#3e4840
--       highlight CursorLineNr guifg=#96a098
--     ]])
--
-- 		-- Treesitter overrides
-- 		vim.api.nvim_set_hl(0, "@string", { fg = "#5a8a5c" })
-- 		vim.api.nvim_set_hl(0, "@keyword", { fg = "#78ac2e", italic = false })
-- 		vim.api.nvim_set_hl(0, "@comment", { fg = "#3e4840", italic = false })
-- 		vim.api.nvim_set_hl(0, "@type", { italic = false })
-- 		vim.api.nvim_set_hl(0, "@function.builtin", { italic = false })
-- 		vim.api.nvim_set_hl(0, "@boolean", { fg = "#72D475" })
-- 		vim.api.nvim_set_hl(0, "@type.builtin", { italic = false }) -- FIX for int
-- 		vim.api.nvim_set_hl(0, "@keyword.type", { italic = false })
--
-- 		-- Cursor highlights (referenced by guicursor in core/options.lua).
-- 		-- base16's setup also clears groups, so define them here afterward.
-- 		vim.api.nvim_set_hl(0, "UserNormalCursor", { fg = "#0f120f", bg = "#a7c48d" }) -- sage block
-- 		vim.api.nvim_set_hl(0, "UserInsertCursor", { fg = "#0f120f", bg = "#d6dccf" }) -- pale mint block
-- 	end,
-- }

-- Retro / warm CRT-amber palette.
-- Design goals: warm dark-brown ground instead of neutral black (less blue light,
-- reads softer at night), cream-paper text instead of white, and every accent
-- desaturated into the amber/brass/olive family so nothing vibrates. Contrast is
-- kept in the comfortable 6-9:1 range for text -- readable without glare.
-- return {
-- 	"https://github.com/RRethy/base16-nvim",
-- 	lazy = false,
-- 	priority = 1000,
-- 	config = function()
-- 		local palette = {
			-- UI
-- 			base00 = "#1b1714", -- background: warm brown-black
-- 			base01 = "#221d19", -- cursorline / statusline
-- 			base02 = "#2e2721", -- visual selection
-- 			base03 = "#6a5c4c", -- comments (muted tan, still legible)
-- 			base04 = "#8b7b66", -- dark foreground / inactive
-- 			base05 = "#d6c6a4", -- main text: aged paper cream
-- 			base06 = "#e4d7ba",
-- 			base07 = "#f0e6cd",
			-- Syntax
-- 			base08 = "#c47a63", -- variables / errors: dusty terracotta
-- 			base09 = "#cf8f56", -- numbers / constants: burnt orange
-- 			base0A = "#d4b269", -- types: brass
-- 			base0B = "#94a469", -- strings: olive
-- 			base0C = "#7ea69b", -- support / escapes: faded teal
-- 			base0D = "#e2bb80", -- functions: warm amber (the CRT glow)
-- 			base0E = "#b48aa4", -- keywords: dusty mauve
-- 			base0F = "#a4785f", -- specials
-- 		}

-- 		require("base16-colorscheme").setup(palette)

-- 		vim.cmd(string.format(
-- 			[[
--       highlight CursorLine guibg=%s
--       highlight LineNr guifg=%s
--       highlight CursorLineNr guifg=%s
--     ]],
-- 			palette.base01,
-- 			palette.base03,
-- 			palette.base0A
-- 		))

		-- Treesitter overrides -- keep everything upright, no italics.
-- 		vim.api.nvim_set_hl(0, "@string", { fg = palette.base0B })
-- 		vim.api.nvim_set_hl(0, "@keyword", { fg = palette.base0E, italic = false })
-- 		vim.api.nvim_set_hl(0, "@comment", { fg = palette.base03, italic = false })
-- 		vim.api.nvim_set_hl(0, "@type", { fg = palette.base0A, italic = false })
-- 		vim.api.nvim_set_hl(0, "@function.builtin", { fg = palette.base0D, italic = false })
-- 		vim.api.nvim_set_hl(0, "@boolean", { fg = palette.base09 })
-- 		vim.api.nvim_set_hl(0, "@type.builtin", { fg = palette.base0A, italic = false }) -- FIX for int
-- 		vim.api.nvim_set_hl(0, "@keyword.type", { fg = palette.base0E, italic = false })

		-- Soften the paren match so it reads as a warm glow, not a flashbulb.
-- 		vim.api.nvim_set_hl(0, "MatchParen", { bg = palette.base02, fg = palette.base0D, bold = true })

		-- Terminal palette, so :terminal buffers (lazygit etc.) stay in-theme
		-- instead of falling back to nvim's default saturated ANSI colors.
-- 		local term_colors = {
-- 			[0] = palette.base01,
-- 			[1] = palette.base08,
-- 			[2] = palette.base0B,
-- 			[3] = palette.base0A,
-- 			[4] = palette.base0D,
-- 			[5] = palette.base0E,
-- 			[6] = palette.base0C,
-- 			[7] = palette.base05,
-- 			[8] = palette.base03,
-- 			[9] = "#d68d75",
-- 			[10] = "#a6b67a",
-- 			[11] = "#e4c47c",
-- 			[12] = "#f0cb92",
-- 			[13] = "#c69cb5",
-- 			[14] = "#92b8ad",
-- 			[15] = palette.base07,
-- 		}
-- 		for i, color in pairs(term_colors) do
-- 			vim.g["terminal_color_" .. i] = color
-- 		end

		-- Cursor highlights (referenced by guicursor in core/options.lua).
		-- base16's setup also clears groups, so define them here afterward.
-- 		vim.api.nvim_set_hl(0, "UserNormalCursor", { fg = palette.base00, bg = "#e0a45c" }) -- amber block
-- 		vim.api.nvim_set_hl(0, "UserInsertCursor", { fg = palette.base00, bg = palette.base06 }) -- cream block
-- 	end,
-- }

-- Green phosphor CRT -- dark, low-contrast, single-hue-family retro.
--
-- Calibrated against the green theme above that actually stuck: its #889085 text on
-- #0f120f ground is ~5.7:1 contrast, i.e. deliberately dim. That number is the target
-- here, not the WCAG maximum -- a dim ground with dim text is what makes a palette
-- sit comfortably for a long session, and pushing text toward white undoes it.
--
--   * Ground #050b07: near-black with a green cast. The green channel is kept about
--     twice the red/blue so the ground reads as dark phosphor rather than as grey --
--     at this luminance the hue is carried almost entirely by that ratio, so lifting
--     all three channels evenly is what makes a dark background look washed out.
--     Do NOT push this to black. #020604 was tried and backed out: on paper it changes
--     almost nothing (text 7.1:1 vs 6.9:1, below the threshold anyone perceives), but
--     it reads as harsh over a long session. The commented block below the palette has
--     the exact values if it's ever worth revisiting.
--   * Text #909c8b at ~6.9:1 -- still well under the 8:1 that read as too bright.
--   * Every hue in the green band: grey-green comments, sage types, moss strings, lime
--     keywords. No amber, no orange, no teal drift.
--   * Lime keywords #7fb03a are the single brightest accent (~7.5:1) and the only
--     real pop -- carried over from the old theme, where it was #78ac2e.
--   * Comments and strings are separated by SATURATION, not brightness. Both sit in the
--     same hue, so an earlier pairing (#57815b / #5f9a63) was nearly indistinguishable.
--     Brightness alone can't fix that -- lifting strings far enough to separate puts
--     them above body text and into lime-keyword range. So comments dropped to low
--     chroma (#5f7361, R/G/B spread ~20) while strings gained it (#56a05f, spread ~74):
--     comments read as dim grey, strings as clearly green, at similar-ish luminance.
--   * Comments stay muted rather than bright green so they don't fight the lime
--     keywords. Two loud greens in one file reads as noise.
--
-- The two dials: base00 and base05 move together to set overall contrast; base03 is
-- comment brightness on its own.
return {
	"https://github.com/RRethy/base16-nvim",
	lazy = false,
	priority = 1000,
	config = function()
		local palette = {
			-- UI
			base00 = "#050b07", -- background: green-black
			base01 = "#0c130e", -- cursorline
			base02 = "#16201a", -- selection
			-- Near-black variant. Tried and backed out -- too harsh over a long session.
			-- Kept because the gap is small on paper (text 7.1:1 vs 6.9:1) and worth
			-- another look in a brighter room. Swap all three in together; base01/base02
			-- are already sized as steps above the darker ground.
			-- base00 = "#020604", -- background: black with a green cast
			-- base01 = "#0a0f0b", -- cursorline
			-- base02 = "#141c17", -- selection
			base03 = "#5f7361", -- comments: grey-green, low chroma (~3.9:1)
			base04 = "#46564a", -- line numbers / inactive
			base05 = "#909c8b", -- main text: green-grey (~6.9:1)
			base06 = "#a9b5a3",
			base07 = "#c3cfbd",
			-- Syntax
			base08 = "#a8b6a4", -- variables: a step brighter than body text
			base09 = "#6fae91", -- numbers / constants: green-teal
			base0A = "#9dbb92", -- types: sage
			base0B = "#56a05f", -- strings: saturated moss (~6.3:1)
			base0C = "#6fae91", -- escapes / support
			base0D = "#c3d3ba", -- functions: pale phosphor
			base0E = "#7fb03a", -- keywords: lime, the one pop (old theme's #78ac2e)
			base0F = "#6f8a70", -- macros / specials
		}

		require("base16-colorscheme").setup(palette)

		vim.cmd(string.format(
			[[
      highlight CursorLine guibg=%s
      highlight LineNr guifg=%s
      highlight CursorLineNr guifg=%s
    ]],
			palette.base01,
			palette.base04,
			palette.base05
		))

		-- Treesitter overrides -- keep everything upright, no italics.
		vim.api.nvim_set_hl(0, "@comment", { fg = palette.base03, italic = false })
		vim.api.nvim_set_hl(0, "@string", { fg = palette.base0B })
		vim.api.nvim_set_hl(0, "@keyword", { fg = palette.base0E, italic = false })
		vim.api.nvim_set_hl(0, "@type", { fg = palette.base0A, italic = false })
		vim.api.nvim_set_hl(0, "@type.builtin", { fg = palette.base0A, italic = false }) -- FIX for int
		vim.api.nvim_set_hl(0, "@keyword.type", { fg = palette.base0E, italic = false })
		vim.api.nvim_set_hl(0, "@function", { fg = palette.base0D, italic = false })
		vim.api.nvim_set_hl(0, "@function.builtin", { fg = palette.base0D, italic = false })
		vim.api.nvim_set_hl(0, "@variable", { fg = palette.base08 })
		vim.api.nvim_set_hl(0, "@number", { fg = palette.base09 })
		vim.api.nvim_set_hl(0, "@boolean", { fg = palette.base09 })
		vim.api.nvim_set_hl(0, "@constant", { fg = palette.base09 })

		-- Variables sit in base08, which base16 also uses for DiagnosticError. Left alone,
		-- errors would render in pale blue-grey and read as ordinary code, so set the
		-- diagnostic colors explicitly. Warnings are yellow-green rather than the usual
		-- amber, so they stay out of the orange range while still not reading as comments.
		vim.api.nvim_set_hl(0, "DiagnosticError", { fg = "#c4665c" })
		vim.api.nvim_set_hl(0, "DiagnosticWarn", { fg = "#a8b850" })
		vim.api.nvim_set_hl(0, "DiagnosticInfo", { fg = palette.base0C })
		vim.api.nvim_set_hl(0, "DiagnosticHint", { fg = palette.base0A })
		vim.api.nvim_set_hl(0, "DiagnosticUnnecessary", { fg = palette.base04 })
		vim.api.nvim_set_hl(0, "@lsp.mod.unused", { fg = palette.base04 })

		-- The paren match has to be a real block, not a glow. base02 as the bg (the
		-- earlier choice) is the selection color -- only ~1.2:1 against the ground, so
		-- the box was invisible and a marginally brighter glyph did all the work, which
		-- is easy to miss mid-file. This bg is ~3.9:1 against the ground: unmistakable at
		-- a glance, still inside the green band, and it only ever paints two characters.
		vim.api.nvim_set_hl(0, "MatchParen", { bg = "#3f7a48", fg = "#e4f0df", bold = true })

		-- Terminal palette, so :terminal buffers (lazygit etc.) stay in-theme
		-- instead of falling back to nvim's default saturated ANSI colors.
		local term_colors = {
			[0] = palette.base01,
			[1] = "#c4665c",
			[2] = palette.base0E,
			[3] = "#a8b850",
			-- ANSI 4/12 ("blue") must stay MID-tone. TUIs use blue as a background as
			-- often as a foreground -- lazygit's default selectedLineBgColor is literally
			-- ["blue"] -- so a pale value here paints a near-white selection bar that
			-- swallows the text on top of it. Never map base08/base0D into this slot.
			[4] = "#5f9c80",
			[5] = palette.base0A,
			[6] = "#8cc2a8",
			[7] = palette.base05,
			[8] = palette.base04,
			[9] = "#d4837a",
			[10] = "#96c455",
			[11] = "#bfcc70",
			[12] = "#7fb89a",
			[13] = "#b2c9a8",
			[14] = "#a3d2bd",
			[15] = palette.base07,
		}
		for i, color in pairs(term_colors) do
			vim.g["terminal_color_" .. i] = color
		end

		-- Cursor highlights (referenced by guicursor in core/options.lua).
		-- base16's setup also clears groups, so define them here afterward.
		vim.api.nvim_set_hl(0, "UserNormalCursor", { fg = palette.base00, bg = "#8dc44a" }) -- lime block
		vim.api.nvim_set_hl(0, "UserInsertCursor", { fg = palette.base00, bg = palette.base0D }) -- pale phosphor block
	end,
}
