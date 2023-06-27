local M = {}
-- exit insert mode
M.insert = {
  -- normal mode
  n = {
    ["<leader>tt"] = {
      function()
        require("base46").toggle_transparency()
      end,
      "toggle transparency",
    },
  },
  -- insert mode
  i = {
    ["jj"] = { "<ESC>", "escape insert mode", opts = { nowait = true } },
  },
}

return M
