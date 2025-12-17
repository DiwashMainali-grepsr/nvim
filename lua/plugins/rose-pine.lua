return {
  {
    "rose-pine/neovim",
    lazy = false, -- load at startup so other UI plugins can read colors
    priority = 1000, -- load early
    config = function()
      -- Choose a variant: "main" (default), "moon", or "dawn"
      local variant = "main"

      -- If the plugin provides a setup API, call it (wrapped in pcall to be safe)
      local ok, rosepine = pcall(require, "rose-pine")
      if ok and type(rosepine.setup) == "function" then
        rosepine.setup({
          variant = variant,
          -- you can add other options here, for example:
          -- disable_background = false,
          -- groups = { background = "base" },
        })
      end

      -- Apply the colorscheme
      vim.cmd("colorscheme rose-pine")
    end,
  },
}
