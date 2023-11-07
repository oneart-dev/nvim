return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	event = { "BufReadPre", "BufNewFile" },
	dependancy = {
		"nvim-treesitter/nvim-treesitter-textobjects",
		-- "nvim-treesitter/nvim-treesitter-refactor",
	},
	config = function()
		require("nvim-treesitter.configs").setup({
			ensure_installed = {
				"bash",
				"c",
				"cpp",
				"css",
				"dockerfile",
				"go",
				"gomod",
				"html",
				"java",
				"javascript",
				"json",
				"jsonc",
				"lua",
				"python",
				"regex",
				"rust",
				"toml",
				"typescript",
				"yaml",
				"svelte",
				"gitignore",
				"markdown",
				"markdown_inline",
			},
			highlight = {
				enable = true,
			},
			indent = {
				enable = true,
			},
			incremental_selection = {
				enable = true,
				keymaps = {
					init_selection = "<C-space>",
					node_incremental = "<C-space>",
					scope_incremental = false,
					node_decremental = "<bs>",
				},
			},
			-- refactor = {
			-- 	highlight_definitions = {
			-- 		enable = true,
			-- 		disable = {},
			-- 	},
			-- 	highlight_current_scope = {
			-- 		enable = true,
			-- 		disable = {},
			-- 	},
			-- 	smart_rename = {
			-- 		enable = true,
			-- 		disable = {},
			-- 	},
			-- 	navigation = {
			-- 		enable = true,
			-- 		disable = {},
			-- 	},
			-- },
		})
	end,
}
