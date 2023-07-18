return {
  "nvim-neorg/neorg",
  build = ":Neorg sync-parsers",
  dependencies = { "nvim-lua/plenary.nvim" },
  event = "VeryLazy",
  config = function()
    require("neorg").setup {
      load = {
        ["core.defaults"] = {},  -- Loads default behaviour
        ["core.concealer"] = {}, -- Adds pretty icons to your documents
        ["core.export"] = {},
        ["core.keybinds"] = {
          config = {
            hook = function(keybinds)
              -- -- Binds the `gtd` key in `norg` mode to execute `:echo 'Hello'`
              -- keybinds.map("norg", "n", "gtd", "<cmd>echo 'Hello!'<CR>")
              --
              -- -- Remap unbinds the current key then rebinds it to have a different action
              -- -- associated with it.
              -- -- The following is the equivalent of the `unmap` and `map` calls you saw above:
              -- keybinds.map("norg", "n", "gt", "gtd")
              --
              -- -- Sometimes you may simply want to rebind the Neorg action something is bound to
              -- -- versus remapping the entire keybind. This remap is essentially the same as if you
              -- -- did `keybinds.remap("norg", "n", "<C-Space>, "<cmd>Neorg keybind norg core.qol.todo_items.todo.task_done<CR>")
              keybinds.remap_event("norg", "n", "gtd", "core.qol.todo_items.todo.task_done")
              keybinds.remap_event("norg", "n", "gtu", "core.qol.todo_items.todo.task_undone")
              keybinds.remap_event("norg", "n", "gtp", "core.qol.todo_items.todo.task_pending")
              keybinds.remap_event("norg", "n", "gtc", "core.qol.todo_items.todo.task_cancelled")
              --
              -- -- Want to move one keybind into the other? `remap_key` moves the data of the
              -- -- first keybind to the second keybind, then unbinds the first keybind.
              -- keybinds.remap_key("norg", "n", "<C-Space>", "<Leader>t")
            end,
          }
        },
        ["core.dirman"] = { -- Manages Neorg workspaces
          config = {
            workspaces = {
              notes = "~/notes",
            },
            default_workspace = "notes",
          },
        },
      },
    }
  end,
}
