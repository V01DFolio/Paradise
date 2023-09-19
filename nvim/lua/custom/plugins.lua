local overrides = require("custom.configs.overrides")

---@type NvPluginSpec[]
local plugins = {

  {
    "neovim/nvim-lspconfig",
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,   
  },
  {
    "max397574/better-escape.nvim",
    event = "InsertEnter",
    config = function()
      require("better_escape").setup()
    end,
  },
  {
    "natecraddock/workspaces.nvim",
    lazy = false,
    config = function()
        require("custom.configs.workspaces")
    end,
    cmd = { "WorkspacesOpen", "WorkspacesOpen Solid", "WorkspacesAdd", "WorkspacesList", "WorkspacesRemove", },
  },
  {
    "fedepujol/move.nvim",
    lazy = false,
    config = function()
        require("custom.configs.move")
    end,
    cmd = { "MoveLine", "MoveBlock"},
   },
}

return plugins
