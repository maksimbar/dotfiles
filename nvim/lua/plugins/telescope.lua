require("telescope").setup({
  defaults = {
    file_ignore_patterns = {
      "node_modules/.*",
      ".git/.*",
      ".toc",
      ".fls",
      ".log",
      ".fdb_latexmk",
      ".aux",
      ".synctex.gz",
    },
  },
})
