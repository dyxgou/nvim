return {
  "obsidian-nvim/obsidian.nvim",
  version = "*", -- recommended, use latest release instead of latest commit
  event = {
    -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
    -- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/*.md"
    -- refer to `:h file-pattern` for more examples
    "BufReadPre /home/dyxgou/projects/notes/*.md",
    "BufNewFile /home/dyxgou/projects/notes/*.md",
  },
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  config = {
    workspaces = {
      {
        name = "personal",
        path = "~/projects/notes/",
      },
    },

    templates = {
      folder = "99 - Meta/templates"
    }
  },

  completion = {
    nvim_cmp = true,
    blink = false,
    min_chars = 2,
  },
}
