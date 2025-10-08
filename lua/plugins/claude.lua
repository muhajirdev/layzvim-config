return {
  {
    "coder/claudecode.nvim",
    dependencies = { "folke/snacks.nvim" },
    opts = {
      terminal_cmd = "~/.claude/local/claude", -- Point to local installation
    },
    config = true,
    lazy = false,
    keys = {
      -- Your keymaps here
    },
  },
}
