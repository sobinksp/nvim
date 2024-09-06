return {
	"nvim-telescope/telescope.nvim",
	branch = "0.1.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		local telescope = require("telescope")
		-- local actions = require("telescope.actions")

		telescope.setup({
			path_display = { "smart" },
			defaults = {
				file_ignore_patterns = {
					"node_modules",
				},
			},
		})

		telescope.load_extension("fzf")
	end,
}
