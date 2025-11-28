return {
  -- Disable semantic tokens for vtsls to prevent UI/colorscheme changes
  {
    "neovim/nvim-lspconfig",
    opts = {
      setup = {
        vtsls = function(_, opts)
          -- This runs when vtsls attaches to a buffer
          vim.api.nvim_create_autocmd("LspAttach", {
            callback = function(args)
              local client = vim.lsp.get_client_by_id(args.data.client_id)
              if client and client.name == "vtsls" then
                -- Disable semantic tokens (syntax highlighting from LSP)
                client.server_capabilities.semanticTokensProvider = nil
              end
            end,
          })
          return false -- continue with default setup
        end,
      },
    },
  },
}
