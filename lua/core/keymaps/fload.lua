local keymap = vim.keymap

keymap.set("n", "zO", require("ufo").openAllFolds)
keymap.set("n", "zZ", require("ufo").closeAllFolds)
keymap.set("n", "zz", "za")
keymap.set("n", "zp", require("ufo").peekFoldedLinesUnderCursor)
keymap.set("n", "zw", require("ufo").goPreviousClosedFold)
keymap.set("n", "zs", require("ufo").openFoldsExceptKinds)