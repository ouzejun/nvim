local ls = require("luasnip")
local f = ls.function_node
local postfix = require "luasnip.extras.postfix".postfix

postfix(".br", {
  f(function(_, parent)
    return "[" .. parent.snippet.env.POSTFIX_MATCH .. "]"
  end, {}),
})

