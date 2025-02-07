return {
  "michaelb/sniprun",
  opts = {
    display_options = {
      terminal_scrollback = vim.o.scrollback, -- change terminal display scrollback lines
      terminal_line_number = false, -- whether show line number in terminal window
      terminal_signcolumn = false, -- whether show signcolumn in terminal window
      terminal_width = 45, -- change the terminal display option width
    },
  },
  build = "bash ./install.sh 1",
  cmd = "SnipRun",
}
