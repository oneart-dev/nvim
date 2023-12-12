local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)
print("Loading lazy...")
require("lazy").setup({ { import = "oneart.plugins" }, { import = "oneart.plugins.lsp" } })
-- require("lazy").setup({ { import = "oneart.plugins-test" } , { import = "oneart.plugins-test.lsp" }})
