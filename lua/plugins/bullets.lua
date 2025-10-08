-- Simple bullet continuation for markdown
-- vim.api.nvim_create_autocmd("FileType", {
--   pattern = "markdown",
--   callback = function()
--     vim.keymap.set("i", "<CR>", function()
--       local line = vim.api.nvim_get_current_line()
--       local cursor = vim.api.nvim_win_get_cursor(0)
--       local col = cursor[2] + 1
--       local before_cursor = line:sub(1, col)
--
--       -- Check if we're in a bullet line and want to continue it
--       local bullet_match = before_cursor:match("^([%s%-*+]*[%-%*+]%s+)")
--       if bullet_match and vim.trim(line) ~= bullet_match then
--         -- Continue bullet on new line
--         return vim.api.nvim_replace_termcodes("<CR>" .. bullet_match, true, false, true)
--       else
--         -- Just normal enter
--         return vim.api.nvim_replace_termcodes("<CR>", true, false, true)
--       end
--     end, { expr = true, buffer = true })
--   end,
-- })

return {

  {
    "bullets-vim/bullets.vim",
  },
  -- Empty table since we don't need any plugins, just autocmd
}

