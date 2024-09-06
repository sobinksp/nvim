return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	-- event = { "LazyFile", "VeryLazy" },
	event = { "BufReadPost", "BufWritePost", "BufNewFile", "VeryLazy" },
	config = function()
		local treesitter = require("nvim-treesitter.configs")
		treesitter.setup({
			auto_install = true,
			highlight = {
				enable = true,
				-- disable = { "lua", "rust" },
			},
			indent = {
				enable = true,
			},

			ensure_installed = {
				"c",
				"cpp",
				"javascript",
				"typescript",
				"html",
				"css",
				"tsx",
				"python",
				"rust",
				"lua",
				"markdown",
				"yaml",
				"json",
				"gitignore",
				"dockerfile",
				"bash",
			},
		})
	end,
}
