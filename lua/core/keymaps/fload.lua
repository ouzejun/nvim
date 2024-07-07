require("which-key").register{
  z = {
    name = "折叠",
    O = { "<cmd>lua require('ufo').openAllFolds()<CR>", "打开所有折叠" },
    Z = { "<cmd>lua require('ufo').closeAllFolds()<CR>", "关闭所有折叠" },
    z = { "za", "切换折叠" },
    p = { "<cmd>lua require('ufo').peekFoldedLinesUnderCursor()<CR>", "查看折叠" },
    w = { "<cmd>lua require('ufo').goPreviousClosedFold()<CR>", "上一个折叠" },
    s = { "<cmd>lua require('ufo').openFoldsExceptKinds()<CR>", "打开折叠" },
  }
}
