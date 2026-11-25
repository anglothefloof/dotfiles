return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      diagnostics = {
        update_in_insert = false,
      },
      servers = {
        gopls = {
          settings = {
            gopls = {
              hints = {
                assignVariableTypes = false,
                compositeLiteralFields = false,
                compositeLiteralTypes = false,
                constantValues = false,
                functionTypeParameters = false,
                parameterNames = false,
                rangeVariableTypes = false,
              },
              analyses = {
                packageDoc = false,
                ST1000 = false,
              },
            },
          },
        },
      },
      setup = {
        gopls = function(_, opts)
          Snacks.util.lsp.on({ name = "gopls" }, function(_, client)
            if
              client.config
              and client.config.init_options
              and client.config.init_options.semanticTokens
              and not client.server_capabilities.semanticTokensProvider
            then
              local semantic = client.config.capabilities.textDocument.semanticTokens
              client.server_capabilities.semanticTokensProvider = {
                full = true,
                legend = {
                  tokenTypes = semantic.tokenTypes,
                  tokenModifiers = semantic.tokenModifiers,
                },
                range = true,
              }
            end
          end)
        end,
      },
    },
  },
}
