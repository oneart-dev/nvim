return {
	"stevearc/oil.nvim",
	opts = {},
	config = function()
		require("oil").setup({
			keymaps = {
				["<C-v>"] = "actions.select_vsplit",
				["<C-h>"] = false,
				["<C-l>"] = false,
			},
			view_options = {
				-- Show files and directories that start with "."
				show_hidden = true,
			},
		})

		vim.keymap.set("n", "-", "<cmd>Oil<CR>", { desc = "Open parent dir" })
	end,
	-- Optional dependencies
	dependencies = { "nvim-tree/nvim-web-devicons" },
}
