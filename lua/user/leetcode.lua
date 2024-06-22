local leet_arg = "leetcode.nvim"
local M = {
  "kawre/leetcode.nvim",
  build = ":TSUpdate html",
  lazy = leet_arg ~= vim.fn.argv()[1],
  dependencies = {
    "nvim-telescope/telescope.nvim",
    "nvim-lua/plenary.nvim", -- telescope 所需
    "MunifTanjim/nui.nvim",
  },
  opts = {
    -- 配置放在这里
    arg = leet_arg,
    -- cn = {
    --   enabled = true,
    -- },
    cn = { -- leetcode.cn
      enabled = true, ---@type boolean
      translator = true, ---@type boolean
      translate_problems = true, ---@type boolean
    },
    -- injector = { ---@type table<lc.lang, lc.inject>
    --   ["cpp"] = {
    --     before = { "#include <bits/stdc++.h>", "using namespace std;" },
    --     after = "int main() {}",
    --   },
    -- },
  },
}

return M
