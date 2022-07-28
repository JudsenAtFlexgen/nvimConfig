lspconfig = require "lspconfig"
util = require "lspconfig/util"

-- Set number
vim.wo.number = true

require('lspconfig')
require('plugins')

lsp = require('lsp-zero')
lsp.preset('recommended')
lsp.setup()


