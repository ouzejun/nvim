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
}

vim.api.nvim_set_hl(0, 'DapBreakpoint', dap_breakpoint_color.breakpoint)
vim.api.nvim_set_hl(0, 'DapLogPoint', dap_breakpoint_color.logpoing)
vim.api.nvim_set_hl(0, 'DapStopped', dap_breakpoint_color.stopped)

local dap_breakpoint = {
    error = {
        text = "",
        texthl = "DapBreakpoint",
        linehl = "DapBreakpoint",
        numhl = "DapBreakpoint",
    },
    condition = {
        text = '',
        texthl = 'DapBreakpoint',
        linehl = 'DapBreakpoint',
        numhl = 'DapBreakpoint',
    },
    rejected = {
        text = "",
        texthl = "DapBreakpint",
        linehl = "DapBreakpoint",
        numhl = "DapBreakpoint",
    },
    logpoint = {
        text = '',
        texthl = 'DapLogPoint',
        linehl = 'DapLogPoint',
        numhl = 'DapLogPoint',
    },
    stopped = {
        text = '',
        texthl = 'DapStopped',
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
dapui.setup({})

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

local function require_all_in_directory(directory)
    local handle = vim.loop.fs_scandir(directory)
    if handle then
        while true do
            local name, _ = vim.loop.fs_scandir_next(handle)
            if name == nil then
                break
            end
            if vim.loop.fs_stat(directory..'/'..name).type == 'file' and name:match(".lua$") then
                local module = name:match("(.+).lua")
                require(directory..'/'..module)
            end
        end
    end
end

require_all_in_directory('dap/languages')
