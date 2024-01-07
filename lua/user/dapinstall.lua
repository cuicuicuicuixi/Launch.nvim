M = {
  "ravenxrz/DAPInstall.nvim",
  commit = "8798b4c36d33723e7bba6ed6e2c202f84bb300de",
  config = function()
    require("dap-install").setup {}
    require("dap-install").config("python", {})
  end,
}

return M
