vim.api.nvim_create_autocmd("BufEnter", {
	callback = function()
		if not vim.env.TMUX then
			return
		end
		local filename = vim.fn.expand("%:t")
		if filename ~= "" then
			vim.fn.system("tmux rename-window " .. vim.fn.shellescape(filename))
		end
	end,
})

vim.api.nvim_create_autocmd("VimLeave", {
	callback = function()
		if not vim.env.TMUX then
			return
		end
		vim.fn.system("tmux rename-window zsh")
	end,
})
