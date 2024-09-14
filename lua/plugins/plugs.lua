return {
  {
    "Exafunction/codeium.vim",
    config = function()
      vim.keymap.set(
        "i",
        "<c-`>",
        function() return vim.fn["codeium#Accept"]() end,
        { expr = true, desc = "accept codeium" }
      )
      vim.keymap.set("i", "<c-;>", function() return vim.fn["codeium#CycleCompletions"](1) end, { expr = true })
      vim.keymap.set("i", "<c-,>", function() return vim.fn["codeium#CycleCompletions"](-1) end, { expr = true })
      vim.keymap.set("i", "<c-x>", function() return vim.fn["codeium#Clear"]() end, { expr = true })
    end,
    event = "BufEnter",
  },
  {
    "nat-418/boole.nvim",
    event = "VeryLazy",
    opts = {
      mappings = {
        increment = "<C-a>",
        decrement = "<C-x>",
      },
      -- User defined loops
      additions = { { "Foo", "Bar" }, { "tic", "tac", "toe" }, { "xs", "sm", "lg", "xl", "2xl", "3xl" } },
      allow_caps_additions = {
        { "enable", "disable" }, -- enable → disable
        -- Enable → Disable
        -- ENABLE → DISABLE
        -- false
      },
    },
  },
  {
    "folke/zen-mode.nvim",
    opts = {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    },
  }, -- { "github/copilot.vim", lazy = false },
  {
    "phaazon/hop.nvim",
    branch = "v2", -- optional but strongly recommended
    event = "VeryLazy",
    config = function()
      -- you can configure Hop the way you like here; see :h hop-config
      require("hop").setup {
        keys = "etovxqpdygfblzhckisuran",
      }
    end,
  },
}
