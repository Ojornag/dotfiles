local lsp = require('lsp-zero').preset({})

lsp.on_attach(function(client, bufnr)
	-- see :help lsp-zero-keybindings
	-- to learn the available actions
	lsp.default_keymaps({buffer = bufnr})
end)

-- (Optional) Configure lua language server for neovim
require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())

local cmp = require('cmp')
cmp.setup {
	window = {
		completion = {
			border = 'rounded',
			scrollbar = '║',
			winhighlight = "Normal:CmpNormal,FloatBorder:CmpBorder,FloatBorder:CmpBorder,CursorLine:CmpCursor"
		},
		documentation = {
			border = 'rounded',
			scrollbar = '║',
			winhighlight = "Normal:CmpNormal,FloatBorder:CmpBorder"
		}
	}
}

lsp.setup()
