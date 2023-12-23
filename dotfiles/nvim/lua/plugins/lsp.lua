return {
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end
    },
    {
        'williamboman/mason-lspconfig.nvim',
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = { "lua_ls", "pyright", "bashls", "powershell_es", "clangd", "rust_analyzer", "zls"}
            })
        end
    },
    {
        -- References:
        -- https://github.com/neovim/nvim-lspconfig

        'neovim/nvim-lspconfig',
        config = function()
            local lspconfig = require('lspconfig')
            -- lspconfig.hls.setup({})
            -- lspconfig.golangci_lint_ls.setup{}
            lspconfig.lua_ls.setup({})
            lspconfig.pyright.setup({})
            lspconfig.bashls.setup({})
            lspconfig.powershell_es.setup({})
            lspconfig.clangd.setup({})
            lspconfig.zls.setup({})
            lspconfig.rust_analyzer.setup({ 
                -- Server-specific settings. See `:help lspconfig-setup`
            settings = {
              ['rust-analyzer'] = {},
            },
          })
            


            vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
            vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
            vim.keymap.set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, {})

        end
    }
}


