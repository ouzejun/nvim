require("lspconfig").jdtls.setup {
    on_attach = function(client, bufnr)
        -- 禁用格式化功能，交给专门插件插件处理
        client.resolved_capabilities.document_formatting = false
        client.resolved_capabilities.document_range_formatting = false
    end,
}

local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

ls.add_snippets("java", {
  s("psvm", {
	  t({    "public static void main(String[] args) {" }),
	  t({"", "    " }), i(1),
	  t({"", "}" }),
  }),
})
