return {
	"shortcuts/no-neck-pain.nvim",
	version = "*",
	config = function()
		local nnp = require("no-neck-pain")
		nnp.setup({
			width = 105,
			autocmds = {
				enableOnVimEnter = true,
			},
			buffers = {
				left = {
					enabled = false,
				},
				colors = {
					blend = 0.1,
				},
				scratchPad = {
					-- set to `false` to
					-- disable auto-saving
					enabled = true,
					-- set to `nil` to default
					-- to current working directory
					location = "~/.config/nvim/scratchpad",
				},
				bo = {
					filetype = "md",
				},
			},
		})
	end,
}
