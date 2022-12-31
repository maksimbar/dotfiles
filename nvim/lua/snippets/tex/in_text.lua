---@diagnostic disable: undefined-global

local rec_ls
rec_ls = function()
  return sn(nil, {
    c(1, {
      t({ "" }),
      sn(nil, { t({ "", "\t\\item " }), i(1), d(2, rec_ls, {}) }),
    }),
  })
end

return {
  -- LaTeX: Image
  s("img", {
    t({ "\\begin{figure}[H]" }),
    t({ "", "\t\\centering" }),
    t({ "", "\t\\includegraphics[width=\\textwidth]{" }),
    i(1),
    t({ "}", "\t\\caption{" }),
    i(2),
    t({ "}", "\t\\label{" }),
    i(3),
    t({ "}", "\\end{figure}" }),
  }),
  -- LaTeX: Ordered list
  s("ol", {
    t({ "\\begin{enumerate}", "\t\\item " }),
    i(1),
    d(2, rec_ls, {}),
    t({ "", "\\end{enumerate}" }),
    i(0),
  }),
  -- LaTeX: Unordered list
  s("ul", {
    t({ "\\begin{itemize}", "\t\\item " }),
    i(1),
    d(2, rec_ls, {}),
    t({ "", "\\end{itemize}" }),
    i(0),
  }),
  -- LaTeX: Section
  s("sec", {
    t("\\section{"),
    i(1),
    t("}"),
  }),
  -- LaTeX: Subsection
  s("ssec", {
    t("\\subsection{"),
    i(1),
    t("}"),
  }),
  -- LaTeX: Subsubsection
  s("sssec", {
    t("\\subsubsection{"),
    i(1),
    t("}"),
  }),
  -- LaTeX: Figure
  s("fig", {
    t({ "\\begin{figure}[H]", "" }),
    i(1),
    t({ "", "\\end{figure}" }),
  }),
  -- LaTeX: Reference
  s("ref", {
    t("(žr. \\ref{"),
    i(1),
    t("} pav.)"),
  }),
}
