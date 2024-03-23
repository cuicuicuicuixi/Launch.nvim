local M = {
  "rcarriga/nvim-notify",
  event = "VeryLazy",
  commit = "80b67b265530632505193553d05127ae7fe09ddd",
  opts = {
    timeout = 3000,
    max_height = function()
      return math.floor(vim.o.lines * 0.75)
    end,
    max_width = function()
      return math.floor(vim.o.columns * 0.75)
    end,
    on_open = function(win)
      vim.api.nvim_win_set_config(win, { zindex = 100 })
    end,
  },
}

function M.config()
  vim.notify = require "notify"

  local notify_filter = vim.notify
  vim.notify = function(msg, ...)
    if msg:match "character_offset must be called" then
      return
    end
    if msg:match "method textDocument" then
      return
    end

    notify_filter(msg, ...)
  end
end

return M
