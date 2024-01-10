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

% \setlength{\columnsep}{0cm}
\renewcommand{\arraystretch}{1.25}
\newcommand{\header}[2] {
    \begin{multicols}{3}
        \vspace*{0cm}

        {\fontsize{35pt}{35pt} \color{highlight} \caveat #1}

        {\large \bf #2}

        \vspace*{0cm}

        \columnbreak

        \begin{center}
            \vspace*{0cm}
            \begin{tabular}{cl}
                {\color{highlight} \faPhone} & 440-581-2598 \\
                {\color{highlight} \faCode} & iagomendes.com \\
                {\color{highlight} \faEnvelope} & ibrazmen@oberlin.edu \\
            \end{tabular}
            \vspace*{0cm}
        \end{center}

        \columnbreak

        \begin{center}
            \vspace*{0cm}
            \begin{tabular}{cl}
                {\color{highlight} \faGithub} & github.com/iago-mendes \\
                {\color{highlight} \faLinkedin} & linkedin.com/in/mendesi \\
            \end{tabular}
            \vspace*{0cm}
        \end{center}
    \end{multicols}

}

% \titleformat{\section} {\fontsize{25pt}{36pt}\ubuntubold} {}{0pt}{}
\titleformat{\section}
    {\bfseries \Large \color{highlight}} % format
    {} % label
    {0pt} % sep
    {} % before-code
    [\vspace{-17.5pt} \color{highlight} \rule{\textwidth}{0.3pt}] % after-code
