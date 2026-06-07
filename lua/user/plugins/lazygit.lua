-- nvim v0.8.0
return {
	"kdheepak/lazygit.nvim",
	-- Pinned to the last commit that renders correctly on Neovim 0.10.
	-- Newer commits (e.g. #158 window-sizing) blank the floating terminal on 0.10;
	-- they work on 0.11+. Unpin this if/when you upgrade Neovim.
	commit = "2432b447483f42ff2e18b2d392cb2bb27e495c08",
	cmd = {
		"LazyGit",
		"LazyGitConfig",
		"LazyGitCurrentFile",
		"LazyGitFilter",
		"LazyGitFilterCurrentFile",
	},
	-- optional for floating window border decoration
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	-- setting the keybinding for LazyGit with 'keys' is recommended in
	-- order to load the plugin when the command is run for the first time
	keys = {
		{ "<leader>lg", "<cmd>LazyGit<cr>", desc = "LazyGit" },
	},
	-- config = function()
	-- 	vim.g.lazygit_floating_window_winblend = 10
	-- end,
}
