local M = {
  "p00f/clangd_extensions.nvim",
  ft = { "c", "cpp" },
}

function M.config()
    require("clangd_extensions").setup()
end

return M
