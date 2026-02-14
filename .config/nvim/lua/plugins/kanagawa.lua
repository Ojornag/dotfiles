return{
    {
	"rebelot/kanagawa.nvim",
	config = function()
		local kg = require("kanagawa")
		kg.setup {
			transparent = true,
			colors = {
				theme = {
					all = {
						ui = {
							bg_gutter = "none",
						},
					}
				}
			},
			overrides = function(colors)
				local theme = colors.theme
				return {
					NormalFloat = { bg = "none" },
					FloatBorder = { bg = "none" },
					FloatTitle = { bg = "none" },
					Pmenu = { bg = "none"},
					PmenuKind = { bg = "none"},
					PmenuExtra = { bg = "none"},
					PmenuSbar = { bg = "none"},
					PmenuThumb = { bg = "none"},

					-- Save an hlgroup with dark background and dimmed foreground
					-- so that you can use it where your still want darker windows.
					-- E.g.: autocmd TermOpen * setlocal winhighlight=Normal:NormalDark
					NormalDark = { fg = theme.ui.fg_dim, bg = theme.ui.bg_m3 },

					-- Popular plugins that open floats will link to NormalFloat by default;
					-- set their background accordingly if you wish to keep them dark and borderless
					LazyNormal = { bg = theme.ui.bg_m3, fg = theme.ui.fg_dim },
					MasonNormal = { bg = theme.ui.bg_m3, fg = theme.ui.fg_dim },
				}
			end,
		}
		vim.cmd.colorscheme "kanagawa"
	end
    }
}
