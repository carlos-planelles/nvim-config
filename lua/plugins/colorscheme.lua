return {
  -- add theme
  { "bluz71/vim-moonfly-colors" },

  -- Configure LazyVim to load theme
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "moonfly",
    },
  },
}
