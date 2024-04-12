local ls = require("luasnip")
local f = ls.function_node
local postfix = require "luasnip.extras.postfix".postfix
local s = ls.snippet
local sn = ls.snippet_node
local t = ls.text_node
local i = ls.insert_node
local d = ls.dynamic_node
local fmt = require "luasnip.util.functions".fmt

ls.add_snippets("java", {
  postfix({
    trig = "psvm",
    dscr = "JAVA - get your body with psvm formatted",
  }, {
      d(1, function(_, parent)
        local node =  {
          t("public static void main (String[] args) {"),
          i(1, "body"),
          t({ "", "}" })
        }
      return sn(nil, node)
      end, {}),
    }),

  s({ trig = "sout", dscr = "System.out.println" }, {
    t("System.out.println("),
    i(0, "text"),
    t(");"),
  }),

  s({ trig = "serr", dscr = "System.err.println" }, {
    t("System.err.println("),
    i(0, "text"),
    t(");"),
  }),

  postfix({
    trig = ".while",
    dscr = "JAVA - get your body with for formatted",
  }, {
      d(1, function(_, parent)
        local node =  {
          t("while ("),
          i(1, "condition"),
          t(") {"),
          t({"", "\t"}),
          t(parent.env.POSTFIX_MATCH),
          i(2),
          t({ "", "}" })
        }
      return sn(nil, node)
      end, {}),
    }),

  postfix({
    trig = ".if",
    dscr = "JAVA - get your body with if formatted",
  }, {
      d(1, function(_, parent)
        local node =  {
          t("if ("),
          i(1, "condition"),
          t(") {"),
          t({"", "\t"}),
          t(parent.env.POSTFIX_MATCH),
          i(2),
          t({ "", "}" })
        }
      return sn(nil, node)
      end, {}),
    }),

  postfix({
    trig = ".else",
    dscr = "JAVA - get your body with else formatted",
  }, {
      d(1, function(_, parent)
        local node =  {
          t("else {"),
          t({"", "\t"}),
          t(parent.env.POSTFIX_MATCH),
          i(1),
          t({ "", "}" })
        }
      return sn(nil, node)
      end, {}),
    }),

  postfix({
    trig = ".for_each",
    dscr = "JAVA - get your body with for each formatted",
  }, {
      d(1, function(_, parent)
        local node =  {
          t("for ("),
          i(1, "type"),
          t(" : "),
          i(2, "iterable"),
          t(") {"),
          t({"", "\t"}),
          t(parent.env.POSTFIX_MATCH),
          i(3),
          t({ "", "}" })
        }
      return sn(nil, node)
      end, {}),
    }),

  postfix({
    trig = ".for_init",
    dscr = "JAVA - get your body with init formatted",
  }, {
      d(1, function(_, parent)
        local node =  {
          t("for ("),
          i(1, "init"),
          t("; "),
          i(2, "condition"),
          t("; "),
          i(3, "increment"),
          t(") {"),
          t({"", "\t"}),
          t(parent.env.POSTFIX_MATCH),
          i(4),
          t({ "", "}" })
        }
      return sn(nil, node)
      end, {}),
    })
})

ls.add_snippets("all", {
  postfix(".br[", {
    f(function(_, parent)
      return "[" .. parent.snippet.env.POSTFIX_MATCH .. "]"
    end, {}),
  }),
  postfix(".br(", {
    f(function(_, parent)
      return "(" .. parent.snippet.env.POSTFIX_MATCH .. ")"
    end, {}),
  }),
  postfix(".br{", {
    f(function(_, parent)
      return "{" .. parent.snippet.env.POSTFIX_MATCH .. "}"
    end, {}),
  }),
  postfix(".br\"", {
    f(function(_, parent)
      return "\"" .. parent.snippet.env.POSTFIX_MATCH .. "\""
    end, {}),
  }),
  postfix(".br\'", {
    f(function(_, parent)
      return "\'" .. parent.snippet.env.POSTFIX_MATCH .. "\'"
    end, {}),
  }),
})

