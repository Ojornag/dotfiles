require('gruvbox').setup({
	terminal_colors = true,
	bold = true,
	italic = {
		strings = true,
		emphasis = true,
		comments = true,
		operators = false,
		folds = true,
	},
	overrides = {
		CmpCursor = {bg = "#474044"}
	},
	transparent_mode = true
})
vim.o.background='dark'
vim.cmd.colorscheme('gruvbox')
