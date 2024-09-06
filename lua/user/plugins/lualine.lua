return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },

	config = function()
		local lualine = require("lualine")
		lualine.setup({
			options = {
				component_separators = { left = "", right = "" },
			},
			sections = {
				-- lualine_b = {'branch', 'diff', 'diagnostics'},
				-- lualine_a = { "mode", icons_enabled = {
				-- 	{ "branch", icon = "" },
				-- } },
				lualine_a = { "mode" },
				lualine_b = { { "branch", icon = "󱗿" }, "", "" },
				-- lualine_b = { { "branch", icon = "" }, "", "" },
				lualine_x = { "encoding", "", "filetype" },
			},
		})
	end,
}
