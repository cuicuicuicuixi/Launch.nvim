-- local M = {
--   "LunarVim/primer.nvim",
--   lazy = false, -- make sure we load this during startup if it is your main colorscheme
--   priority = 1000, -- make sure to load this before all the other start plugins
--   commit = "b8d7e08eed9a61eb2f49b9196b01f7f2932735ff",
-- }
--
-- function M.config()
--   vim.cmd.colorscheme "primer_dark"
-- end

local M = {
    "rebelot/kanagawa.nvim",
    lazy = false,
    priority = 1000,
    commit = "c19b9023842697ec92caf72cd3599f7dd7be4456",
}

function M.config()
  vim.cmd.colorscheme "kanagawa"
end

return M
