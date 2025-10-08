-- Disable spell checking entirely
vim.opt.spell = false

-- Make background transparent
vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    vim.cmd("highlight Normal guibg=none")
    vim.cmd("highlight NormalFloat guibg=none")
    vim.cmd("highlight NormalNC guibg=none")
    vim.cmd("highlight NonText guibg=none")
    vim.cmd("highlight SignColumn guibg=none")
    vim.cmd("highlight CursorLine guibg=none")
  end,
})

-- Also apply after colorscheme changes
vim.api.nvim_create_autocmd("ColorScheme", {
  pattern = "*",
  callback = function()
    vim.cmd("highlight Normal guibg=none")
    vim.cmd("highlight NormalFloat guibg=none")
    vim.cmd("highlight NormalNC guibg=none")
    vim.cmd("highlight NonText guibg=none")
    vim.cmd("highlight SignColumn guibg=none")
    vim.cmd("highlight CursorLine guibg=none")
  end,
})

-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
