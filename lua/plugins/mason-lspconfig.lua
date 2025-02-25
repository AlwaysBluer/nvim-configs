return {
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require('mason-lspconfig').setup({
                ensure_installed = {'jdtls', 'pylyzer'}
            })
        end
    },

	{
		"neovim/nvim-lspconfig"
	},
    
    {
        "williamboman/mason.nvim",
        config = function()
            require('mason').setup({
                ui = {
                    icons = {
                        package_installed = "✓",
                        package_pending = "➜",
                        package_uninstalled = "✗"
                    }
                }
            })

        end
    }

}
