\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{cv}[Curriculum vitae]

\LoadClass[a4paper, 10pt]{article}

\RequirePackage[top=1cm, bottom=2cm, left=1.5cm, right=1.5cm]{geometry}
\RequirePackage[utf8]{inputenc}
\RequirePackage{graphicx, caption}
\RequirePackage{float}
\RequirePackage{titlesec}
\RequirePackage{color}
\RequirePackage{fontspec}
\RequirePackage{hyperref}
\RequirePackage{tikz}
\RequirePackage{multicol}
\RequirePackage{fontawesome}
\RequirePackage{xstring}
\RequirePackage{enumitem}

% titlesec
\titleformat{\section} {\fontsize{25pt}{36pt}\ubuntubold} {}{0pt}{}

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
\newfontfamily \caveat {CaveatBrush-Regular} [Path=./fonts/]
\setmainfont{Roboto}
[
    Path = ./fonts/,
    UprightFont = Roboto-Regular,
    BoldFont = Roboto-Bold
]

% color
\definecolor{white}{RGB}{255,255,255}
\definecolor{black}{RGB}{0,0,0}
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
    };
  \end{tikzpicture}
  \vspace{1cm}
  \vspace{-2\parskip}
}

\newcommand{\roundpicture}[1]
{
    \begin{center}
        \tikz \node
        [
            circle,
            minimum width = 5cm,
            path picture = {\node [xshift=-0.0cm,yshift=-0.0cm] at (path picture bounding box.center)
            {
                \includegraphics[width=5cm]{#1}
            };}
        ]{};
    \end{center}
}

\newcommand{\firstsection}[4]
{
    \fontsize{10pt}{12pt}
    \begin{flushleft} \begin{multicols}{4}
        #1 \vfill\null
        \columnbreak
        #2 \vfill\null
        \columnbreak
        #3 \vfill\null
        \columnbreak
        #4 \vfill\null
    \end{multicols} \end{flushleft}
}

\newcounter{colorCounter}
\newcommand{\style}[1]
{
    \textcolor
    {
        \ifcase \value{colorCounter}
            blue\or
            red\or
            orange\or
            green\or
            purple\or
            aquamarine\or
            pink\or
            darkblue\or
            darkred\or
            darkorange
        \else black
        \fi
    }
    {\StrLeft{#1}{3}}\StrGobbleLeft{#1}{3}
    \stepcounter{colorCounter}
}

\newenvironment{entrylist}
    {\begin{itemize}[leftmargin=3cm, labelsep=1cm]}
    {\end{itemize}}
\newcommand{\entry}[4]
{
    \item[#1] {\fontsize{12pt}{15pt} \ubuntubold #2} \hfill {\footnotesize \addfontfeature{Color=lightgray} #3} \\
    #4 \vspace{\parsep}
}