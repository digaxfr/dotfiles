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
    lspconfig["ansiblels"].setup({
      settings = {},
      filetypes = { 'yaml.ansible' }
    })
    lspconfig["bashls"].setup({})
    lspconfig["helm_ls"].setup({})
    lspconfig["jsonls"].setup({})
    lspconfig["lua_ls"].setup({})
    lspconfig["pyright"].setup({})
    lspconfig["terraformls"].setup({})
    lspconfig["yamlls"].setup({})

    -- Set up additional keybindings
--    opts.desc = "Show line diagnostics"
    vim.keymap.set("n", "<leader>d", vim.diagnostic.open_float, opts) -- show diagnostics for line

  end,
}
