\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{cv}[Curriculum vitae]

\LoadClass[a4paper, 12pt]{article}

\RequirePackage[top=1cm, bottom=2cm, left=2cm, right=2cm]{geometry}
\RequirePackage[utf8]{inputenc}
\RequirePackage{graphicx, caption}
\RequirePackage{float}
\RequirePackage{titlesec}
\RequirePackage{color}
\RequirePackage{fontspec}
\RequirePackage{hyperref}
\RequirePackage{tikz}

% hyperref
\hypersetup
{
    pdftitle=CV \textbar{} Iago Mendes,
    pdfauthor=Iago Braz Mendes,
    pdfsubject=CV
}

% fontspec
\newfontfamily \ubuntu {Ubuntu-Regular} [Path=./fonts/]
\newfontfamily \ubuntubold {Ubuntu-Bold} [Path=./fonts/]
\newfontfamily \roboto {Roboto-Regular} [Path=./fonts/]
\newfontfamily \robotobold {Roboto-Bold} [Path=./fonts/]
\newfontfamily \caveat {CaveatBrush-Regular} [Path=./fonts/]

% color
\definecolor{white}{RGB}{255,255,255}
\definecolor{darkgray}{HTML}{2d2d43}
\definecolor{gray}{HTML}{222021}
\definecolor{lightgray}{HTML}{999999}
\definecolor{blue}{HTML}{66D9EE}
\definecolor{darkblue}{HTML}{161C50}
\definecolor{red}{HTML}{FA2772}
\definecolor{darkred}{HTML}{420C14}
\definecolor{orange}{HTML}{FE9720}
\definecolor{darkorange}{HTML}{FF8A00}
\definecolor{green}{HTML}{A7E22E}
\definecolor{purple}{HTML}{9358FE}
\definecolor{aquamarine}{HTML}{36AF90}
\definecolor{pink}{HTML}{800080}

\newcommand{\header}[1]
{
  \begin{tikzpicture}[remember picture,overlay]
    \node [rectangle, fill=darkred, anchor=north, minimum width=\paperwidth, minimum height=2cm]
        (box) at (current page.north){};
    \node [anchor=center] (name) at (box)
    {
        \fontsize{40pt}{50pt} \color{darkorange} \caveat #1
    %   \fontsize{40pt}{65pt}\color{darkorange}
    %   {\thinfont #1}{\bodyfont  #2}
    };
  \end{tikzpicture}
  \vspace{1cm}
  \vspace{-2\parskip}
}