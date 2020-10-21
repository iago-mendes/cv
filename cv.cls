\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{cv}[Curriculum vitae]

\LoadClass[a4paper, 12pt]{article}

\RequirePackage[top=1cm, bottom=2cm, left=2cm, right=2cm]{geometry}
\RequirePackage[utf8]{inputenc}
\RequirePackage{graphicx, caption}
\RequirePackage{float}
\RequirePackage{amsmath, amsfonts, amssymb, esint}
\RequirePackage{titlesec}
\RequirePackage{color}
\RequirePackage{fontspec}

% fontspec
\newfontfamily \ubuntu {Ubuntu-Regular} [Path=./fonts/]
\newfontfamily \ubuntubold {Ubuntu-Bold} [Path=./fonts/]
\newfontfamily \roboto {Roboto-Regular} [Path=./fonts/]
\newfontfamily \robotobold {Roboto-Bold} [Path=./fonts/]
\newfontfamily \caveat {CaveatBrush-Regular} [Path=./fonts/]