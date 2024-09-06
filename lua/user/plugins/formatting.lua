return {
	"stevearc/conform.nvim",
	-- BufWritePre before writing the whole buffer into file
	-- BufReadPre When starting to edit a new buffer, before reading the file into the buffer.  Not used if the file doesn't exist.
	lazy = true,
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		local conform = require("conform")
		local notify = require("notify")

		local function show_notification(message, level)
			notify(message, level, { titile = "conform.nvim" })
		end

		conform.setup({
			formatters_by_ft = {
				javascript = { "prettier" },
				typescript = { "prettier" },
				javascriptreact = { "prettier" },
				typescriptreact = { "prettier" },
				svelte = { "prettier" },
				css = { "prettier" },
				html = { "prettier" },
				json = { "prettier" },
				yaml = { "prettier" },
				markdown = { "prettier" },
				graphql = { "prettier" },
				liquid = { "prettier" },
				lua = { "stylua" },
				python = { "isort", "black" },
				c = {},
			},
			-- format_on_save = {
			-- 	lsp_fallback = true,
			-- 	async = false,
			-- 	timeout_ms = 1000,
			-- },
			format_on_save = function(bufnr)
				-- Disable with a global or buffer-local variable
				if vim.g.disable_autoformat or vim.b[bufnr].disable_autoformat then
					return
				end
				return { timeout_ms = 500, lsp_fallback = true }
			end,
		})

		-- format command
		vim.api.nvim_create_user_command("Format", function(args)
			local range = nil
			if args.count ~= -1 then
				local end_line = vim.api.nvim_buf_get_lines(0, args.line2 - 1, args.line2, true)[1]
				range = {
					start = { args.line1, 0 },
					["end"] = { args.line2, end_line:len() },
				}
			end
			require("conform").format({ async = true, lsp_format = "fallback", range = range })
		end, { range = true, desc = "Formatting the file" })

		-- format toggle command
		vim.api.nvim_create_user_command("FormatToggle", function(args)
			local is_global = not args.bang
			if is_global then
				vim.g.disable_autoformat = not vim.g.disable_autoformat
				if vim.g.disable_autoformat then
					show_notification("Autoformat-on-save disabled globally", "info")
				else
					show_notification("Autoformat-on-save enabled globally", "info")
				end
			else
				vim.b.disable_autoformat = not vim.b.disable_autoformat
				if vim.b.disable_autoformat then
					show_notification("Autoformat-on-save disabled for this buffer", "info")
				else
					show_notification("Autoformat-on-save enabled for this buffer", "info")
				end
			end
		end, {
			desc = "Toggle autoformat-on-save",
			bang = true,
		})

		-- formatting selected line
		-- vim.keymap.set({ "n", "v" }, "<leader>mp", function()
		--   conform.format({
		--     lsp_fallback = true,
		--     async = false,
		--     timeout_ms = 1000,
		--   })
		-- end, { desc = "Format file or range (in visual mode)" })
	end,
}
