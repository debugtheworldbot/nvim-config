vim.opt.clipboard = "unnamedplus"
vim.api.nvim_set_keymap("n", "q", ":lua VSCodeNotifyVisual('noop', 1)<cr>", { noremap = true })
