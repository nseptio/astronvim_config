return {
  "nvim-lualine/lualine.nvim",
  event = "VeryLazy",
  opts = function()
    local colors = {
      blue = "#80a0ff",
      cyan = "#79dac8",
      black = "#080808",
      white = "#c6c6c6",
      red = "#ff5189",
      violet = "#d183e8",
      grey = "#303030",
      bg = "#202328",
      fg = "#bbc2cf",
      yellow = "#ECBE7B",
      green = "#98be65",
      orange = "#FF8800",
      magenta = "#c678dd",
    }

    local conditions = {
      buffer_not_empty = function() return vim.fn.empty(vim.fn.expand "%:t") ~= 1 end,
      hide_in_width = function() return vim.fn.winwidth(0) > 80 end,
      check_git_workspace = function()
        local filepath = vim.fn.expand "%:p:h"
        local gitdir = vim.fn.finddir(".git", filepath .. ";")
        return gitdir and #gitdir > 0 and #gitdir < #filepath
      end,
    }

    require("lualine").setup {
      options = {
        -- theme = custom_theme,
        component_separators = "",
        section_separators = { left = "", right = "" },
      },
      sections = {
        lualine_a = { { "mode", separator = { left = " " }, right_padding = 2 } },
        lualine_b = {
          {
            function()
              local bufname = vim.fn.bufname()
              if bufname:match "neo%-tree filesystem" then return "neo-tree" end
              return vim.fn.fnamemodify(bufname, ":t")
            end,
            cond = conditions.buffer_not_empty,
            color = { gui = "bold" },
          },
          { "branch" },
        },
        lualine_c = {
          { "filesize", cond = conditions.buffer_not_empty },
          {
            "diagnostics",
            sources = { "nvim_diagnostic" },
            symbols = { error = " ", warn = " ", info = " " },
            diagnostics_color = {
              error = { fg = colors.red },
              warn = { fg = colors.yellow },
              info = { fg = colors.cyan },
            },
          },
          { function() return "%=        " end }, -- Center alignment
          {
            function()
              local msg = ""
              local buf_ft = vim.api.nvim_get_option_value("filetype", { buf = 0 })
              local clients = vim.lsp.get_clients()
              if next(clients) == nil then return msg end
              for _, client in ipairs(clients) do
                if client.config.filetypes and vim.fn.index(client.config.filetypes, buf_ft) ~= -1 then
                  return client.name
                end
              end
              return msg
            end,
            icon = " LSP:",
            color = { fg = "#ffffff", gui = "bold" },
          },
          "%=", -- Transparent middle
        },
        lualine_x = {
          {
            "encoding",
            fmt = string.upper,
            cond = conditions.hide_in_width,
            color = { fg = colors.white, gui = "bold" },
          },
          -- { "fileformat", fmt = string.upper, icons_enabled = false, color = { fg = colors.white, gui = "bold" } },
          {
            "diff",
            symbols = { added = " ", modified = "󰝤 ", removed = " " },
            diff_color = {
              added = { fg = colors.green },
              modified = { fg = colors.orange },
              removed = { fg = colors.red },
            },
            cond = conditions.hide_in_width,
          },
        },
        lualine_y = { { "filetype", color = { gui = "bold" } }, { "progress", color = { gui = "bold" } } },
        lualine_z = { { "location", separator = { right = " " }, left_padding = 2 } },
      },
      inactive_sections = {
        lualine_a = { "filename" },
        lualine_b = {},
        lualine_c = {},
        lualine_x = {},
        lualine_y = {},
        lualine_z = { "location" },
      },
      tabline = {},
      extensions = {},
    }
  end,
  specs = {
    {
      "rebelot/heirline.nvim",
      optional = true,
      opts = function(_, opts) opts.statusline = nil end,
    },
  },
}
