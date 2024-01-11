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
    \begin{minipage}[c]{0.35\linewidth}
        \begin{center}
            {\fontsize{40pt}{0pt} \color{highlight} \caveat #1}
            
            \vspace*{0.2cm}
            
            {\large \bf #2}
        \end{center}
    \end{minipage}
    \hfill
    \begin{minipage}[c]{0.65\linewidth}
        \begin{center}
            \begin{tabular}{clcl}
                {\color{highlight} \faCode} & iagomendes.com & {\color{highlight} \faPhone} & 440-581-2598 \\
                {\color{highlight} \faGithub} & github.com/iago-mendes & {\color{highlight} \faEnvelope} & ibrazmen@oberlin.edu \\
                {\color{highlight} \faLinkedin} & linkedin.com/in/mendes-iago & \\
            \end{tabular}
        \end{center}
    \end{minipage}
    \vspace*{0.25cm}
}


\titleformat{\section}
    {\bfseries \Large \color{highlight}} % format
    {} % label
    {0pt} % sep
    {} % before-code
    [\vspace{-17.5pt} \color{highlight} \rule{\linewidth}{0.3pt}] % after-code
\titlespacing*{\section} {0cm}{-0.25cm}{-0.1cm}

\titleformat{\subsection}
    {\bfseries \large} % format
    {} % label
    {0pt} % sep
    {} % before-code
    [\vspace*{-0.25cm}] % after-code
\titlespacing*{\subsection} {0cm}{0cm}{0.25cm}


\newenvironment{entry}[1]{
    \subsection{#1}
    
    \hspace*{0.5cm}
    \begin{minipage}{0.97\linewidth}
}{
    \end{minipage}
}


\newcommand{\entryItem}[2]{
    \textbf{#1 \hfill #2}
}


\newenvironment{items}{
    \vspace*{-0.35cm}
	\begin{itemize}[leftmargin=0.6cm]
		\setlength\itemsep{-0.1cm}
}{
	\end{itemize}
    \vspace*{-0.25cm}
}
