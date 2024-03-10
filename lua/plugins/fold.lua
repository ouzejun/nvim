vim.api.nvim_set_hl(0, "UfoFoldedFg",
  { bg = none, fg = none })
vim.api.nvim_set_hl(0, "UfoFoldedBg",
  { bg = none, fg = none })
vim.api.nvim_set_hl(0, "UfoCursorFoldedLine",
  { bg = none, fg = none })
vim.api.nvim_set_hl(0, "UfoFoldedEllipsis",
  { bg = none, fg = none })
vim.api.nvim_set_hl(0, "FoldColumn",
  { bg = none, ctermfg = 4 })
vim.api.nvim_set_hl(0, "UfoPreviewSbar",
  { bg = none, fg = none })
vim.api.nvim_set_hl(0, "UfoPreviewThumb",
  { bg = none, fg = none })
vim.api.nvim_set_hl(0, "UfoPreviewWinBar",
  { bg = none, fg = none })
vim.api.nvim_set_hl(0, "UfoPreviewCursorLine",
  { bg = none, fg = none })
vim.api.nvim_set_hl(0, "Folded",
  { bg = none, fg = none })

return {
  "kevinhwang91/nvim-ufo",
  dependencies = "kevinhwang91/promise-async",
  event = "VeryLazy",
  opts = {
    -- INFO: Uncomment to use treeitter as fold provider, otherwise nvim lsp is 
    -- used
    -- provider_selector = function(bufnr, filetype, buftype)
    --   return { "treesitter", "indent" }
    -- end,
    open_fold_hl_timeout = 0,
    close_fold_kinds = { "imports", "comment" },
    preview = {
      win_config = {
        border = { "┌", "─", "┐", "│", "┘", "─", "└", "│" },
        winhighlight = "Normal:Folded",
        winblend = 0,
      },
      mappings = {
        scrollU = "<C-u>",
        scrollD = "<C-d>",
        jumpTop = "[",
        jumpBot = "]",
      },
    },
  },
  init = function()
    vim.o.foldcolumn = "1" -- '0' is not bad
    vim.o.foldlevel = 99 -- Using ufo provider need a large value, feel free to 
                         -- decrease the value
    vim.o.foldlevelstart = 99
    vim.o.foldenable = true
    vim.o.fillchars = 'eob: ,fold: ,foldopen:,foldsep: ,foldclose:,vert: ,'
  end,
  config = function(_, opts)
    local handler = function(virtText, lnum, endLnum, width, truncate)
      local newVirtText = {}
      local totalLines = vim.api.nvim_buf_line_count(0)
      local foldedLines = endLnum - lnum
      local suffix = ("  %d (%.2f%%) "):format(foldedLines,
        foldedLines / totalLines * 100)
      local sufWidth = vim.fn.strdisplaywidth(suffix)
      local targetWidth = width - sufWidth
      local curWidth = 0
      for _, chunk in ipairs(virtText) do
        local chunkText = chunk[1]
        local chunkWidth = vim.fn.strdisplaywidth(chunkText)
        if targetWidth > curWidth + chunkWidth then
          table.insert(newVirtText, chunk)
        else
          chunkText = truncate(chunkText, targetWidth - curWidth)
          local hlGroup = chunk[2]
          table.insert(newVirtText, { chunkText, hlGroup })
          chunkWidth = vim.fn.strdisplaywidth(chunkText)
          -- str width returned from truncate() may less than 2nd argument,
          -- need padding
          if curWidth + chunkWidth < targetWidth then
            suffix = suffix .. (" "):rep(targetWidth - curWidth - chunkWidth)
          end
          break
        end
        curWidth = curWidth + chunkWidth
      end
      local rAlignAppndx =
      math.max(math.min(vim.opt.textwidth["_value"], width - 1) - curWidth - sufWidth, 0)
      suffix = (" "):rep(rAlignAppndx) .. suffix
      table.insert(newVirtText, { suffix, "MoreMsg" })
      return newVirtText
    end
    opts["fold_virt_text_handler"] = handler
    require("ufo").setup(opts)
    vim.keymap.set("n", "zO", require("ufo").openAllFolds)
    vim.keymap.set("n", "zZ", require("ufo").closeAllFolds)
    vim.keymap.set("n", "zz", "za")
    vim.keymap.set("n", "zp", require("ufo").peekFoldedLinesUnderCursor)
    vim.keymap.set("n", "zw", require("ufo").goPreviousClosedFold)
    vim.keymap.set("n", "zs", require("ufo").openFoldsExceptKinds)
  end,
}
