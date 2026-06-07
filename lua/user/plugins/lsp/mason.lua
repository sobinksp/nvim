return {
	"williamboman/mason.nvim",
	-- Pin to 1.x: mason 2.x / mason-lspconfig 2.x require Neovim 0.11+
	-- (they call vim.lsp.enable, which is nil on 0.10).
	version = "^1.0.0",
	dependencies = {
		{ "williamboman/mason-lspconfig.nvim", version = "^1.0.0" },
		-- pinned to last commit compatible with mason 1.x
		{ "WhoIsSethDaniel/mason-tool-installer.nvim", commit = "c5e07b8ff54187716334d585db34282e46fa2932" },
	},
	config = function()
		local mason = require("mason")
		local mason_lspconfig = require("mason-lspconfig")
		local mason_tool_installer = require("mason-tool-installer")
		-- enable mason and configure icons
		mason.setup({
			ui = {
				icons = {
					package_installed = "✓",
					package_pending = "➜",
					package_uninstalled = "✗",
				},
			},
		})

		mason_lspconfig.setup({
			-- list of servers for mason to install
			-- NOTE: trying quick_lint_js for now, if it has any problem roll back to tsserver
			ensure_installed = {
				"clangd",
				"rust_analyzer",
				"quick_lint_js",
				"ts_ls",
				-- "tsserver",
				"html",
				"cssls",
				"tailwindcss",
				"lua_ls",
				"prismals",
				"pyright",
				"gopls",
			},
		})
		mason_tool_installer.setup({
			ensure_installed = {
				"prettier", -- prettier formatter
				"stylua", -- lua formatter
				-- "isort", -- python formatter
				-- "black", -- python formatter
			},
		})
	end,
}
