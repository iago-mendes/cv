\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{cv}[Curriculum vitae]

\LoadClass[letterpaper, 12pt, dvipsnames]{article}

\RequirePackage[dvipsnames]{xcolor}
\RequirePackage[top=0.5in, bottom=0.5in, left=0.5in, right=0.5in]{geometry}
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
\renewcommand{\UrlFont}{\ttfamily}

\newfontfamily \caveat {CaveatBrush-Regular} [Path=./fonts/]

\definecolor{background}{HTML}{f1f1f3}
\definecolor{text}{HTML}{191622}
\definecolor{highlight}{HTML}{36727d}

\pagecolor{background}
\color{text}

% Remove page numbering
\pagenumbering{gobble}

% Remove paragraph indentation
\setlength{\parindent}{0pt}

\newcommand{\header}[3][ibrazmen@oberlin.edu] {
    \noindent
    \begin{minipage}[c]{0.35\linewidth}
        \begin{center}
            {\fontsize{35pt}{0pt} \color{highlight} \caveat #2}
            
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
    {\bfseries \large \color{highlight}} % format
    {} % label
    {0pt} % sep
    {} % before-code
    [\vspace{-15pt} \color{highlight} \rule{\linewidth}{0.3pt}] % after-code
\titlespacing*{\section}
    {0cm} % left
    {0cm} % before
    {0cm} % afteer

% \titleformat{\subsection}
%     {} % format
%     {} % label
%     {0pt} % sep
%     {} % before-code
%     [\vspace*{-0.25cm}] % after-code
% \titlespacing*{\subsection} {0cm}{0cm}{0.25cm}


\newenvironment{entry}[2]{
    #1 \hfill #2 \\
    \hspace*{0.03\linewidth}
    \begin{minipage}{0.96\linewidth}
        \vspace*{0.05cm}
}{
    \end{minipage}

}


\newcommand{\entryItem}[2]{
    #1 \hfill #2 \\
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
