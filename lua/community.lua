-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  { import = "astrocommunity.recipes.telescope-nvchad-theme" },
  { import = "astrocommunity.pack.lua" },
  -- import/override with your plugins folder

  -- color
  { import = "astrocommunity.color.nvim-highlight-colors" },
  { import = "astrocommunity.color.transparent-nvim" },
  { import = "astrocommunity.split-and-window.colorful-winsep-nvim" },

  -- colorscheme
  { import = "astrocommunity.recipes.cache-colorscheme" },
  { import = "astrocommunity.colorscheme.dracula-nvim" },
  { import = "astrocommunity.colorscheme.kanagawa-nvim" },
  { import = "astrocommunity.colorscheme.cyberdream-nvim" },
  { import = "astrocommunity.colorscheme.everforest" },
  { import = "astrocommunity.colorscheme.catppuccin" },
  { import = "astrocommunity.colorscheme.gruvbox-nvim" },
  { import = "astrocommunity.colorscheme.iceberg-vim" },
  { import = "astrocommunity.colorscheme.night-owl-nvim" },
  { import = "astrocommunity.colorscheme.melange-nvim" },
  { import = "astrocommunity.colorscheme.tokyonight-nvim" },
  { import = "astrocommunity.colorscheme.rose-pine" },
  -- cmp
  -- { import = "astrocommunity.completion.cmp-latex-symbols" },
  -- editing-support
  { import = "astrocommunity.editing-support.multiple-cursors-nvim" },
  -- { import = "astrocommunity.editing-support.auto-save-nvim" },

  { import = "astrocommunity.utility.noice-nvim" },

  -- diagnostics
  { import = "astrocommunity.diagnostics.trouble-nvim" },
  { import = "astrocommunity.diagnostics.tiny-inline-diagnostic-nvim" },

  -- heirline
  -- { import = "astrocommunity.bars-and-lines.lualine-nvim" },
  { import = "astrocommunity.bars-and-lines.bufferline-nvim" },
  -- { import = "astrocommunity.recipes.disable-tabline" },
  -- pack
  { import = "astrocommunity.pack.docker" },
  { import = "astrocommunity.pack.go" },
  { import = "astrocommunity.pack.html-css" },
  { import = "astrocommunity.pack.hyprlang" },
  { import = "astrocommunity.pack.json" },
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.pack.markdown" },
  { import = "astrocommunity.pack.rainbow-delimiter-indent-blankline" },
  { import = "astrocommunity.pack.rust" },
  { import = "astrocommunity.pack.tailwindcss" },
  { import = "astrocommunity.pack.typescript-all-in-one" },
  { import = "astrocommunity.pack.cpp" },
  { import = "astrocommunity.pack.bash" },
  { import = "astrocommunity.pack.svelte" },

  -- media
  { import = "astrocommunity.media.codesnap-nvim" },
  -- { import = "astrocommunity.media.image-nvim" },

  -- terminal
  { import = "astrocommunity.docker.lazydocker" },

  -- code-runner
  -- { import = "astrocommunity.code-runner.compiler-nvim" },
  { import = "astrocommunity.code-runner.sniprun" },

  -- indent
  -- { import = "astrocommunity.indent.indent-blankline-nvim" },
  { import = "astrocommunity.editing-support.suda-vim" },
  --
  -- search
  { import = "astrocommunity.search.nvim-spectre" },

  -- LSP
  { import = "astrocommunity.lsp.lsp-signature-nvim" },
  { import = "astrocommunity.lsp.lsp-lens-nvim" },

  -- md and latex
  { import = "astrocommunity.markdown-and-latex.render-markdown-nvim" },
  -- recipes
  { import = "astrocommunity.recipes.vscode-icons" },
  { import = "astrocommunity.recipes.telescope-nvchad-theme" },
  { import = "astrocommunity.recipes.astrolsp-no-insert-inlay-hints" },
  { import = "astrocommunity.recipes.auto-session-restore" },
  { import = "astrocommunity.color.transparent-nvim" },
}
