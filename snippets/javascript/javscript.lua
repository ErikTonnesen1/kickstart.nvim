--Insert snippets here!
require('luasnip.session.snippet_collection').clear_snippets 'javascript'

local fmt = require('luasnip.extras.fmt').fmt
-- local i = ls.insert_node

local ls = require 'luasnip'
return {

  --Snippet: console.log (unnamed)
  s('log', {
    t { "console.log('" },
    i(1, 'text here'),
    t { "')" },
  }),

  --Snippet: console.log (named)

  s(
    'nlog',
    fmt([[console.log('{}: ', {})]], {
      f(function(input)
        return input[1][1]:gsub('[\'"]', '\\%1')
      end, { 1 }),
      i(1),
    })
  ),
}
