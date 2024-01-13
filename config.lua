-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny
-- colorschemes
lvim.colorscheme = "gruvbox-material"
--keybindings
vim.keymap.set("i", "jk", "<Esc>")
vim.keymap.set("n", "ss", ":w<CR>")
-- plugins
lvim.plugins = {
	"sainnhe/gruvbox-material",
	{ "junegunn/vim-easy-align", lazy = false },
}
-- configs
lvim.format_on_save.enabled = true

--formatters
local formatters = require("lvim.lsp.null-ls.formatters")
formatters.setup({
	{
		name = "prettier",
		filetypes = { "typescript", "typescriptreact", "javascript", "javascriptreact", "jsx", "css" },
	},
	{ name = "stylua" },
	{ name = "htmlbeautifier" },
	{ name = "yamlfmt" },
})

--linters
local linters = require("lvim.lsp.null-ls.linters")
linters.setup({ name = "golangci-lint" })
