---@diagnostic disable: undefined-global

return {
  -- LaTeX: Generic template with titlepage and TOC
  s(
    "homework",
    fmt(
      [[
            \documentclass{{article}}

            \usepackage{{graphicx, float}}\graphicspath{{./images/}}  
            \usepackage[style=german]{{csquotes}} % Required for cool quotes
            \usepackage{{hyperref}}\hypersetup{{hidelinks}} % Required for clickable TOC
            \usepackage{{polyglossia}}\setmainlanguage{{lithuanian}}\setotherlanguages{{english}}
           
            \title{{
            \vspace{{2in}}
            \textmd{{\textbf{{{}}}}}\\
            \normalsize\vspace{{0.1in}}\small{{{}}}\\
            \vspace{{0.1in}}\large{{\textit{{\today}}}}
            \vspace{{3in}}
            }}

            \author{{\textbf{{{}}}}}
            \date{{}} % Insert date here if you want it to appear below your name

            \begin{{document}}

            \maketitle

            \pagebreak
            \tableofcontents

            \end{{document}}
        ]],
      {
        i(1, "Assignment #1"),
        i(2, "Subject name"),
        i(3, "Name"),
      }
    )
  ),
}
