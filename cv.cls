\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{cv}[Curriculum vitae]

\LoadClass[letterpaper, 12pt, dvipsnames]{article}

\RequirePackage[dvipsnames]{xcolor}
\RequirePackage[top=1cm, bottom=0.5cm, left=0.5cm, right=0.5cm]{geometry}
\RequirePackage[utf8]{inputenc}
\RequirePackage{graphicx, caption}
\RequirePackage{float}
\RequirePackage{titlesec}
\RequirePackage{fontspec}
\RequirePackage[hidelinks]{hyperref}
\RequirePackage{tikz}
\RequirePackage{multicol}
\RequirePackage{fontawesome}
\RequirePackage{xstring}
\RequirePackage{enumitem}

\hypersetup {
    pdftitle=Iago Mendes' Resume,
    pdfauthor=Iago Mendes,
    pdfsubject=Resume,
    colorlinks=false,
}

\newfontfamily \caveat {CaveatBrush-Regular} [Path=./fonts/]

\definecolor{background}{HTML}{f1f1f3}
\definecolor{text}{HTML}{191622}
\definecolor{highlight}{HTML}{438e9c}

\pagecolor{background}
\color{text}

% Remove page numbering
\pagenumbering{gobble}

\newcommand{\header}[3][ibrazmen@oberlin.edu] {
    \noindent
    \begin{minipage}[c]{0.35\linewidth}
        \begin{center}
            {\fontsize{40pt}{0pt} \color{highlight} \caveat #2}
            
            \vspace*{0.2cm}
            
            {\large \bf #3}
        \end{center}
    \end{minipage}
    \hfill
    \begin{minipage}[c]{0.65\linewidth}
        \begin{center}
            \begin{tabular}{clcl}
                {\color{highlight} \faCode} & \link{https://iagomendes.com/}{iagomendes.com} & {\color{highlight} \faPhone} & 440-581-2598 \\
                {\color{highlight} \faGithub} & \link{https://github.com/iago-mendes/}{github.com/iago-mendes} & {\color{highlight} \faEnvelope} & \link{mailto:#1}{#1} \\
                {\color{highlight} \faLinkedin} & \link{https://linkedin.com/in/mendes-iago/}{linkedin.com/in/mendes-iago} & \\
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
    {\bfseries} % format
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


\newcommand{\link}[2]{
    % \href{#1}{\underline{#2}}
    % \href{#1}{\textit{#2}}
    \href{#1}{#2}
}
