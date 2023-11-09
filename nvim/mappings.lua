---@type MappingsTable
local M = {}

-- In order to disable a default keymap, use
M.disabled = {
  n = {
    -- ["<leader>x"] = "",
  },
}

-- Your custom mappings
-- "n", "i", "v", ... stands for normal, insert, visual, ... modes
M.custom_mappings = {
  n = {
    ["<C-A-l>"] = {
      function()
        vim.lsp.buf.format { async = true, tabSize = 4 }
      end,
      "LSP formatting",
    },
  },

  i = {
    -- ...
  },
}
return M
