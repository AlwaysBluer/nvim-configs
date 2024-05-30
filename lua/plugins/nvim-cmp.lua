return {
    {
		"onsails/lspkind.nvim",
		event = { "VimEnter" },
    },
	-- Code snippet engine
	{
		"L3MON4D3/LuaSnip",
		version = "v2.*",
	},
    {
        "hrsh7th/nvim-cmp",
		dependencies = {
			"hrsh7th/nvim-lspconfig",
			"hrsh7th/cmp-nvim-lsp", -- lsp auto-completion
			"hrsh7th/cmp-buffer", -- buffer auto-completion
			"hrsh7th/cmp-path", -- path auto-completion
			"hrsh7th/cmp-cmdline", -- cmdline auto-completion
		},
		config = function()
			require("plugins-config.nvim-cmp")
		end
    },
}
