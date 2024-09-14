return {
  "lewis6991/gitsigns.nvim",
  enabled = vim.fn.executable "git" == 1,
  event = "User AstroGitFile",
  opts = {
    signs = {
      add = { text = "GitSign" },
      change = { text = "GitSign" },
      delete = { text = "GitSign" },
      topdelete = { text = "GitSign" },
      changedelete = { text = "GitSign" },
      untracked = { text = "GitSign" },
    },
    worktrees = vim.g.git_worktrees,
    current_line_blame = true,
  },
}

