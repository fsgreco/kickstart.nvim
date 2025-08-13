return {
	-- NOTE: Plugins can be added with a link (or for a github repo: 'owner/repo' link).
	{ 'NMAC427/guess-indent.nvim' }, -- Detect tabstop and shiftwidth automatically
	-- Highlight todo, notes, etc in comments
	{ 'folke/todo-comments.nvim', event = 'VimEnter', dependencies = { 'nvim-lua/plenary.nvim' }, opts = { signs = false } },
	-- { 'tpope/vim-fugitive' }
	-- { 'tpope/vim-rhubarb', },

	-- Plugin for joining/splitting blocks of code
	{ 'Wansmer/treesj', dependencies = { 'nvim-treesitter/nvim-treesitter' }, opts = {} },

	-- { "kylechui/nvim-surround", event = "VeryLazy", opts = {} },

	-- Plugins for writing --

	-- { 'reedes/vim-pencil', ft = { 'markdown', 'text' } },

	-- { "folke/twilight.nvim", cmd = "Twilight", opts = {} },

	-- { 'folke/zen-mode.nvim', cmd = "ZenMode", opts = {} },
}