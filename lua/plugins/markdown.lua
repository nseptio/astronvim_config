---@type LazySpec
return {
  -- install without yarn or npm
  {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    build = "cd app && npm install && git restore .",
    -- or if you use yarn: (I have not checked this, I use npm)
    -- build = "cd app && yarn install && git restore .",
    init = function() vim.g.mkdp_filetypes = { "markdown" } end,
    ft = { "markdown" },
    dependencies = {
      { "AstroNvim/astroui", opts = { icons = { Markdown = "" } } },
      {
        "AstroNvim/astrocore",
        optional = true,
        opts = function(_, opts)
          local maps = opts.mappings
          local prefix = "<Leader>M"

          maps.n[prefix] = { desc = require("astroui").get_icon("Markdown", 1, true) .. "Markdown" }
          maps.n[prefix .. "p"] = { "<cmd>MarkdownPreview<cr>", desc = "Preview" }
          maps.n[prefix .. "s"] = { "<cmd>MarkdownPreviewStop<cr>", desc = "Stop preview" }
          maps.n[prefix .. "t"] = { "<cmd>MarkdownPreviewToggle<cr>", desc = "Toggle preview" }
        end,
      },
    },
  },
}
