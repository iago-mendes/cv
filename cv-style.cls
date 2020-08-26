% -- Encoding UTF-8

\ProvidesClass{cv-style}[CV class]
\NeedsTeXFormat{LaTeX2e}
\DeclareOption{print}{\def\@cv@print{}}
\DeclareOption*{
  \PassOptionsToClass{\CurrentOption}{article}
}
\ProcessOptions\relax
\LoadClass{article}

% Colors

\RequirePackage{xcolor}

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

\definecolor{date}{HTML}{A4A4A4}

\ifdefined\@cv@print
  \colorlet{blue}{gray}
  \colorlet{red}{gray}
  \colorlet{orange}{gray}
  \colorlet{green}{gray}
  \colorlet{purple}{gray}
  \colorlet{aquamarine}{gray}
  \colorlet{fillheader}{white}
  \colorlet{header}{gray}
\else
  \colorlet{fillheader}{gray}
  \colorlet{header}{white}
\fi
\colorlet{textcolor}{gray}
\colorlet{headercolor}{gray}


\RequirePackage[quiet]{fontspec}
\RequirePackage{unicode-math}

\newfontfamily\bodyfont{Roboto-Regular}[Path=./fonts/]
\newfontfamily\bodyfontit{Roboto-LightItalic}[Path=./fonts/]
\newfontfamily\thinfont{Roboto-Thin}[Path=./fonts/]
\newfontfamily\headingfont{RobotoCondensed-Bold}[Path=./fonts/]

\defaultfontfeatures{Mapping=tex-text}
\setmainfont[Mapping=tex-text, Color=textcolor, Path = fonts/]{Roboto-Light}

\newcommand{\italica}[1]{
    {\color{gray}\bodyfontit #1}
}


\RequirePackage{tikz}

\newcommand{\header}[2]{
  \begin{tikzpicture}[remember picture,overlay]
    \node [rectangle, fill=darkred, anchor=north, minimum width=\paperwidth, minimum height=2cm] (box) at (current page.north){};
    \node [anchor=center] (name) at (box) {
      \fontsize{40pt}{65pt}\color{darkorange}
      {\thinfont #1}{\bodyfont  #2}
    };
  \end{tikzpicture}
  \vspace{1cm}
  \vspace{-2\parskip}
}


\RequirePackage[absolute,overlay]{textpos}
\RequirePackage{polyglossia}

\newcommand{\sethyphenation}[3][]{
  \sbox0{\begin{otherlanguage}[#1]{#2}
    \hyphenation{#3}\end{otherlanguage}}}

\ifdefined\@cv@espanol
  \setdefaultlanguage{spanish}
  \def\lastupdatedtext{Última Actualización el}
\else
  \setdefaultlanguage[variant=british]{english}
  \def\lastupdatedtext{Last Updated on}
\fi

\setlength{\TPHorizModule}{0.01\paperwidth}
\setlength{\TPVertModule}{0.01\paperwidth}

\newcommand{\lastupdated}{ 
  \begin{textblock}{10}(11.3, 0.05)
    \raggedleft
    \fontsize{8pt}{10pt}\color{date}\thinfont 
    \lastupdatedtext{} \today
  \end{textblock}}


\RequirePackage{parskip}

\newcounter{colorCounter}
\def\@sectioncolor#1#2#3{
  {
    \color{
      \ifcase\value{colorCounter}
        blue\or
        red\or
        orange\or
        purple\or
        green\or
        pink\or
        aquamarine\else
        headercolor\fi
    } #1#2#3
  }
  \stepcounter{colorCounter}
}

\renewcommand{\section}[1]{
  {\par\vspace{\parskip}
  {
    \LARGE\headingfont\color{headercolor}
    \@sectioncolor #1
  }
  \par\vspace{\parskip}}
}

\renewcommand{\subsection}[2]{
  \par\vspace{.5\parskip}
  \Large\headingfont\color{headercolor} #2
  \par\vspace{.25\parskip}
}

\newcommand{\jobtitle}[1]{
    {\color{gray}\bodyfontit #1}
}

\pagestyle{empty}


\setlength{\tabcolsep}{0pt}
\newenvironment{entrylist}{
  \begin{tabular*}{\textwidth}{@{\extracolsep{\fill}}ll}
}{
  \end{tabular*}
}
\renewcommand{\bfseries}{\headingfont\color{headercolor}}
\newcommand{\entry}[4]{
  #1&\parbox[t]{11.8cm}{
    \textbf{#2}
    \hfill
    {\footnotesize\addfontfeature{Color=lightgray} #3}\\
    #4\vspace{\parsep}
  }\\}

\setlength{\TPHorizModule}{1cm}
\setlength{\TPVertModule}{1cm}
\newenvironment{aside}{
  \let\oldsection\section
  \renewcommand{\section}[1]{
    \par\vspace{\baselineskip}{\Large\headingfont\color{headercolor} ##1}
  }
  \begin{textblock}{4.6}(1, 1.87)
  \begin{flushright}
  \obeycr
}{
  \restorecr
  \end{flushright}
  \end{textblock}
  \let\section\oldsection
}

\RequirePackage[left=6.4cm,top=1cm,right=1cm,bottom=1cm,nohead,nofoot]{geometry}
\RequirePackage{hyperref}
\hypersetup{
    pdftitle=CV \textbar{} Iago Mendes,
    pdfauthor=Iago Braz Mendes,
    pdfsubject=CV
    }