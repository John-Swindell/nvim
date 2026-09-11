-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information

---@module 'lazy'
---@type LazySpec
return {
  { -- File-history / commit-diff viewer (VS Code-style "timeline" and per-commit diffs).
    -- Commit *list* browsing is handled by Telescope's git_commits/git_bcommits pickers
    -- (<leader>gc / <leader>gb, set up in init.lua); Diffview renders what you select there.
    'sindrets/diffview.nvim',
    cmd = { 'DiffviewOpen', 'DiffviewFileHistory', 'DiffviewClose' },
    keys = {
      { '<leader>gd', '<cmd>DiffviewOpen<cr>', desc = '[G]it [D]iff view (working tree vs HEAD)' },
      { '<leader>gh', '<cmd>DiffviewFileHistory<cr>', desc = '[G]it [H]istory (whole repo)' },
      { '<leader>gf', '<cmd>DiffviewFileHistory %<cr>', desc = '[G]it file [F]ile history (current buffer)' },
      { '<leader>gq', '<cmd>DiffviewClose<cr>', desc = '[G]it [Q]uit diffview' },
    },
    opts = {},
  },
}
