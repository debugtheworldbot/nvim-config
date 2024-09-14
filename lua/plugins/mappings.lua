return {
  {
    "AstroNvim/astrocore",
    ---@type AstroCoreOpts
    opts = {
      mappings = {
        -- first key is the mode
        n = {
          ["L"] = {
            function() require("astrocore.buffer").nav(vim.v.count1) end,
            desc = "Next buffer",
          },
          ["H"] = {
            function() require("astrocore.buffer").nav(-vim.v.count1) end,
            desc = "Previous buffer",
          },
          -- second key is the lefthand side of the map
          -- mappings seen under group name "Buffer"
          ["<Leader>bn"] = {
            "<cmd>tabnew<cr>",
            desc = "New tab",
          },
          ["<Leader>bD"] = {
            function()
              require("astroui.status").heirline.buffer_picker(
                function(bufnr) require("astrocore.buffer").close(bufnr) end
              )
            end,
            desc = "Pick to close",
          },
          -- tables with the `name` key will be registered with which-key if it's installed
          -- this is useful for naming menus
          ["<leader>1"] = {
            "^",
            desc = "go to start of line",
          },
          ["<leader>2"] = {
            "$",
            desc = "go to end of line",
          },
          -- restart server
          ["<leader>rl"] = {
            "<cmd>LspRestart<cr>",
            desc = "restart lsp",
          },
          ["<leader>rn"] = {
            "<cmd>source $MYVIMRC<cr>",
            desc = "restart neovim",
          },

          ["<leader>P"] = {
            '"0p',
            desc = "paste copied register",
          },
          -- copy to system clipboard
          ["<leader>y"] = { '"+y' },

          -- copy full file
          ["<leader>Y"] = { 'ggVG"+y', desc = "copy full file to system clipboard" },
          ["<C-g>"] = {
            "lazygit",
            desc = "toggleterm lazygit",
          },
          -- quick save
          ["<Leader>s"] = {
            ":w!<cr>",
            desc = "Save File",
          }, -- change description but the same command
          ["<leader>j"] = {
            ":HopChar1<cr>",
            desc = "hint 2 words",
          },
        },
        v = {
          ["<leader>1"] = {
            "^",
            desc = "go to start of line",
          },
          ["<leader>2"] = {
            "$",
            desc = "go to end of line",
          },
          -- 'greastet mapping erver'
          ["<leader>p"] = {
            '"_dP',
            desc = "delete selection register and paste",
          },
          ["<leader>y"] = { '"+y' },
        },
        t = {
          -- setting a mapping to false will disable it
          -- ["<esc>"] = false,
        },
      },
    },
  },
  {
    "AstroNvim/astrolsp",
    ---@type AstroLSPOpts
    opts = {
      mappings = {
        n = {
          -- this mapping will only be set in buffers with an LSP attached
          K = {
            function() vim.lsp.buf.hover() end,
            desc = "Hover symbol details",
          },
          -- condition for only server with declaration capabilities
          gD = {
            function() vim.lsp.buf.declaration() end,
            desc = "Declaration of current symbol",
            cond = "textDocument/declaration",
          },
        },
      },
    },
  },
}
