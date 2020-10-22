\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{cv}[Curriculum vitae]

\LoadClass[a4paper, 10pt, dvipsnames]{article}

\RequirePackage[dvipsnames]{xcolor}
\RequirePackage[top=1cm, bottom=2cm, left=1.5cm, right=1.5cm]{geometry}
\RequirePackage[utf8]{inputenc}
\RequirePackage{graphicx, caption}
\RequirePackage{float}
\RequirePackage{titlesec}
% \RequirePackage{color}
\RequirePackage{fontspec}
\RequirePackage{hyperref}
\RequirePackage{tikz}
\RequirePackage{multicol}
\RequirePackage{fontawesome}
\RequirePackage{xstring}
\RequirePackage{enumitem}

\titleformat{\section} {\fontsize{25pt}{36pt}\ubuntubold} {}{0pt}{}

\hypersetup
{
    pdftitle=CV \textbar{} Iago Mendes,
    pdfauthor=Iago Braz Mendes,
    pdfsubject=CV,
    colorlinks=true,
    linkcolor=SkyBlue,
    filecolor=SkyBlue,      
    urlcolor=SkyBlue
}

\newfontfamily \ubuntu {Ubuntu-Regular} [Path=./fonts/]
\newfontfamily \ubuntubold {Ubuntu-Bold} [Path=./fonts/]
\newfontfamily \caveat {CaveatBrush-Regular} [Path=./fonts/]
\setmainfont{Roboto}
[
    Path = ./fonts/,
    UprightFont = Roboto-Regular,
    BoldFont = Roboto-Bold
]

\definecolor{headerBackground}{HTML}{191C24}
\definecolor{headerText}{HTML}{11BBBB}
\definecolor{backgroundColor}{HTML}{292F3D}
\definecolor{textColor}{HTML}{D8DBE2}
\pagecolor{backgroundColor}
\color{textColor}

\newcommand{\header}[1]
{
  \begin{tikzpicture}[remember picture,overlay]
    \node [rectangle, fill=headerBackground, anchor=north, minimum width=\paperwidth, minimum height=2cm]
        (box) at (current page.north){};
    \node [anchor=center] (name) at (box)
    {
        \fontsize{40pt}{50pt} \color{headerText} \caveat #1
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
            Goldenrod\or
            Cyan\or
            Red\or
            Purple\or
            Green\or
            Turquoise\or
            Magenta\or
            Aquamarine\or
            Violet\or
            RedOrange\or
            Emerald\or
            Peach\or
            LimeGreen\or
            Dandelion\or
            Maroon\else textColor\fi
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