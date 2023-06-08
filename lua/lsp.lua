local lspconfig = require('lspconfig')

lspconfig.ccls.setup {
    on_attach = lsp_on_attach
}
