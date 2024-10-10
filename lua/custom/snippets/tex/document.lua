local ls = require 'luasnip'
-- some shorthands...
local s = ls.snippet
local i = ls.insert_node
local fmta = require('luasnip.extras.fmt').fmta

local tex = {}
tex.in_mathzone = function()
  return vim.fn['vimtex#syntax#in_mathzone']() == 1
end
tex.in_text = function()
  return not tex.in_mathzone()
end

return {
  s(
    {
      trig = 'inittemp',
    },
    fmta(
      [[
        \documentclass{article}

        % Language setting
        % Replace `english' with e.g. `spanish' to change the document language
        \usepackage[english]{babel}

        % Set page size and margins
        % Replace `letterpaper' with `a4paper' for UK/EU standard size
        \usepackage[letterpaper,top=2cm,bottom=2cm,left=3cm,right=3cm,marginparwidth=1.75cm]{geometry}

        % Useful packages
        \usepackage{amsmath}
        \usepackage{amssymb}
        \usepackage{graphicx}
        \usepackage{hyperref}
        \usepackage{setspace}
        \usepackage{listings}
        \usepackage{xcolor}

        % Code block styles
        \definecolor{codegreen}{rgb}{0,0.6,0}
        \definecolor{codegray}{rgb}{0.5,0.5,0.5}
        \definecolor{codepurple}{rgb}{0.58,0,0.82}

        \lstdefinestyle{mystyle}{
            commentstyle=\color{codegreen},
            keywordstyle=\color{magenta},
            stringstyle=\color{codepurple},
            basicstyle=\ttfamily\footnotesize,
            breakatwhitespace=false,
            breaklines=false,
            captionpos=b,
            keepspaces=true,
            showspaces=false,
            showstringspaces=false,
            showtabs=false,
            tabsize=2
        }

        % Page numbering
        \pagenumbering{arabic}

        \title{
          {<>} \\
          {\large <>} \\
          {\large University of Toronto}
        }
        \author{\normalfont{Carlos Planelles Otero}\\\texttt{carlos.planellesotero@mail.utoronto.ca}\\\\UTORID: \texttt{planelle}\qquad Student Number: \texttt{1006999107}}

        \begin{document}
        \maketitle
        <>
        \end{document}
      ]],
      { i(1, 'Title'), i(2, 'Class'), i(3) }
    )
  ),

  s(
    {
      trig = 'sec',
      condition = tex.in_text,
    },
    fmta(
      [[
        \section{<>}

        <>
      ]],
      { i(1), i(2) }
    )
  ),

  s(
    {
      trig = 'sub',
      condition = tex.in_text,
    },
    fmta(
      [[
        \subsection{<>}

        <>
      ]],
      { i(1), i(2) }
    )
  ),

  s(
    {
      trig = 'ssub',
      condition = tex.in_text,
    },
    fmta(
      [[
        \subsubsection{<>}

        <>
      ]],
      { i(1), i(2) }
    )
  ),

  s(
    {
      trig = 'enum',
      condition = tex.in_text,
    },
    fmta(
      [[
        \begin{enumerate}
          \item <>
        \end{enumerate}
        <>
      ]],
      { i(1), i(2) }
    )
  ),

  s(
    {
      trig = 'code',
      condition = tex.in_text,
    },
    fmta(
      [[
        \begin{lstlisting}[language=<>]
          <>
        \end{lstlisting}
        <>
      ]],
      { i(1), i(2), i(3) }
    )
  ),

  s(
    {
      trig = 'fig',
      condition = tex.in_text,
    },
    fmta(
      [[
        \begin{figure}[h]
          \begin{center}
            \includegraphics[width=0.5\textwidth]{figures/<>}
          \end{center}
          \caption{<>}
          \label{fig:<>}
        \end{figure}
        <>
      ]],
      { i(1), i(2), i(3), i(4) }
    )
  ),

  s(
    {
      trig = 'bib',
      condition = tex.in_text,
    },
    fmta(
      [[
        \bibliographystyle{<>}
        \bibliography{<>}
      ]],
      { i(1, 'ieeetr'), i(2, 'bibliography') }
    )
  ),
}
