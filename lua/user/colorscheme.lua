local M = {
  -- "folke/tokyonight.nvim",
  -- "rebelot/kanagawa.nvim",
  "0xstepit/flow.nvim",
  lazy = false,
  opts = {},
  priority = 1000,
}

function M.config()
  require("flow").setup {
    transparent = true,
    fluo_color = "pink",
    mode = "normal",
    aggressive_spell = false,
  }
  -- require("tokyonight").setup {
  --   transparent = false,
  --   styles = {
  --     -- Style to be applied to different syntax groups
  --     -- Value is any valid attr-list value for `:help nvim_set_hl`
  --     comments = { italic = true },
  --     keywords = { italic = true },
  --     functions = {},
  --     variables = {},
  --     -- Background styles. Can be "dark", "transparent" or "normal"
  --     sidebars = "transparent", -- style for sidebars, see below
  --     floats = "transparent", -- style for floating windows
  --   },
  -- }
  -- vim.cmd.colorscheme "tokyonight"
  vim.cmd.colorscheme "flow"
end

return M
