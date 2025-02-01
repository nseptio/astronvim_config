return {
  lsp = {
    on_attach = function(client, bufnr)
      if client.server_capabilities.documentHighlightProvider then
        vim.api.nvim_del_augroup_by_name(vim.fn.printf("lsp_document_highlight_%d", bufnr))
      end
    end,
  },
}
