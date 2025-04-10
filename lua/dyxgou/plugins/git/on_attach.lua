local gitsigns = require("gitsigns")
local M = {}

local on_attach = function(bufnr)
  local function map(mode, l, r, opts)
    opts = opts or {}
    opts.buffer = bufnr
    vim.keymap.set(mode, l, r, opts)
  end

  -- Navigation
  map('n', ']c', function()
    if vim.wo.diff then
      vim.cmd.normal({ ']c', bang = true })
    else
      gitsigns.nav_hunk('next')
    end
  end, { desc = "Next git hunk" })

  map('n', '[c', function()
    if vim.wo.diff then
      vim.cmd.normal({ '[c', bang = true })
    else
      gitsigns.nav_hunk('prev')
    end
  end, { desc = "Prev git hunk" })

  map("n", "<leader>ga", "<cmd>Git add .<CR>", { desc = "Git add the curret file" })

  map(
    "n",
    "<leader>gp",
    "<cmd>Gitsigns preview_hunk_inline<CR>",
    { desc = "Show a preview of the changes made in the file" }
  )

  map(
    "n",
    "<leader>gb",
    "<cmd>Gitsigns blame_line<CR>",
    { desc = "Show a preview of the changes made in the file" }
  )

  map('v', '<leader>gs', function()
    gitsigns.stage_hunk({ vim.fn.line('.'), vim.fn.line('v') })
  end, { desc = "Stage the selected code" })

  map('v', '<leader>gr', function()
    gitsigns.reset_hunk({ vim.fn.line('.'), vim.fn.line('v') })
  end, { desc = "Reset the selected code" })
end

M.on_attach = on_attach

return M
