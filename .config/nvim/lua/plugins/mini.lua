return {
	{
	'echasnovski/mini.nvim',
	config = function()
		local statusline = require 'mini.statusline'
		statusline.setup { use_icons = true }
		require('mini.indentscope').setup()
		require('mini.notify').setup()
		require('mini.icons').setup()
	end
	}
}
