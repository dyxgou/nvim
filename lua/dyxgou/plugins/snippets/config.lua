local ls = require("luasnip")

local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

ls.add_snippets("go", {
  s("ee", {
    t("if err != nil {"),
    t({ "", "\t" }),
    i(1, "return err"),
    t({ "", "}" }),
  }),

  s("print", {
    t("fmt.Println("),
    i(1),
    t(")"),
  }),

  s("str", {
    t("type "),
    i(1),
    t(" struct {"),
    i({ "\t", 2 }),
    t({ "", "}" })
  })
})

ls.add_snippets("typescript", {
  s("log", {
    t("console.log("),
    i(1),
    t(");"),
  })
})
