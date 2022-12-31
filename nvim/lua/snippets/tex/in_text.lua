---@diagnostic disable: undefined-global

local tex = {}
tex.in_mathzone = function()
  return vim.fn["vimtex#syntax#in_mathzone"]() == 1
end
tex.in_text = function()
  return not tex.in_mathzone()
end

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
  }, { condition = in_text }),
  -- LaTeX: Ordered list
  s("ol", {
    t({ "\\begin{enumerate}", "\t\\item " }),
    i(1),
    d(2, rec_ls, {}),
    t({ "", "\\end{enumerate}" }),
    i(0),
  }, { condition = in_text }),
  -- LaTeX: Unordered list
  s("ul", {
    t({ "\\begin{itemize}", "\t\\item " }),
    i(1),
    d(2, rec_ls, {}),
    t({ "", "\\end{itemize}" }),
    i(0),
  }, { condition = in_text }),
  -- LaTeX: Section
  s("sec", {
    c(1, {
      t("\\section{"),
      t("\\section*{"),
    }),
    i(0),
    t("}"),
  }, { condition = in_text }),
  -- LaTeX: Subsection
  s("ssec", {
    c(1, {
      t("\\subsection{"),
      t("\\subsection*{"),
    }),
    i(0),
    t("}"),
  }, { condition = in_text }),
  -- LaTeX: Subsubsection
  s("sssec", {
    c(1, {
      t("\\subsubsection{"),
      t("\\subsubsection*{"),
    }),
    i(0),
    t("}"),
  }, { condition = in_text }),
  -- LaTeX: Reference
  s("ref", {
    t("(žr. \\ref{"),
    i(1),
    t("} pav.)"),
  }, { condition = in_text }),
}
