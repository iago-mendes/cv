\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{cv}[Curriculum vitae]

\LoadClass[a4paper, 12pt, dvipsnames]{article}

\RequirePackage[dvipsnames]{xcolor}
\RequirePackage[top=1cm, bottom=1cm, left=1cm, right=1cm]{geometry}
\RequirePackage[utf8]{inputenc}
\RequirePackage{graphicx, caption}
\RequirePackage{float}
\RequirePackage{titlesec}
\RequirePackage{fontspec}
\RequirePackage{hyperref}
\RequirePackage{tikz}
\RequirePackage{multicol}
\RequirePackage{fontawesome}
\RequirePackage{xstring}
\RequirePackage{enumitem}

\hypersetup {
    pdftitle=CV \textbar{} Iago Mendes,
    pdfauthor=Iago Mendes,
    pdfsubject=CV,
    colorlinks=true,
    linkcolor=SkyBlue,
    filecolor=SkyBlue,      
    urlcolor=SkyBlue
}

\newfontfamily \caveat {CaveatBrush-Regular} [Path=./fonts/]

\definecolor{background}{HTML}{E1E1E6}
\definecolor{text}{HTML}{191622}
\definecolor{highlight}{HTML}{438e9c}

\pagecolor{background}
\color{text}

% Remove page numbering
\pagenumbering{gobble}

\newcommand{\header}[2] {
    \noindent
    \begin{minipage}[c]{0.3\linewidth}
        \begin{center}
            {\fontsize{35pt}{0pt} \color{highlight} \caveat #1}
            
            \vspace*{0.2cm}
            
            {\large \bf #2}
        \end{center}
    \end{minipage}
    \hfill
    \begin{minipage}[c]{0.65\linewidth}
        \begin{center}
            \begin{tabular}{clccl}
                {\color{highlight} \faCode} & iagomendes.com && {\color{highlight} \faPhone} & 440-581-2598 \\
                {\color{highlight} \faGithub} & github.com/iago-mendes && {\color{highlight} \faEnvelope} & ibrazmen@oberlin.edu \\
                {\color{highlight} \faLinkedin} & linkedin.com/in/mendes-iago && \\
            \end{tabular}
        \end{center}
    \end{minipage}
}


\titleformat{\section}
    {\bfseries \Large \color{highlight}} % format
    {} % label
    {0pt} % sep
    {} % before-code
    [\vspace{-17.5pt} \color{highlight} \rule{\textwidth}{0.3pt} \vspace{-1.2cm}] % after-code


\newcommand{\entryTitle}[1]{
    \subsection{#1}
}
\titleformat{\subsection}
    {\bfseries \large} % format
    {} % label
    {0pt} % sep
    {} % before-code
    [\vspace*{-0.25cm}] % after-code


\newcommand{\entrySubtitle}[3]{
    \hspace*{0.5cm} \textbf{#1 \hfill (#2 -- #3)}
}


% Style item lists
\setitemize{leftmargin=1.25cm}
\setlength\itemsep{1cm}
