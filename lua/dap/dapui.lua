---@diagnostic disable: undefined-global
local dap_breakpoint_color = {
  breakpoint = {
    fg='#993939',
    bg='#31353f',
  },
  logpoing = {
    fg='#61afef',
    bg='#31353f',
  },
  stopped = {
    fg='#98c379',
    bg='#31353f'
  },
  breakpoint_icon = {
    fg='#993939',
    bg=none,
  },
  logpoing_icon = {
    fg='#61afef',
    bg=none,
  },
  stopped_icon = {
    fg='#98c379',
    bg=none,
  },
}

vim.api.nvim_set_hl(0, 'DapBreakpoint', dap_breakpoint_color.breakpoint)
vim.api.nvim_set_hl(0, 'DapLogPoint', dap_breakpoint_color.logpoing)
vim.api.nvim_set_hl(0, 'DapStopped', dap_breakpoint_color.stopped)
vim.api.nvim_set_hl(0, 'DapBreakpoint_icon', dap_breakpoint_color.breakpoint_icon)
vim.api.nvim_set_hl(0, 'DapLogPoint_icon', dap_breakpoint_color.logpoing_icon)
vim.api.nvim_set_hl(0, 'DapStopped_icon', dap_breakpoint_color.stopped_icon)

local dap_breakpoint = {
  error = {
    text = "",
    texthl = "DapBreakpoint_icon",
    linehl = "DapBreakpoint",
    numhl = "DapBreakpoint",
  },
  condition = {
    text = '',
    texthl = 'DapBreakpoint_icon',
    linehl = 'DapBreakpoint',
    numhl = 'DapBreakpoint',
  },
  rejected = {
    text = "",
    texthl = "DapBreakpint_icon",
    linehl = "DapBreakpoint",
    numhl = "DapBreakpoint",
  },
  logpoint = {
    text = '',
    texthl = 'DapLogPoint_icon',
    linehl = 'DapLogPoint',
    numhl = 'DapLogPoint',
  },
  stopped = {
    text = '',
    texthl = 'DapStopped_icon',
    linehl = 'DapStopped',
    numhl = 'DapStopped',
  },
}

vim.fn.sign_define('DapBreakpoint', dap_breakpoint.error)
vim.fn.sign_define('DapBreakpointCondition', dap_breakpoint.condition)
vim.fn.sign_define('DapBreakpointRejected', dap_breakpoint.rejected)
vim.fn.sign_define('DapLogPoint', dap_breakpoint.logpoint)
vim.fn.sign_define('DapStopped', dap_breakpoint.stopped)

local dapui = require("dapui")
dapui.setup({
  layouts = {
    {
      elements = {
        {
          id = "breakpoints",
          size = 0.5
        }, {
          id = "stacks",
          size = 0.5
        } },
      position = "left",
      size = 35
    },
    {
      elements = {
        {
          id = "scopes",
          size = 0.70,
        },
        {
          id = "watches",
          size = 0.30
        },
      },
      position = "left",
      size = 60,
    },
    {
      elements = {
        {
          id = "repl",
          size = 0.5
        }, {
          id = "console",
          size = 0.5
        } },
      position = "bottom",
      size = 9
    } },
  mappings = {
    edit = "e",
    expand = { "<CR>", "<2-LeftMouse>" },
    open = "o",
    remove = "d",
    repl = "r",
    toggle = "b",
  },
})

local dap = require("dap")
dap.listeners.after.event_initialized["dapui_config"] = function()
  dapui.open({})
end

-- dap.listeners.before.event_terminated["dapui_config"] = function()
--   dapui.close({})
-- end


-- dap.listeners.before.event_exited["dapui_config"] = function()
--   dapui.close({})
-- end

require("nvim-dap-virtual-text").setup({
    enabled = true,
    enable_commands = true,
    highlight_changed_variables = true,
    highlight_new_as_changed = false,
    show_stop_reason = true,
    commented = false,
    only_first_definition = true,
    all_references = false,
    filter_references_pattern = '<module',
    virt_text_pos = 'eol',
    all_frames = false,
    virt_lines = false,
    virt_text_win_col = nil
})
