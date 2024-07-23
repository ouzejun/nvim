local wk = require("which-key")
wk.add{
  { "b", "<Nop>", group = " " },

  {
    "bn",
    "<cmd>DapContinue<CR>",
    mode = "n", desc = "continue",
    icon = {
      icon = " ",
      color = "green",
    }
  },
  {
    "bb",
    "<cmd>lua require'dap'.toggle_breakpoint()<CR>",
    mode = "n", desc = "breakpoint",
    icon = {
      icon = " ",
      color = "red"
    }
  },
  {
    "br",
    "<cmd>DapRestartFrame<CR>",
    mode = "n", desc = "restart",
    icon = {
      icon = " ",
      color = "red",
    }
  },
  {
    "bi",
    "<cmd>DapStepInto<CR>",
    mode = "n", desc = "into",
    icon = {
      icon = " ",
      color = "orange",
    }
  },
  {
    "bo",
    "<cmd>DapStepOut<CR>",
    mode = "n", desc = "out",
    icon = {
      icon = " ",
      color = "orange",
    }
  },
  {
    "bl",
    "<cmd>lua require'dap'.run_last()<CR>",
    mode = "n", desc = "last",
    icon = {
      icon = "󰑆 ",
      color = "orange",
    }
  },
  {
    "bc",
    "<cmd> lua require'dapui'.toggle()<CR>",
    mode = "n", desc = "dapui",
    icon = {
      icon = " ",
      color = "blue",
    }
  },
}
