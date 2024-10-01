vim.g.mapleader = " "
local keymap = vim.keymap
local wk = require("which-key")
-- ----------which key --------
-- ----------普通模式----------
wk.add{
  -- 上下左右移动
  {
    "<s-k>",
    "5<Up>",
    desc = "5 up move",
    icon = {
      icon = " ",
      color = "yellow",
    }
  },
  {
    "<s-j>",
    "5<Down>",
    desc = "5 down move",
    icon = {
      icon = " ",
      color = "yellow",
    }
  },
  {
    "<s-h>",
    "5<Left>",
    desc = "5 left move",
    icon = {
      icon = " ",
      color = "yellow",
    }
  },
  {
    "<s-l>",
    "5<Right>",
    desc = "5 right move",
    icon = {
      icon = " ",
      color = "yellow",
    }
  },
  -- 单词移动
  {
    "w",
    "b",
    desc = "before of a prev word",
    icon = {
      icon = "󱞢 ",
      color = "red"
    }
  },
  {
    "W",
    "W",
    desc = "end of a prev word",
    icon = {
      icon = "󱞤 ",
      color = "red"
    }
  },
  {
    "e",
    "e",
    desc = "end of a next word",
    icon = {
      icon = "󱟀 ",
      color = "red"
    }
  },
  {
    "E",
    "ge",
    desc = "before of a next word",
    icon = {
      icon = "󱞾 ",
      color = "red",
    }
  },

  -- 视觉框移动
  { "m", group = "text move" },
  {
    "mk",
    "zt5<Up>5<Down>",
    desc = "move text to top",
    icon = {
      icon = " ",
      color = "yellow"
    }
  },
  {
    "mj",
    "zb5<Down>5<Up>",
    desc = "move text to down",
    icon = {
      icon = " ",
      color = "yellow"
    }
  },
  {
    "mm",
    "zz",
    desc = "move text to middle",
    icon = {
      icon = " ",
      color = "yellow"
    }
  },
  -- 窗口制作
  {
    "|",
    ":vsplit<CR>",
    mode = "n", desc = "vertical split",
    icon = {
      icon = " ",
      color = "orange"
    }
  },
  {
    "-",
    ":split<CR>",
    mode = "n", desc = "horizontal split",
    icon = {
      icon = " ",
      color = "orange"
    }
  },
  -- 窗口移动
  {
    "<leader>h",
    "<c-w>h",
    desc = "move window to left",
    icon = {
      icon = " ",
      color = "yellow"
    }
  },
  {
    "<leader>j",
    "<c-w>j",
    desc = "move window to down",
    icon = {
      icon = " ",
      color = "yellow"
    }
  },
  {
    "<leader>k",
    "<c-w>k",
    desc = "move window to up",
    icon = {
      icon = " ",
      color = "yellow"
    }
  },
  {
    "<leader>l",
    "<c-w>l",
    desc = "move window to right",
    icon = {
      icon = " ",
      color = "yellow"
    }
  },
  -- 取消高亮
  {
    "<leader>nh",
    "<cmd>noh<CR>",
    desc = "cancel highlight",
    icon = {
      icon = "󰹊 ",
      color = "yellow"
    }
  },
  -- 窗口大小
  {
    "<c-h>",
    "<c-w><",
    desc = "decrease window width",
    icon = {
      icon = " ",
      color = "yellow"
    }
  },
  {
    "<c-l>",
    "<c-w>>",
    desc = "increase window width",
    icon = {
      icon = " ",
      color = "yellow"
    }
  },
  {
    "<c-k>",
    "<c-w>+",
    desc = "increase window height",
    icon = {
      icon = " ",
      color = "yellow"
    }
  },
  {
    "<c-j>",
    "<c-w>-",
    desc = "decrease window height",
    icon = {
      icon = " ",
      color = "yellow"
    }
  },
  -- 进入插入模式
  {
    "A",
    "a",
    mode = "n", desc = "insert after",
    icon = {
      icon = " ",
      color = "red"
    }
  },
  {
    "a",
    "i",
    mode = "n", desc = "insert before",
    icon = {
      icon = " ",
      color = "red"
    }
  },
  -- u键管理
  {
    "u",
    "u",
    mode = "n", desc = "undo",
    icon = {
      icon = " ",
      color = "red"
    }
  },
  {
    "<s-u>",
    "<c-r>",
    mode = "n", desc = "redo",
    icon = {
      icon = " ",
      color = "red"
    }
  },
  {
    "<c-u>",
    "<c-r>",
    mode = "n", desc = "redo",
    icon = {
      icon = " ",
      color = "red"
    }
  },
}
-- ----------视觉模式----------
wk.add{
  -- 快捷移动
  {
    "<s-k>",
    ":m '>+1<CR>gv=gv",
    mode = "v", desc = "move up",
    icon = {
      icon = " ",
      color = "yellow"
    }
  },
  {
    "<s-j>",
    ":m '<-2<CR>gv=gv",
    mode = "v", desc = "move down",
    icon = {
      icon = " ",
      color = "yellow"
    }
  },
  -- 单词移动
  {
    "w",
    "b",
    mode = "v", desc = "before of a prev word",
    icon = {
      icon = "󱞢 ",
      color = "red"
    }
  },
  {
    "W",
    "W",
    mode = "v", desc = "end of a prev word",
    icon = {
      icon = "󱞤 ",
      color = "red"
    }
  },
  {
    "e",
    "e",
    mode = "v", desc = "end of a next word",
    icon = {
      icon = "󱟀 ",
      color = "red"
    }
  },
  {
    "E",
    "ge",
    mode = "v", desc = "before of a next word",
    icon = {
      icon = "󱞾 ",
      color = "red"
    }
  },
}
-- ----------插入模式----------
wk.add{
  -- 上下左右移动
  {
    "<c-h>",
    "<Left>",
    mode = "i", desc = "left move",
    icon = {
      icon = " ",
      color = "yellow"
    }
  },
  {
    "<c-l>",
    "<Right>",
    mode = "i", desc = "right move",
    icon = {
      icon = " ",
      color = "yellow"
    }
  },
  {
    "<c-k>",
    "<Up>",
    mode = "i", desc = "up move",
    icon = {
      icon = " ",
      color = "yellow"
    }
  },
  {
    "<c-j>",
    "<Down>",
    mode = "i", desc = "down move",
    icon = {
      icon = " ",
      color = "yellow"
    }
  },
}

-- 删除一些不必要容易引起麻烦的键
keymap.set("n", "s", "<Nop>")
keymap.set("n", "S", "<Nop>")
keymap.set("n", "r", "<Nop>")
keymap.set("n", "q", "<Nop>")
keymap.set("n", "i", "<Nop>")
keymap.set("n", "I", "<Nop>")
keymap.set("n", "G", "<Nop>")
