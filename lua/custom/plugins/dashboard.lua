return {
  'folke/snacks.nvim',
  --@type snacks.Config
  opts = {
    dashboard = {
      enabled = true,
      width = 18,
      sections = {
        -- stylua: ignore start
        { hidden = true, icon = " ", key = "t", desc = "Find [T]ext", action = ":lua Snacks.dashboard.pick('live_grep')" },
        { hidden = true, icon = " ", key = "r", desc = "[R]ecent Files", action = ":lua Snacks.dashboard.pick('oldfiles')" },
        { hidden = true, icon = "󰒲 ", key = "l", desc = "[L]azy", action = ":Lazy" },
        -- stylua: ignore end

        -- Header
        { text = ' ', padding = 12 },
        {
          padding = 2,
          text = {
            { 'yea this is neovim ', hl = 'Normal' },
            { '- idk what to put here', hl = 'NonText' },
          },
          action = ":lua Snacks.dashboard.pick('files')",
          key = 'f',
        },

        -- Keys
        {
          padding = 1,
          text = {
            { '  Find [f]ile', width = 19, hl = 'NonText' },
            { '  Find [t]ext', hl = 'NonText' },
          },
          action = ":lua Snacks.dashboard.pick('files')",
          key = 'f',
        },
        {
          padding = 1,
          text = {
            { ' ', width = 3 },
            { '  [n]ew File', width = 19, hl = 'NonText' },
            { '  [r]ecent File', hl = 'NonText' },
          },
          action = ':ene | startinsert',
          key = 'n',
        },
        {
          padding = 2,
          text = {
            { ' ', width = 9 },
            { '  [c]onfig', hl = 'NonText' },
            { ' ', width = 8 },
            { '󰒲  [l]azy', hl = 'NonText' },
            { ' ', width = 14 },
          },
          action = ":lua Snacks.dashboard.pick('files', {cwd = vim.fn.stdpath('config')})",
          key = 'c',
        },
        {
          padding = 2,
          text = {
            { ' ', width = 5 },
            { '  [q]uit', hl = 'NonText' },
          },
          action = ':quitall',
          key = 'q',
        },

        --  Startup
        { section = 'startup', padding = 1 },
        { section = 'terminal', cmd = "printf ' '", height = 10 },

        -- Keys
        {
          section = 'terminal',
          cmd = 'pokemon-colorscripts -n psyduck --no-title; sleep .1',
          padding = 2,
        },
      },

      formats = { key = { '' } },
    },
  },
}
