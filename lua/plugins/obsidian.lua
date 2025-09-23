return {
  "obsidian-nvim/obsidian.nvim",
  version = "*", -- recommended, use latest release instead of latest commit
  ft = "markdown",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "saghen/blink.cmp",
  },
  keys = {
    { "<leader>oo", "<cmd>Obsidian today<cr>", desc = "Open today's note" },
    { "<leader>oy", "<cmd>Obsidian yesterday<cr>", desc = "Open yesterday's note" },
    { "<leader>ot", "<cmd>Obsidian tomorrow<cr>", desc = "Open tomorrow's note" },
    { "<leader>ob", "<cmd>Obsidian backlinks<cr>", desc = "Show backlinks" },
    { "<leader>on", "<cmd>Obsidian new<cr>", desc = "Create new note" },
    { "<leader>os", "<cmd>Obsidian search<cr>", desc = "Search notes" },
    { "<leader>oq", "<cmd>Obsidian quick_switch<cr>", desc = "Quick switch notes" },
  },
  ---@module 'obsidian'
  ---@type obsidian.config
  opts = {
    workspaces = {
      {
        name = "muhajir",
        path = "~/vaults/muhajir",
      },
    },

    ui = {
      checkboxes = {
        [" "] = { char = "󰄱", hl_group = "ObsidianTodo" },
        ["x"] = { char = "", hl_group = "ObsidianDone" },
      },
    },

    templates = {
      folder = "templates",
      date_format = "%Y-%m-%d",
      time_format = "%H:%M",
      substitutions = {},
    },

    notes_subdir = "inbox",
    new_notes_location = "notes_subdir",

    note_id_func = function(title)
      local suffix = ""
      if title ~= nil then
        return title
      else
        for _ = 1, 4 do
          suffix = suffix .. string.char(math.random(65, 90))
        end
      end
      return suffix
    end,

    note_path_func = function(spec)
      local path = spec.dir / tostring(spec.id)
      return path:with_suffix(".md")
    end,

    wiki_link_func = "use_alias_only",

    daily_notes = {
      folder = "daily-notes",
      date_format = "%Y-%m-%d",
      alias_format = "%B %-d, %Y",
      default_tags = { "daily-notes" },
      template = nil,
    },

    completion = {
      nvim_cmp = false,
      blink = true,  -- Enable blink.cmp completion
      min_chars = 2,
      match_case = true,
      create_new = true,
    },

    callbacks = {
      enter_note = function(_, note)
        vim.keymap.set("n", "<leader>ch", "<cmd>Obsidian toggle_checkbox<cr>", {
          buffer = note.bufnr,
          desc = "Toggle checkbox",
        })
        vim.keymap.set("n", "<cr>", function()
          require("obsidian.api").smart_action()
        end, {
          buffer = note.bufnr,
          desc = "Smart action",
        })
        vim.keymap.set("n", "gf", "<cmd>Obsidian follow_link<cr>", {
          buffer = note.bufnr,
          desc = "Follow link under cursor",
        })
      end,
    },
  },
}