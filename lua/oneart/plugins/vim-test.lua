return {
	"vim-test/vim-test",
	cmd = { "TestNearest", "TestFile", "TestSuite", "TestLast", "TestVisit" },
	config = function()
		vim.g["test#go#gotest#options"] = "-v -timeout 15s"

		-- vim.g['test#strategy'] = 'neoterm'
		-- vim.g['test#neoterm#term_position'] = 'vert'
		vim.g["test#preserve_screen"] = 1
		-- vim.g['test#javascript#runner'] = 'vitest'
		vim.g.neoterm_shell = "zsh"
		-- vim.g.neoterm_automap_keys = ''
		vim.g.neoterm_default_mod = "vertical"
		vim.keymap.set("t", "<Esc>", [[<C-\><C-n>]])
	end,
	keys = {
		{ "<leader>tt", ":TestNearest<CR>" },
		{ "<leader>tf", ":TestFile<CR>" },
		{ "<leader>ts", ":TestSuite<CR>" },
		{ "<leader>tl", ":TestLast<CR>" },
		{ "<leader>tv", ":TestVisit<CR>" },
	},
}
