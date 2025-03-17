local ls = require "luasnip"
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

local fmt = require("luasnip.extras.fmt").fmt

vim.keymap.set({ "i", "s" }, "<A-k>", function()
    if ls.expand_or_jumpable() then
        ls.expand_or_jump()
    end
end, { silent = true })

vim.keymap.set({ "i", "s" }, "<A-j>", function()
    if ls.jumpable(-1) then
        ls.jump(-1)
    end
end, { silent = true })

-- Add image block
ls.add_snippets("tex", {
    s("img", fmt([[
        \begin{{figure}}[H]
            \centering
            \includegraphics[width={1}\linewidth]{{imagens/img-{2}.png}}
            \caption{{{3}}}
        \end{{figure}}
    ]], {
        i(1), i(2), i(3)
    }
    ))
})

-- Add code block
ls.add_snippets("tex", {
    s("code", fmt([[
        \begin{{lstlisting}} [language={1}]
            {2}
        \end{{lstlisting}}
    ]], {
        i(1, "c"), i(2)
    }
    ))
})

-- Quality of life snippets
ls.add_snippets("tex", {
    s("it", fmt([[
        \textit{{{1}}}{2}
    ]], {
        i(1), i(2)
    }))
})

ls.add_snippets("tex", {
    s("bd", fmt([[
        \textbf{{{1}}}{2}
    ]], {
        i(1), i(2)
    }))
})

ls.add_snippets("tex", {
    s("ttt", fmt([[
        \texttt{{{1}}}{2}
    ]], {
        i(1), i(2)
    }))
})

-- Math

ls.add_snippets("tex", {
    s("eqb", fmt([[
        \begin{{equation}}
            \fbox{{$
                \displaystyle {1}
            $}}
        \end{{equation}} {2}
    ]], {
        i(1), i(2)
    }))
})
