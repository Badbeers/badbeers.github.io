\LoadClass[11pt,letterpaper]{article}
\RequirePackage[usenames,dvipsnames]{xcolor}
\usepackage[parfill]{parskip}
\usepackage{array}
\usepackage{ifthen}
\pagestyle{empty}
\usepackage{scalerel}
\usepackage{bbding,pifont}

\definecolor{navyblue}{RGB}{0,54,123}

\newcommand\sbullet[1][.5]{%
  \mathbin{\ThisStyle{\vcenter{\hbox{\scalebox{#1}{$\SavedStyle\bullet$}}}}}}

\def\name#1{\def\@name{#1}}
\def\@name{}

\newcommand{\printname}{%
  \begingroup
    \hfil{\namesize\bfseries\textit{\@name}}\hfil
    \vspace{0.45cm}
  \endgroup}

\newcommand{\tag}[1]{\textcolor{navyblue}{\textit{#1}\,}}
\newcommand{\info}[1]{\textcolor{black}{#1}}
\newcommand{\personalInfo}[1]{\centerline{#1}\par\personalInfoSkip}
\newcommand{\infoSeparator}{{\textcolor{navyblue}{\ding{92}\hspace{0.1cm}}}}

\newcommand{\printPersonalInfo}[1]{%
  \begin{center}#1\end{center}%
  \vspace{-0.9cm}}

\let\ori@document=\document
\renewcommand{\document}{%
  \ori@document
  \begin{center}\printname\end{center}}

\newenvironment{rSection}[1]{%
  \sectionskip
  {\color{navyblue}{\bf\textit{#1}}}%
  \sectionlineskip
  {\color{navyblue}\hrule}%
  \begin{list}{}{\setlength{\leftmargin}{1.5em}}
  \item[]}{%
  \end{list}}

\newenvironment{rSubsectionNoBullet}[4]{%
  {\bf #1} \hfill {\textit{#2}} \newline
  \ifthenelse{\equal{#3}{}}{}{%
    {\textit{#3}}%
    \ifthenelse{\equal{#4}{}}{}{\hfill{\textit{#4}}}}
  \begin{list}{}{\leftmargin=0em\itemindent=0em\labelwidth=0em\labelsep=0em}
  \itemsep -0.5em \vspace{-0.5em}}{%
  \end{list}}

\newenvironment{rSubsection}[4]{%
  {\bf #1} \hfill {\textit{#2}} \newline
  \ifthenelse{\equal{#3}{}}{}{%
    {\textit{#3}} \hfill {\textit{#4}}}
  \smallskip
  \begin{list}{$\sbullet[.65]$}{\leftmargin=2em}
  \itemsep -0.4em \vspace{-0.4em}}{%
  \end{list}
  \vspace{0.4em}}

\def\namesize{\huge}
\def\personalInfoSkip{\smallskip}
\def\sectionlineskip{\medskip}
\def\sectionskip{\medskip}