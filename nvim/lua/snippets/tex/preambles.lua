---@diagnostic disable: undefined-global

return {
  -- LaTeX: Generic template with titlepage and TOC
  s(
    "assignment",
    fmt(
      [[
            \documentclass{{article}}
            % Replace `letterpaper' with `a4paper' for UK/EU standard size
            \usepackage[letterpaper,top=2cm,bottom=2cm,left=3cm,right=3cm,marginparwidth=1.75cm]{{geometry}}

            \usepackage{{graphicx, float}}\graphicspath{{./images/}}  
            \usepackage[style=german]{{csquotes}}
            \usepackage{{hyperref}}\hypersetup{{hidelinks}}
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
