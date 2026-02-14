return {
	{
	"nvim-tree/nvim-tree.lua",
	config = function()
		local api = require("nvim-tree.api")
		vim.keymap.set("n", "<leader>e", api.tree.toggle, { desc = "Toggle nvim tree" })

		require("nvim-tree").setup()
	end
	}
}
