return {
	"stevearc/oil.nvim",
	opts = {},
	config = function()
		require("oil").setup({
			keymaps = {
				-- 	["yp"] = {
				-- 		desc = "Copy filepath to system clipboard",
				-- 		callback = function()
				-- 			require("oil.actions").copy_entry_path.callback()
				-- 			vim.fn.setreg("+", vim.fn.getreg(vim.v.register))
				-- 		end,
				-- 	},
				-- },
				-- ["yp"] = {
				-- 	desc = "Copy relative filepath to system clipboard",
				-- 	callback = function()
				-- 		local oil = require("oil")
				-- 		local entry = oil.get_cursor_entry()
				-- 		if not entry then
				-- 			return
				-- 		end
				--
				-- 		-- Oil buffer directory
				-- 		local dir = oil.get_current_dir()
				--
				-- 		-- Absolute path
				-- 		local abs_path = dir .. entry.name
				--
				-- 		-- Relative to cwd
				-- 		local rel_path = vim.fn.fnamemodify(abs_path, ":.")
				--
				-- 		vim.fn.setreg("+", rel_path)
				-- 		vim.notify("Copied: " .. rel_path, vim.log.levels.INFO)
				-- 	end,
				-- },
			},
			columns = {
				-- "icon", --  remove icon
				-- "permissions",
				-- "size",
				-- "mtime",
			},
			view_options = {
				show_hidden = true,
				is_always_hidden = function(name, _)
					return name == ".." or name == ".git"
				end,
			},
			icons = {
				directory = "",
				file = "",
			},
		})

		vim.keymap.set("n", "<leader>o", "<CMD>Oil<CR>", { silent = true })
	end,
}
