return {
  {
    "bluz71/vim-moonfly-colors",
    -- load early so colorscheme is available for other UI plugins
    lazy = false,
    priority = 1000,
    config = function()
      -- (optional) set any colorscheme globals here, BEFORE applying the scheme
      -- e.g. vim.g.moonflySomeOption = true

      -- set background if you want
      -- vim.o.background = "dark"

      -- apply the colorscheme
      vim.cmd("colorscheme moonfly")
    end,
  },
}
