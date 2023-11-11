return {
  "neovim/nvim-lspconfig",
--  event = { "BufReadPre", "BufNewFile" },
--  dependencies = {
--    "hrsh7th/cmp-nvim-lsp",
--    { "antosha417/nvim-lsp-file-operations", config = true },
--  },
  config = function()
    -- import lspconfig plugin
    local lspconfig = require("lspconfig")

    -- Configure LSP servers
    lspconfig["ansiblels"].setup({})
    lspconfig["bashls"].setup({})
    lspconfig["jsonls"].setup({})
    lspconfig["lua_ls"].setup({})
    lspconfig["pyright"].setup({})
    lspconfig["terraformls"].setup({})
    lspconfig["yamlls"].setup({})

  end,
}
