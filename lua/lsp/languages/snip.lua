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
  -- keywords
  s({ trig = "class", docstring = "YT fix JAVA keywoeds" }, {
    t({"class"})
  }),
  s({ trig = "void", docstring = "YT fix JAVA keywoeds" }, {
    t({"void"})
  }),
  s({ trig = "if", docstring = "YT fix JAVA keywoeds" }, {
    t({"if"})
  }),
  s({ trig = "for", docstring = "YT fix JAVA keywoeds" }, {
    t({"for"})
  }),
  s({ trig = "while", docstring = "YT fix JAVA keywoeds" }, {
    t({"while"})
  }),
  s({ trig = "public", docstring = "YT fix JAVA keywoeds" }, {
    t({"public"})
  }),
  s({ trig = "else", docstring = "YT fix JAVA keywoeds" }, {
    t({"else"})
  }),
  s({ trig = "private", docstring = "YT fix JAVA keywoeds" }, {
    t({"private"})
  }),
  s({ trig = "protected", docstring = "YT fix JAVA keywoeds" }, {
    t({"protected"})
  }),
  s({ trig = "static", docstring = "YT fix JAVA keywoeds" }, {
    t({"static"})
  }),
  s({ trig = "do", docstring = "YT fix JAVA keywoeds" }, {
    t({"do"})
  }),
  s({ trig = "switch", docstring = "YT fix JAVA keywoeds" }, {
    t({"switch"})
  }),
  s({ trig = "case", docstring = "YT fix JAVA keywoeds" }, {
    t({"case"})
  }),
  s({ trig = "default", docstring = "YT fix JAVA keywoeds" }, {
    t({"default"})
  }),
  s({ trig = "break", docstring = "YT fix JAVA keywoeds" }, {
    t({"break"})
  }),
  s({ trig = "continue", docstring = "YT fix JAVA keywoeds" }, {
    t({"continue"})
  }),
  s({ trig = "return", docstring = "YT fix JAVA keywoeds" }, {
    t({"return"})
  }),
  s({ trig = "try", docstring = "YT fix JAVA keywoeds" }, {
    t({"try"})
  }),
  s({ trig = "throws", docstring = "YT fix JAVA keywoeds" }, {
    t({"throws"})
  }),
  s({ trig = "catch", docstring = "YT fix JAVA keywoeds" }, {
    t({"catch"})
  }),
  s({ trig = "finally", docstring = "YT fix JAVA keywoeds" }, {
    t({"finally"})
  }),
  s({ trig = "int", docstring = "YT fix JAVA keywoeds" }, {
    t({"int"})
  }),
  s({ trig = "long", docstring = "YT fix JAVA keywoeds" }, {
    t({"long"})
  }),
  s({ trig = "double", docstring = "YT fix JAVA keywoeds" }, {
    t({"double"})
  }),
  s({ trig = "float", docstring = "YT fix JAVA keywoeds" }, {
    t({"float"})
  }),
  s({ trig = "char", docstring = "YT fix JAVA keywoeds" }, {
    t({"char"})
  }),
  s({ trig = "short", docstring = "YT fix JAVA keywoeds" }, {
    t({"short"})
  }),
  s({ trig = "byte", docstring = "YT fix JAVA keywoeds" }, {
    t({"byte"})
  }),
  s({ trig = "protected", docstring = "YT fix JAVA keywoeds" }, {
    t({"protected"})
  }),
  s({ trig = "boolean", docstring = "YT fix JAVA keywoeds" }, {
    t({"boolean"})
  }),
  s({ trig = "null", docstring = "YT fix JAVA keywoeds" }, {
    t({"null"})
  }),
  s({ trig = "interface", docstring = "YT fix JAVA keywoeds" }, {
    t({"interface"})
  }),


  -- custom
  s({
    trig = "psvm",
    docstring = "JAVA - public static void main(String[] args) { ... }",
    }, {
	    t({"public static void main(String[] args) {" }),
	    t({"", "    " }), i(1),
	    t({"", "}" }),
    }
  ),

  s({
    trig = "sout",
    docstring = "JAVA - System.out.println( ... );",
  }, {
    t({ "System.out.println(", }), i(1), t({ ");" }),
  }),

  postfix({
    trig = ".for",
  }, {
      d(1, function (_, parent)
        local node = {
          t("for ("),
          i(1, "int"),
          t("; "),
          i(2, "condition"),
          t("; "),
          i(3, "update"),
          t(") {"),
          t({"", "\t"}),
          t(parent.env.POSTFIX_MATCH),
          i(4),
          t({"", "}"})
        }
      return sn(nil, node)
      end, {}),
  }),
})

ls.add_snippets("all", {
  postfix(".br[", {
    f(function(_, parent)
      return "[" .. parent.snippet.env.POSTFIX_MATCH .. "]"
    end, {}),
  }),
  postfix(".br{", {
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

