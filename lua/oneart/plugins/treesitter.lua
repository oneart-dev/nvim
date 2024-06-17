return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	event = { "BufReadPre", "BufNewFile" },
	dependencies = {
		"nvim-treesitter/nvim-treesitter-textobjects",
		-- "nvim-treesitter/nvim-treesitter-refactor",
	},
	config = function()
		require("nvim-treesitter.configs").setup({
			ensure_installed = {
				"vimdoc",
				"bash",
				"c",
				"cpp",
				"css",
				"scss",
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
				"vue",
			},
			highlight = {
				enable = true,
				disable = function(lang, buf)
					local max_filesize = 100 * 1024 -- 100 KB
					local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
					if ok and stats and stats.size > max_filesize then
						return true
					end
				end,
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
