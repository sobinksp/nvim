return {
	"nvim-tree/nvim-tree.lua",
	lazy = false, -- make sure we load this during startup
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		local nvimtree = require("nvim-tree")
		-- disable netrw at the very start of your init.lua
		vim.g.loaded_netrw = 1
		vim.g.loaded_netrwPlugin = 1

		-- optionally enable 24-bit colour
		-- vim.opt.termguicolors = true
		nvimtree.setup({
			view = {
				width = 30,
			},
			actions = {
				open_file = {
					window_picker = {
						enable = false,
					},
				},
			},
			renderer = {
				indent_markers = {
					enable = true,
				},
			},
			git = {
				ignore = false,
			},
		})
		-- nvimtree.setup({
		--   sort = {
		--     sorter = "case_sensitive",
		--   },
		--   view = {
		--     width = 30,
		--   },
		--   action = {
		--     open_file = {
		--       window_picker = {
		--         enable = false
		--       },
		--     }
		--   }
		-- })
	end,
}
