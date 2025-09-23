return {
  -- Map jk to escape insert mode
  {
    "LazyVim/LazyVim",
    opts = function()
      vim.keymap.set("i", "jk", "<Esc>", { desc = "Exit insert mode" })
      vim.keymap.set("i", "kj", "<Esc>", { desc = "Exit insert mode" })
    end,
  },
}