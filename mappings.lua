---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },

    --  format with conform
    ["<leader>fm"] = {
      function()
        require("conform").format()
      end,
      "formatting",
    }

  },
  v = {
    [">"] = { ">gv", "indent"},
  },
}

M.telescope = {
  n = {
    ["<leader>fg"] = { "<cmd> Telescope git_files show_untracked=true <CR>", "Find git files" },
  }
}

-- more keybinds!

return M
