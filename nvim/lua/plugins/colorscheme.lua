return {
  {
    "scottmckendry/solarized-osaka.nvim",
    lazy = false,
    priority = 1000,
    opts = function(_, opts)
      opts.transparent = true
      opts.italic_comments = true
      opts.borderless_telescope = false
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "solarized-osaka",
    },
  },

  -- modicator (auto color line number based on vim mode)
  {
    "mawkler/modicator.nvim",
    dependencies = "scottmckendry/solarized-osaka.nvim",
    init = function()
      -- These are required for Modicator to work
      vim.o.cursorline = false
      vim.o.number = true
      vim.o.termguicolors = true
    end,
    opts = {},
  },
}
