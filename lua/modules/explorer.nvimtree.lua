return {
	-- This is needed for telescope to work fine
	{
		'nvim-tree/nvim-tree.lua',
		version = "*",
		lazy = false,
		dependencies = {
			'nvim-tree/nvim-web-devicons',
		},
		config = function()
			require('nvim-tree').setup({
				sort_by = "case_sensitive",
				--  auto_close = true, Deprecated
				--  actions = {
				--    open_file = {
				--      quit_on_open = true,
				--    },
				-- },
				view = {
					side = "right",
					width = 38,
					--hide_root_folder = true,
					-- mappings = {
					--   list = {
					--     { key = "u", action = "dir_up" },
					--   },
					-- },
				},
				renderer = {
					group_empty = true,
				},
				filters = {
					dotfiles = true,
					custom = { "^.git$", "^.DS_Store$" },
				},
			})
		end
	},
}