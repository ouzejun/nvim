require("which-key").register{
  G = {
    name = "Git Signs",
    s = { "<cmd>lua require('gitsigns').stage_hunk()<CR>", "暂存" },
    u = { "<cmd>lua require('gitsigns').undo_stage_hunk()<CR>", "撤销暂存" },
    d = { "<cmd>lua require('gitsigns').reset_hunk()<CR>", "撤销修改" },
    D = { "<cmd>lua require('gitsigns').reset_buffer()<CR>", "撤销所有修改" },
    p = { "<cmd>lua require('gitsigns').preview_hunk()<CR>", "查看修改" },
    l = { "<cmd>lua require('gitsigns').blame_line(true)<CR>", "查看修改者信息" },
    n = { "<cmd>lua require('gitsigns').next_hunk()<CR>", "下一处修改" },
  }
}
